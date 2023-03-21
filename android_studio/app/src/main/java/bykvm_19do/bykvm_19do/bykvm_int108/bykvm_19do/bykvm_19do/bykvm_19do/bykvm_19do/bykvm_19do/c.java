package bykvm_19do.bykvm_19do.bykvm_int108.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;

/* compiled from: DBMultiUtils.java */
/* loaded from: classes8.dex */
public class c {
    public static synchronized void a(Context context, String str, ContentValues contentValues) {
        synchronized (c.class) {
            if (contentValues != null) {
                if (!TextUtils.isEmpty(str)) {
                    a.a(context).a().a(str, null, contentValues);
                }
            }
        }
    }

    public static synchronized Cursor a(Context context, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        synchronized (c.class) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return a.a(context).a().a(str, strArr, str2, strArr2, null, null, str5);
        }
    }

    public static synchronized void a(Context context, String str) {
        synchronized (c.class) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            a.a(context).a().a(Uri.decode(str));
        }
    }
}
