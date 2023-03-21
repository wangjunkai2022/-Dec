package com.baidu.tts.auth;

import android.content.Context;
import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import com.baidu.tts.f.g;
import com.baidu.tts.loopj.JsonHttpResponseHandler;
import com.baidu.tts.tools.SharedPreferencesUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.http.Header;
import org.json.JSONObject;
/* compiled from: GetLicenseHandler.java */
/* loaded from: classes8.dex */
public class b extends JsonHttpResponseHandler {
    public String b;

    /* renamed from: a  reason: collision with root package name */
    public int f11128a = -2;
    public String d = "_new";
    public Context c = com.baidu.tts.h.b.b.a().h();

    public b(String str) {
        this.b = str;
    }

    public int a() {
        return this.f11128a;
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler, com.baidu.tts.loopj.TextHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, String str, Throwable th) {
        super.onFailure(i, headerArr, str, th);
        LoggerProxy.d("GetLicenseHandler", " statusCode: " + i + " responseString: " + str);
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onSuccess(int i, Header[] headerArr, JSONObject jSONObject) {
        super.onSuccess(i, headerArr, jSONObject);
        int optInt = jSONObject.optInt(g.ERROR_NUMBER.a());
        this.f11128a = optInt;
        LoggerProxy.d("GetLicenseHandler", " onSuccess statusCode: " + i + " errNo: " + optInt);
        String optString = jSONObject.optString(g.ERROR_MESSAGE.a());
        long optLong = jSONObject.optLong("expires");
        long optLong2 = jSONObject.optLong("time");
        SharedPreferencesUtils.putLong(this.c, "getLicense_expires", optLong);
        SharedPreferencesUtils.putInt(this.c, "getLicense_err_no", optInt);
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - optLong2;
        if (j < 60000 && j > 0) {
            SharedPreferencesUtils.putLong(this.c, "getLicense_time", optLong2);
        } else {
            SharedPreferencesUtils.putLong(this.c, "getLicense_time", currentTimeMillis);
        }
        String replaceAll = jSONObject.optString("license").replaceAll("license_begin|license_end", "");
        if (optInt == 0 && !replaceAll.isEmpty()) {
            File file = new File(this.b);
            if (file.exists()) {
                File file2 = new File(this.b + this.d);
                boolean a2 = a(this.b + this.d, replaceAll);
                LoggerProxy.d("GetLicenseHandler", "isSave=" + a2);
                boolean delete = file.delete();
                LoggerProxy.d("GetLicenseHandler", "isDelete=" + delete);
                boolean renameTo = file2.renameTo(file);
                LoggerProxy.d("GetLicenseHandler", "isRename=" + renameTo);
            } else {
                boolean a3 = a(this.b, replaceAll);
                LoggerProxy.d("GetLicenseHandler", "isSave=" + a3);
            }
        }
        LoggerProxy.d("GetLicenseHandler", "getLicense statusCode: " + i + " err_msg: " + optString + " err_no: " + optInt);
    }

    public boolean a(String str, String str2) {
        FileOutputStream fileOutputStream;
        if (str2 != null) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    File file = new File(str);
                    if (!file.exists()) {
                        new File(file.getParent()).mkdirs();
                        file.createNewFile();
                    }
                    fileOutputStream = new FileOutputStream(file);
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                fileOutputStream.write(str2.getBytes("utf-8"));
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
                return true;
            } catch (Exception e3) {
                fileOutputStream2 = fileOutputStream;
                e = e3;
                LoggerProxy.d("GetLicenseHandler", "download license success, write file failed");
                this.f11128a = -1010;
                e.printStackTrace();
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                return false;
            } catch (Throwable th2) {
                fileOutputStream2 = fileOutputStream;
                th = th2;
                if (fileOutputStream2 != null) {
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        }
        return false;
    }

    @Override // com.baidu.tts.loopj.JsonHttpResponseHandler
    public void onFailure(int i, Header[] headerArr, Throwable th, JSONObject jSONObject) {
        super.onFailure(i, headerArr, th, jSONObject);
        LoggerProxy.d("GetLicenseHandler", "getLicense statusCode: " + i);
    }
}
