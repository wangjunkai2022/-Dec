package com.apk;

import android.content.ContentValues;
import android.database.Cursor;
import androidx.core.app.Person;
/* compiled from: CacheManager.java */
/* loaded from: classes8.dex */
public class ux extends tx<ww<?>> {

    /* compiled from: CacheManager.java */
    /* renamed from: com.apk.ux$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif {

        /* renamed from: do  reason: not valid java name */
        public static final ux f4970do = new ux(null);
    }

    public ux() {
        super(new wx());
    }

    @Override // com.apk.tx
    /* renamed from: for */
    public String mo2625for() {
        return "cache";
    }

    @Override // com.apk.tx
    /* renamed from: if */
    public ContentValues mo2626if(ww<?> wwVar) {
        ww<?> wwVar2 = wwVar;
        ContentValues contentValues = new ContentValues();
        contentValues.put(Person.KEY_KEY, wwVar2.f5404do);
        contentValues.put("localExpire", Long.valueOf(wwVar2.f5406if));
        contentValues.put("head", mu.z(wwVar2.f5405for));
        contentValues.put("data", mu.z(wwVar2.f5407new));
        return contentValues;
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object] */
    @Override // com.apk.tx
    /* renamed from: new */
    public ww<?> mo2627new(Cursor cursor) {
        ww<?> wwVar = new ww<>();
        wwVar.f5404do = cursor.getString(cursor.getColumnIndex(Person.KEY_KEY));
        wwVar.f5406if = cursor.getLong(cursor.getColumnIndex("localExpire"));
        wwVar.f5405for = (fy) mu.A(cursor.getBlob(cursor.getColumnIndex("head")));
        wwVar.f5407new = mu.A(cursor.getBlob(cursor.getColumnIndex("data")));
        return wwVar;
    }

    public ux(Cdo cdo) {
        super(new wx());
    }
}
