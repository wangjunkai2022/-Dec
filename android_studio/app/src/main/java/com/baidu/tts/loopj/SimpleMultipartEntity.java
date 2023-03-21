package com.baidu.tts.loopj;

import android.text.TextUtils;
import com.apk.Cgoto;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

/* loaded from: classes8.dex */
public class SimpleMultipartEntity implements HttpEntity {
    public static final String LOG_TAG = "SimpleMultipartEntity";
    public final String boundary;
    public final byte[] boundaryEnd;
    public final byte[] boundaryLine;
    public long bytesWritten;
    public boolean isRepeatable;
    public final ResponseHandlerInterface progressHandler;
    public long totalSize;
    public static final String STR_CR_LF = "\r\n";
    public static final byte[] CR_LF = STR_CR_LF.getBytes();
    public static final byte[] TRANSFER_ENCODING_BINARY = "Content-Transfer-Encoding: binary\r\n".getBytes();
    public static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
    public final List<FilePart> fileParts = new ArrayList();
    public final ByteArrayOutputStream out = new ByteArrayOutputStream();

    public SimpleMultipartEntity(ResponseHandlerInterface responseHandlerInterface) {
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 30; i++) {
            char[] cArr = MULTIPART_CHARS;
            sb.append(cArr[random.nextInt(cArr.length)]);
        }
        this.boundary = sb.toString();
        StringBuilder m1016super = Cgoto.m1016super("--");
        m1016super.append(this.boundary);
        m1016super.append(STR_CR_LF);
        this.boundaryLine = m1016super.toString().getBytes();
        StringBuilder m1016super2 = Cgoto.m1016super("--");
        m1016super2.append(this.boundary);
        m1016super2.append("--");
        m1016super2.append(STR_CR_LF);
        this.boundaryEnd = m1016super2.toString().getBytes();
        this.progressHandler = responseHandlerInterface;
    }

    private byte[] createContentDisposition(String str) {
        return ("Content-Disposition: form-data; name=\"" + str + "\"" + STR_CR_LF).getBytes();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] createContentType(String str) {
        StringBuilder m1016super = Cgoto.m1016super("Content-Type: ");
        m1016super.append(normalizeContentType(str));
        m1016super.append(STR_CR_LF);
        return m1016super.toString().getBytes();
    }

    private String normalizeContentType(String str) {
        return str == null ? RequestParams.APPLICATION_OCTET_STREAM : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress(long j) {
        long j2 = this.bytesWritten + j;
        this.bytesWritten = j2;
        this.progressHandler.sendProgressMessage(j2, this.totalSize);
    }

    public void addPart(String str, String str2, String str3) {
        try {
            this.out.write(this.boundaryLine);
            this.out.write(createContentDisposition(str));
            this.out.write(createContentType(str3));
            this.out.write(CR_LF);
            this.out.write(str2.getBytes());
            this.out.write(CR_LF);
        } catch (IOException e) {
            AsyncHttpClient.log.e(LOG_TAG, "addPart ByteArrayOutputStream exception", e);
        }
    }

    public void addPartWithCharset(String str, String str2, String str3) {
        if (str3 == null) {
            str3 = "UTF-8";
        }
        addPart(str, str2, "text/plain; charset=" + str3);
    }

    public void consumeContent() throws IOException, UnsupportedOperationException {
        if (isStreaming()) {
            throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
        }
    }

    public InputStream getContent() throws IOException, UnsupportedOperationException {
        throw new UnsupportedOperationException("getContent() is not supported. Use writeTo() instead.");
    }

    public Header getContentEncoding() {
        return null;
    }

    public long getContentLength() {
        long size = this.out.size();
        for (FilePart filePart : this.fileParts) {
            long totalLength = filePart.getTotalLength();
            if (totalLength < 0) {
                return -1L;
            }
            size += totalLength;
        }
        return size + this.boundaryEnd.length;
    }

    public Header getContentType() {
        StringBuilder m1016super = Cgoto.m1016super("multipart/form-data; boundary=");
        m1016super.append(this.boundary);
        return new BasicHeader(AsyncHttpClient.HEADER_CONTENT_TYPE, m1016super.toString());
    }

    public boolean isChunked() {
        return false;
    }

    public boolean isRepeatable() {
        return this.isRepeatable;
    }

    public boolean isStreaming() {
        return false;
    }

    public void setIsRepeatable(boolean z) {
        this.isRepeatable = z;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        this.bytesWritten = 0L;
        this.totalSize = (int) getContentLength();
        this.out.writeTo(outputStream);
        updateProgress(this.out.size());
        for (FilePart filePart : this.fileParts) {
            filePart.writeTo(outputStream);
        }
        outputStream.write(this.boundaryEnd);
        updateProgress(this.boundaryEnd.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] createContentDisposition(String str, String str2) {
        StringBuilder m1004import = Cgoto.m1004import("Content-Disposition: form-data; name=\"", str, "\"", "; filename=\"", str2);
        m1004import.append("\"");
        m1004import.append(STR_CR_LF);
        return m1004import.toString().getBytes();
    }

    /* loaded from: classes8.dex */
    public class FilePart {
        public File file;
        public byte[] header;

        public FilePart(String str, File file, String str2, String str3) {
            this.header = createHeader(str, TextUtils.isEmpty(str3) ? file.getName() : str3, str2);
            this.file = file;
        }

        private byte[] createHeader(String str, String str2, String str3) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(SimpleMultipartEntity.this.boundaryLine);
                byteArrayOutputStream.write(SimpleMultipartEntity.this.createContentDisposition(str, str2));
                byteArrayOutputStream.write(SimpleMultipartEntity.this.createContentType(str3));
                byteArrayOutputStream.write(SimpleMultipartEntity.TRANSFER_ENCODING_BINARY);
                byteArrayOutputStream.write(SimpleMultipartEntity.CR_LF);
            } catch (IOException e) {
                AsyncHttpClient.log.e(SimpleMultipartEntity.LOG_TAG, "createHeader ByteArrayOutputStream exception", e);
            }
            return byteArrayOutputStream.toByteArray();
        }

        public long getTotalLength() {
            return this.header.length + this.file.length() + SimpleMultipartEntity.CR_LF.length;
        }

        public void writeTo(OutputStream outputStream) throws IOException {
            outputStream.write(this.header);
            SimpleMultipartEntity.this.updateProgress(this.header.length);
            FileInputStream fileInputStream = new FileInputStream(this.file);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    outputStream.write(SimpleMultipartEntity.CR_LF);
                    SimpleMultipartEntity.this.updateProgress(SimpleMultipartEntity.CR_LF.length);
                    outputStream.flush();
                    AsyncHttpClient.silentCloseInputStream(fileInputStream);
                    return;
                }
                outputStream.write(bArr, 0, read);
                SimpleMultipartEntity.this.updateProgress(read);
            }
        }

        public FilePart(String str, File file, String str2) {
            this.header = createHeader(str, file.getName(), str2);
            this.file = file;
        }
    }

    public void addPart(String str, String str2) {
        addPartWithCharset(str, str2, null);
    }

    public void addPart(String str, File file) {
        addPart(str, file, (String) null);
    }

    public void addPart(String str, File file, String str2) {
        this.fileParts.add(new FilePart(str, file, normalizeContentType(str2)));
    }

    public void addPart(String str, File file, String str2, String str3) {
        this.fileParts.add(new FilePart(str, file, normalizeContentType(str2), str3));
    }

    public void addPart(String str, String str2, InputStream inputStream, String str3) throws IOException {
        this.out.write(this.boundaryLine);
        this.out.write(createContentDisposition(str, str2));
        this.out.write(createContentType(str3));
        this.out.write(TRANSFER_ENCODING_BINARY);
        this.out.write(CR_LF);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                this.out.write(bArr, 0, read);
            } else {
                this.out.write(CR_LF);
                this.out.flush();
                return;
            }
        }
    }
}
