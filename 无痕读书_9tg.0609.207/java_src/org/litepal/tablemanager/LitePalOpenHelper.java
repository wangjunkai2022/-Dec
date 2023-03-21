package org.litepal.tablemanager;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import org.litepal.LitePalApplication;
import org.litepal.Operator;
import org.litepal.parser.LitePalAttr;
import org.litepal.tablemanager.callback.DatabaseListener;
import org.litepal.util.SharedUtil;
/* loaded from: classes7.dex */
public class LitePalOpenHelper extends SQLiteOpenHelper {
    public static final String TAG = "LitePalHelper";

    public LitePalOpenHelper(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Generator.create(sQLiteDatabase);
        final DatabaseListener dBListener = Operator.getDBListener();
        if (dBListener != null) {
            LitePalApplication.sHandler.post(new Runnable() { // from class: org.litepal.tablemanager.LitePalOpenHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    dBListener.onCreate();
                }
            });
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, final int i, final int i2) {
        Generator.upgrade(sQLiteDatabase);
        SharedUtil.updateVersion(LitePalAttr.getInstance().getExtraKeyName(), i2);
        final DatabaseListener dBListener = Operator.getDBListener();
        if (dBListener != null) {
            LitePalApplication.sHandler.post(new Runnable() { // from class: org.litepal.tablemanager.LitePalOpenHelper.2
                @Override // java.lang.Runnable
                public void run() {
                    dBListener.onUpgrade(i, i2);
                }
            });
        }
    }

    public LitePalOpenHelper(String str, int i) {
        this(LitePalApplication.getContext(), str, null, i);
    }
}
