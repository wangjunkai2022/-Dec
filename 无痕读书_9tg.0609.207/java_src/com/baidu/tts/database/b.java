package com.baidu.tts.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* compiled from: ModelDbHelper.java */
/* loaded from: classes8.dex */
public class b extends SQLiteOpenHelper {
    public b(Context context) {
        this(context, "ttsModel.db", null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(SpeechModelTable.a());
        sQLiteDatabase.execSQL(ModelFileTable.a());
        sQLiteDatabase.execSQL(FsFileInfoTable.a());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(SpeechModelTable.b());
        sQLiteDatabase.execSQL(ModelFileTable.b());
        sQLiteDatabase.execSQL(FsFileInfoTable.b());
        onCreate(sQLiteDatabase);
    }

    public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }
}
