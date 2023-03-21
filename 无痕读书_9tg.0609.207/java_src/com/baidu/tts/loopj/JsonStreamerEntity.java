package com.baidu.tts.loopj;

import android.text.TextUtils;
import com.apk.Cgoto;
import com.baidu.tts.loopj.RequestParams;
import com.tencent.bugly.Bugly;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes8.dex */
public class JsonStreamerEntity implements HttpEntity {
    public static final int BUFFER_SIZE = 4096;
    public static final String LOG_TAG = "JsonStreamerEntity";
    public final Header contentEncoding;
    public final byte[] elapsedField;
    public final ResponseHandlerInterface progressHandler;
    public static final UnsupportedOperationException ERR_UNSUPPORTED = new UnsupportedOperationException("Unsupported operation in this implementation.");
    public static final byte[] JSON_TRUE = "true".getBytes();
    public static final byte[] JSON_FALSE = Bugly.SDK_IS_DEV.getBytes();
    public static final byte[] JSON_NULL = "null".getBytes();
    public static final byte[] STREAM_NAME = escape("name");
    public static final byte[] STREAM_TYPE = escape("type");
    public static final byte[] STREAM_CONTENTS = escape("contents");
    public static final Header HEADER_JSON_CONTENT = new BasicHeader(AsyncHttpClient.HEADER_CONTENT_TYPE, RequestParams.APPLICATION_JSON);
    public static final Header HEADER_GZIP_ENCODING = new BasicHeader(AsyncHttpClient.HEADER_CONTENT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
    public final byte[] buffer = new byte[4096];
    public final Map<String, Object> jsonParams = new HashMap();

    public JsonStreamerEntity(ResponseHandlerInterface responseHandlerInterface, boolean z, String str) {
        this.progressHandler = responseHandlerInterface;
        this.contentEncoding = z ? HEADER_GZIP_ENCODING : null;
        this.elapsedField = TextUtils.isEmpty(str) ? null : escape(str);
    }

    private void endMetaData(OutputStream outputStream) throws IOException {
        outputStream.write(34);
    }

    public static byte[] escape(String str) {
        if (str == null) {
            return JSON_NULL;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append('\"');
        int length = str.length();
        int i = -1;
        while (true) {
            i++;
            if (i < length) {
                char charAt = str.charAt(i);
                if (charAt == '\f') {
                    sb.append("\\f");
                } else if (charAt == '\r') {
                    sb.append("\\r");
                } else if (charAt == '\"') {
                    sb.append("\\\"");
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case '\b':
                            sb.append("\\b");
                            continue;
                        case '\t':
                            sb.append("\\t");
                            continue;
                        case '\n':
                            sb.append("\\n");
                            continue;
                        default:
                            if (charAt > 31 && ((charAt < 127 || charAt > 159) && (charAt < 8192 || charAt > 8447))) {
                                sb.append(charAt);
                                break;
                            } else {
                                String hexString = Integer.toHexString(charAt);
                                sb.append("\\u");
                                int length2 = 4 - hexString.length();
                                for (int i2 = 0; i2 < length2; i2++) {
                                    sb.append('0');
                                }
                                sb.append(hexString.toUpperCase(Locale.US));
                                continue;
                            }
                            break;
                    }
                } else {
                    sb.append("\\\\");
                }
            } else {
                sb.append('\"');
                return sb.toString().getBytes();
            }
        }
    }

    private void writeMetaData(OutputStream outputStream, String str, String str2) throws IOException {
        outputStream.write(STREAM_NAME);
        outputStream.write(58);
        outputStream.write(escape(str));
        outputStream.write(44);
        outputStream.write(STREAM_TYPE);
        outputStream.write(58);
        outputStream.write(escape(str2));
        outputStream.write(44);
        outputStream.write(STREAM_CONTENTS);
        outputStream.write(58);
        outputStream.write(34);
    }

    private void writeToFromFile(OutputStream outputStream, RequestParams.FileWrapper fileWrapper) throws IOException {
        writeMetaData(outputStream, fileWrapper.file.getName(), fileWrapper.contentType);
        long length = fileWrapper.file.length();
        FileInputStream fileInputStream = new FileInputStream(fileWrapper.file);
        Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 18);
        long j = 0;
        while (true) {
            int read = fileInputStream.read(this.buffer);
            if (read != -1) {
                base64OutputStream.write(this.buffer, 0, read);
                j += read;
                this.progressHandler.sendProgressMessage(j, length);
            } else {
                AsyncHttpClient.silentCloseOutputStream(base64OutputStream);
                endMetaData(outputStream);
                AsyncHttpClient.silentCloseInputStream(fileInputStream);
                return;
            }
        }
    }

