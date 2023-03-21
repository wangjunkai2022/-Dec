package org.litepal.tablemanager;

import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.text.TextUtils;
import com.apk.Cgoto;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.io.File;
import org.litepal.LitePalApplication;
import org.litepal.parser.LitePalAttr;
/* loaded from: classes7.dex */
public class Connector {
    public static LitePalOpenHelper mLitePalHelper;

    public static LitePalOpenHelper buildConnection() {
        LitePalAttr litePalAttr = LitePalAttr.getInstance();
        litePalAttr.checkSelfValid();
        if (mLitePalHelper == null) {
            String dbName = litePalAttr.getDbName();
            if ("external".equalsIgnoreCase(litePalAttr.getStorage())) {
                dbName = LitePalApplication.getContext().getExternalFilesDir("") + "/databases/" + dbName;
            } else if (!UMModuleRegister.INNER.equalsIgnoreCase(litePalAttr.getStorage()) && !TextUtils.isEmpty(litePalAttr.getStorage())) {
                String replace = (Environment.getExternalStorageDirectory().getPath() + "/" + litePalAttr.getStorage()).replace("//", "/");
                File file = new File(replace);
                if (!file.exists()) {
                    file.mkdirs();
                }
                dbName = Cgoto.m996else(replace, "/", dbName);
            }
            mLitePalHelper = new LitePalOpenHelper(dbName, litePalAttr.getVersion());
        }
        return mLitePalHelper;
    }

    public static void clearLitePalOpenHelperInstance() {
        LitePalOpenHelper litePalOpenHelper = mLitePalHelper;
        if (litePalOpenHelper != null) {
            litePalOpenHelper.getWritableDatabase().close();
            mLitePalHelper = null;
        }
    }

    public static SQLiteDatabase getDatabase() {
        return getWritableDatabase();
    }

    public static synchronized SQLiteDatabase getWritableDatabase() {
        SQLiteDatabase writableDatabase;
        synchronized (Connector.class) {
            writableDatabase = buildConnection().getWritableDatabase();
        }
        return writableDatabase;
    }
}
