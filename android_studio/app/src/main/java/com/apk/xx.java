package com.apk;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.core.app.NotificationCompat;
import com.bytedance.msdk.adapter.util.TTLogUtil;
import java.io.Serializable;
import java.util.List;

/* compiled from: DownloadManager.java */
/* loaded from: classes8.dex */
public class xx extends tx<hy> {

    /* compiled from: DownloadManager.java */
    /* renamed from: com.apk.xx$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final xx f5816do = new xx(null);
    }

    public xx() {
        super(new wx());
    }

    /* renamed from: case  reason: not valid java name */
    public hy m3051case(String str) {
        System.currentTimeMillis();
        List<hy> query = query(null, "tag=?", new String[]{str}, null, null, null, "1");
        System.currentTimeMillis();
        return query.size() > 0 ? query.get(0) : null;
    }

    public void delete(String str) {
        delete("tag=?", new String[]{str});
    }

    @Override // com.apk.tx
    /* renamed from: for */
    public String mo2625for() {
        return "download";
    }

    @Override // com.apk.tx
    /* renamed from: if */
    public ContentValues mo2626if(hy hyVar) {
        hy hyVar2 = hyVar;
        ContentValues contentValues = new ContentValues();
        contentValues.put("tag", hyVar2.f2006do);
        contentValues.put("url", hyVar2.f2011if);
        contentValues.put("folder", hyVar2.f2009for);
        contentValues.put("filePath", hyVar2.f2014new);
        contentValues.put("fileName", hyVar2.f2020try);
        contentValues.put("fraction", Float.valueOf(hyVar2.f2002case));
        contentValues.put("totalSize", Long.valueOf(hyVar2.f2007else));
        contentValues.put("currentSize", Long.valueOf(hyVar2.f2010goto));
        contentValues.put(NotificationCompat.CATEGORY_STATUS, Integer.valueOf(hyVar2.f2001break));
        contentValues.put("priority", Integer.valueOf(hyVar2.f2003catch));
        contentValues.put("date", Long.valueOf(hyVar2.f2004class));
        contentValues.put(TTLogUtil.TAG_EVENT_REQUEST, mu.z(hyVar2.f2005const));
        contentValues.put("extra1", mu.z(hyVar2.f2008final));
        contentValues.put("extra2", mu.z(hyVar2.f2017super));
        contentValues.put("extra3", mu.z(hyVar2.f2019throw));
        return contentValues;
    }

    @Override // com.apk.tx
    /* renamed from: new */
    public hy mo2627new(Cursor cursor) {
        hy hyVar = new hy();
        hyVar.f2006do = cursor.getString(cursor.getColumnIndex("tag"));
        hyVar.f2011if = cursor.getString(cursor.getColumnIndex("url"));
        hyVar.f2009for = cursor.getString(cursor.getColumnIndex("folder"));
        hyVar.f2014new = cursor.getString(cursor.getColumnIndex("filePath"));
        hyVar.f2020try = cursor.getString(cursor.getColumnIndex("fileName"));
        hyVar.f2002case = cursor.getFloat(cursor.getColumnIndex("fraction"));
        hyVar.f2007else = cursor.getLong(cursor.getColumnIndex("totalSize"));
        hyVar.f2010goto = cursor.getLong(cursor.getColumnIndex("currentSize"));
        hyVar.f2001break = cursor.getInt(cursor.getColumnIndex(NotificationCompat.CATEGORY_STATUS));
        hyVar.f2003catch = cursor.getInt(cursor.getColumnIndex("priority"));
        hyVar.f2004class = cursor.getLong(cursor.getColumnIndex("date"));
        hyVar.f2005const = (qy) mu.A(cursor.getBlob(cursor.getColumnIndex(TTLogUtil.TAG_EVENT_REQUEST)));
        hyVar.f2008final = (Serializable) mu.A(cursor.getBlob(cursor.getColumnIndex("extra1")));
        hyVar.f2017super = (Serializable) mu.A(cursor.getBlob(cursor.getColumnIndex("extra2")));
        hyVar.f2019throw = (Serializable) mu.A(cursor.getBlob(cursor.getColumnIndex("extra3")));
        return hyVar;
    }

    public boolean update(hy hyVar) {
        return update((xx) hyVar, "tag=?", new String[]{hyVar.f2006do});
    }

    public xx(Cdo cdo) {
        super(new wx());
    }

    public boolean update(ContentValues contentValues, String str) {
        return update(contentValues, "tag=?", new String[]{str});
    }
}