    private void writeToFromStream(OutputStream outputStream, RequestParams.StreamWrapper streamWrapper) throws IOException {
        writeMetaData(outputStream, streamWrapper.name, streamWrapper.contentType);
        Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 18);
        while (true) {
            int read = streamWrapper.inputStream.read(this.buffer);
            if (read == -1) {
                break;
            }
            base64OutputStream.write(this.buffer, 0, read);
        }
        AsyncHttpClient.silentCloseOutputStream(base64OutputStream);
        endMetaData(outputStream);
        if (streamWrapper.autoClose) {
            AsyncHttpClient.silentCloseInputStream(streamWrapper.inputStream);
        }
    }

    public void addPart(String str, Object obj) {
        this.jsonParams.put(str, obj);
    }

    public void consumeContent() throws IOException, UnsupportedOperationException {
    }

    public InputStream getContent() throws IOException, UnsupportedOperationException {
        throw ERR_UNSUPPORTED;
    }

    public Header getContentEncoding() {
        return this.contentEncoding;
    }

    public long getContentLength() {
        return -1L;
    }

    public Header getContentType() {
        return HEADER_JSON_CONTENT;
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return false;
    }

    public boolean isStreaming() {
        return false;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (outputStream != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.contentEncoding != null) {
                outputStream = new GZIPOutputStream(outputStream, 4096);
            }
            outputStream.write(123);
            Set<String> keySet = this.jsonParams.keySet();
            int size = keySet.size();
            if (size > 0) {
                int i = 0;
                for (String str : keySet) {
                    i++;
                    try {
                        Object obj = this.jsonParams.get(str);
                        outputStream.write(escape(str));
                        outputStream.write(58);
                        if (obj == null) {
                            outputStream.write(JSON_NULL);
                        } else {
                            boolean z = obj instanceof RequestParams.FileWrapper;
                            if (!z && !(obj instanceof RequestParams.StreamWrapper)) {
                                if (obj instanceof JsonValueInterface) {
                                    outputStream.write(((JsonValueInterface) obj).getEscapedJsonValue());
                                } else if (obj instanceof JSONObject) {
                                    outputStream.write(obj.toString().getBytes());
                                } else if (obj instanceof JSONArray) {
                                    outputStream.write(obj.toString().getBytes());
                                } else if (obj instanceof Boolean) {
                                    outputStream.write(((Boolean) obj).booleanValue() ? JSON_TRUE : JSON_FALSE);
                                } else if (obj instanceof Long) {
                                    outputStream.write((((Number) obj).longValue() + "").getBytes());
                                } else if (obj instanceof Double) {
                                    outputStream.write((((Number) obj).doubleValue() + "").getBytes());
                                } else if (obj instanceof Float) {
                                    outputStream.write((((Number) obj).floatValue() + "").getBytes());
                                } else if (obj instanceof Integer) {
                                    outputStream.write((((Number) obj).intValue() + "").getBytes());
                                } else {
                                    outputStream.write(escape(obj.toString()));
                                }
                            }
                            outputStream.write(123);
                            if (z) {
                                writeToFromFile(outputStream, (RequestParams.FileWrapper) obj);
                            } else {
                                writeToFromStream(outputStream, (RequestParams.StreamWrapper) obj);
                            }
                            outputStream.write(125);
                        }
                        if (this.elapsedField != null || i < size) {
                            outputStream.write(44);
                        }
                    } catch (Throwable th) {
                        if (this.elapsedField != null || i < size) {
                            outputStream.write(44);
                        }
                        throw th;
                    }
                }
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                byte[] bArr = this.elapsedField;
                if (bArr != null) {
                    outputStream.write(bArr);
                    outputStream.write(58);
                    outputStream.write((currentTimeMillis2 + "").getBytes());
                }
                LogInterface logInterface = AsyncHttpClient.log;
                StringBuilder m1016super = Cgoto.m1016super("Uploaded JSON in ");
                m1016super.append(Math.floor(currentTimeMillis2 / 1000));
                m1016super.append(" seconds");
                logInterface.i(LOG_TAG, m1016super.toString());
            }
            outputStream.write(125);
            outputStream.flush();
            AsyncHttpClient.silentCloseOutputStream(outputStream);
            return;
        }
        throw new IllegalStateException("Output stream cannot be null.");
    }
}
