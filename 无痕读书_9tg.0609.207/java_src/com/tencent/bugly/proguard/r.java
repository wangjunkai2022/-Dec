package com.tencent.bugly.proguard;

import android.util.Pair;
import com.baidu.tts.loopj.AsyncHttpClient;
import com.baidu.tts.loopj.SimpleMultipartEntity;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.parser.LitePalParser;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class r {
    public final Pair<Integer, String> a(List<String> list) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("Atta-Type", "batch-report");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("attaid", "0d000062340").put("token", "2273782735").put("type", "batch").put(LitePalParser.NODE_VERSION, "v1.0.0");
            JSONArray jSONArray = new JSONArray();
            for (String str : list) {
                jSONArray.put(str);
            }
            jSONObject.put("datas", jSONArray);
            return a("https://h.trace.qq.com/kv", jSONObject.toString(), hashMap);
        } catch (Throwable th) {
            y.b(th);
            return new Pair<>(-1, th.getMessage());
        }
    }

    private Pair<Integer, String> a(String str, String str2, Map<String, String> map) {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        String message;
        InputStream inputStream2;
        DataOutputStream dataOutputStream = null;
        int i = -1;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setRequestProperty(AsyncHttpClient.HEADER_CONTENT_TYPE, "application/x-www-form-urlencoded");
                a(httpURLConnection2, map);
                httpURLConnection2.setConnectTimeout(5000);
                httpURLConnection2.setReadTimeout(5000);
                httpURLConnection2.connect();
                byte[] bytes = str2.getBytes("UTF-8");
                DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection2.getOutputStream());
                try {
                    dataOutputStream2.write(bytes);
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                    i = httpURLConnection2.getResponseCode();
                    if (i >= 400) {
                        inputStream2 = httpURLConnection2.getErrorStream();
                    } else {
                        inputStream2 = httpURLConnection2.getInputStream();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    inputStream = null;
                    dataOutputStream = dataOutputStream2;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = httpURLConnection2;
                inputStream = null;
            }
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append(SimpleMultipartEntity.STR_CR_LF);
                }
                bufferedReader.close();
                message = sb.toString();
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Exception e) {
                        y.b(e);
                    }
                }
                httpURLConnection2.disconnect();
            } catch (Throwable th3) {
                httpURLConnection = httpURLConnection2;
                inputStream = inputStream2;
                th = th3;
                try {
                    y.b(th);
                    message = th.getMessage();
                    return new Pair<>(Integer.valueOf(i), message);
                } finally {
                    if (dataOutputStream != null) {
                        try {
                            dataOutputStream.close();
                        } catch (Exception e2) {
                            y.b(e2);
                        }
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception e3) {
                            y.b(e3);
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
            httpURLConnection = null;
        }
        return new Pair<>(Integer.valueOf(i), message);
    }

    public static void a(HttpURLConnection httpURLConnection, Map<String, String> map) {
        if (httpURLConnection == null || map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }
}
