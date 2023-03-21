package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_new1;

import android.content.Context;
import android.content.pm.Signature;
import androidx.exifinterface.media.ExifInterface;
import com.bytedance.msdk.adapter.util.Logger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import org.litepal.crud.LitePalSupport;

/* compiled from: AppSigning.java */
/* loaded from: classes8.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static HashMap<String, ArrayList<String>> f10994a = new HashMap<>();

    public static ArrayList<String> a(Context context, String str) {
        Signature[] b;
        String a2;
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (f10994a.get(str) != null) {
                return f10994a.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : b(context, packageName)) {
                    if (LitePalSupport.MD5.equals(str)) {
                        a2 = a(signature, LitePalSupport.MD5);
                    } else if ("SHA1".equals(str)) {
                        a2 = a(signature, "SHA1");
                    } else {
                        a2 = "SHA256".equals(str) ? a(signature, "SHA256") : "error!";
                    }
                    arrayList.add(a2);
                }
            } catch (Exception e) {
                Logger.e(e.toString());
            }
            f10994a.put(str, arrayList);
        }
        return arrayList;
    }

    public static Signature[] b(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e) {
            Logger.e(e.toString());
            return null;
        }
    }

    public static String a(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest != null) {
                byte[] digest = messageDigest.digest(byteArray);
                StringBuilder sb = new StringBuilder();
                for (byte b : digest) {
                    sb.append(Integer.toHexString((b & ExifInterface.MARKER) | 256).substring(1, 3).toUpperCase());
                    sb.append(":");
                }
                return sb.substring(0, sb.length() - 1).toString();
            }
        } catch (Exception e) {
            Logger.e(e.toString());
        }
        return "error!";
    }
}
