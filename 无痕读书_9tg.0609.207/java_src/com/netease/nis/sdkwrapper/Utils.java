package com.netease.nis.sdkwrapper;

import android.content.Context;
import android.os.Looper;
import android.widget.Toast;
import androidx.exifinterface.media.ExifInterface;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
/* loaded from: classes8.dex */
public class Utils {
    static {
        System.loadLibrary("secsdk");
    }

    /* renamed from: do  reason: not valid java name */
    public static String m3671do(String str) {
        if (str.startsWith("[")) {
            return str.replace(".", "/");
        }
        if (str.equals("int")) {
            return "I";
        }
        if (str.equals("float")) {
            return "F";
        }
        if (str.equals("long")) {
            return "J";
        }
        if (str.equals("double")) {
            return "D";
        }
        if (str.equals("short")) {
            return ExifInterface.LATITUDE_SOUTH;
        }
        if (str.equals("char")) {
            return "C";
        }
        if (str.equals("boolean")) {
            return "Z";
        }
        if (str.equals("byte")) {
            return "B";
        }
        return ("L" + str + ";").replace(".", "/");
    }

    public static String getFieldSCDesc(Class cls, String str, String str2) {
        String str3;
        while (cls != null) {
            try {
                Field[] declaredFields = cls.getDeclaredFields();
                Field.setAccessible(declaredFields, true);
                int i = 0;
                while (true) {
                    if (i >= declaredFields.length) {
                        str3 = "";
                        break;
                    }
                    Field field = declaredFields[i];
                    String replace = field.getType().toString().replace("class ", "").replace("interface ", "");
                    if (Modifier.isStatic(field.getModifiers()) && field.getName().equals(str) && str2.equals(m3671do(replace))) {
                        str3 = field.getDeclaringClass().getName().replace(".", "/");
                        break;
                    }
                    i++;
                }
            } catch (NoClassDefFoundError unused) {
                str3 = "NoClassDefFoundError";
            }
            if (str3 != "") {
                return str3;
            }
            cls = cls.getSuperclass();
        }
        return "";
    }

    public static native Object rL(Object[] objArr);

    public static void showRiskMessage(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Toast.makeText(context, str, 0).show();
            return;
        }
        Looper.prepare();
        Toast.makeText(context, str, 0).show();
        Looper.loop();
    }
}
