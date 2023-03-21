package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import org.litepal.parser.LitePalParser;
/* loaded from: classes8.dex */
public final class x0 implements a1 {

    /* renamed from: a  reason: collision with root package name */
    public o0<Boolean> f10655a = new a(this);

    /* loaded from: classes8.dex */
    public class a extends o0<Boolean> {
        public a(x0 x0Var) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.o0
        /* renamed from: c */
        public Boolean a(Object... objArr) {
            try {
                PackageManager packageManager = ((Context) objArr[0]).getPackageManager();
                if (packageManager != null) {
                    return Boolean.valueOf(packageManager.resolveContentProvider("com.meizu.flyme.openidsdk", 0) != null);
                }
            } catch (Exception unused) {
            }
            return Boolean.FALSE;
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        if (context == null) {
            return false;
        }
        return this.f10655a.b(context).booleanValue();
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        Cursor cursor;
        try {
            cursor = context.getContentResolver().query(Uri.parse("content://com.meizu.flyme.openidsdk/"), null, null, new String[]{com.umeng.commonsdk.statistics.idtracking.h.d}, null);
            if (cursor == null) {
                return null;
            }
            try {
                a1.a aVar = new a1.a();
                aVar.f10613a = a(cursor);
                cursor.close();
                return aVar;
            } catch (Throwable th) {
                th = th;
                try {
                    th.printStackTrace();
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
    }

    private String a(Cursor cursor) {
        if (cursor == null || cursor.isClosed()) {
            return null;
        }
        cursor.moveToFirst();
        int columnIndex = cursor.getColumnIndex(LitePalParser.ATTR_VALUE);
        if (columnIndex >= 0) {
            return cursor.getString(columnIndex);
        }
        return null;
    }
}
