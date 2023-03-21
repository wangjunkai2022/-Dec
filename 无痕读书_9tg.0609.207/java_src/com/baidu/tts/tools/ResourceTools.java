package com.baidu.tts.tools;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.baidu.tts.f.d;
import com.baidu.tts.f.n;
import com.baidu.tts.m.i;
import java.io.UnsupportedEncodingException;
/* loaded from: classes8.dex */
public class ResourceTools {
    public static final int TEXT_LENGTH_LIMIT = 1024;

    public static i format(String str, String str2, i iVar) {
        try {
            iVar.b(new String(iVar.c().getBytes(str), str2));
            iVar.c(str2);
            return iVar;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getAppFilesDirPath(Context context) {
        return context.getFilesDir().getAbsolutePath() + "/";
    }

    public static String getAppFilesPath(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            return packageInfo.applicationInfo.dataDir + "/files/";
        } catch (Exception unused) {
            return context.getFilesDir().getAbsolutePath() + "/";
        }
    }

    public static String getByteMapAbsName(Context context, String str) {
        return getModelFileAbsName(context, str + ".bm");
    }

    public static String getDefaultResourcePath(Context context, String str) {
        return getSdcardFilesDirPath(context) + str;
    }

    public static String getModelFileAbsName(Context context, String str) {
        return FileTools.jointPathAndName(getAppFilesPath(context) + "modelDir/", str);
    }

    @SuppressLint({"SdCardPath"})
    public static String getSdcardFilesDirPath(Context context) {
        return "/sdcard/tts/";
    }

    public static n isTextValid(String str) {
        if (TextUtils.isEmpty(str)) {
            return n.TEXT_IS_EMPTY;
        }
        try {
            if (str.getBytes(d.GBK.a()).length > 1024) {
                return n.TEXT_IS_TOO_LONG;
            }
            return null;
        } catch (UnsupportedEncodingException unused) {
            return n.TEXT_ENCODE_IS_WRONG;
        }
    }

    public static byte[] stringToByteArrayAddNull(String str) {
        if (str == null) {
            str = "";
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        System.arraycopy(new byte[]{0}, 0, bArr, bytes.length, 1);
        return bArr;
    }
}
