package com.baidu.tts.database;

import android.database.sqlite.SQLiteDatabase;
import com.apk.Cgoto;
import com.baidu.tts.client.model.Conditions;
import com.baidu.tts.client.model.ModelBags;
import com.baidu.tts.client.model.ModelFileBags;
import com.baidu.tts.f.g;
import com.baidu.tts.tools.DataTool;
import com.baidu.tts.tools.SqlTool;
import com.baidu.tts.tools.StringTool;
import com.umeng.analytics.pro.ak;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: DbManager.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public com.baidu.tts.l.a f11203a;
    public b b;
    public ReadWriteLock c;
    public Lock d;
    public Lock e;

    public a(com.baidu.tts.l.a aVar) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.c = reentrantReadWriteLock;
        this.d = reentrantReadWriteLock.writeLock();
        this.e = this.c.readLock();
        this.f11203a = aVar;
        this.b = new b(this.f11203a.d());
    }

    public int a(String str) {
        this.d.lock();
        try {
            SQLiteDatabase a2 = a();
            try {
                int a3 = SpeechModelTable.a(a2, str);
                this.d.unlock();
                return a3;
            } catch (Exception unused) {
                this.d.unlock();
                return -1;
            } finally {
                a2.close();
            }
        } catch (Throwable th) {
            this.d.unlock();
            throw th;
        }
    }

    public int b(String str) {
        this.d.lock();
        try {
            SQLiteDatabase a2 = a();
            try {
                int a3 = ModelFileTable.a(a2, str);
                this.d.unlock();
                return a3;
            } catch (Exception unused) {
                this.d.unlock();
                return -1;
            } finally {
                a2.close();
            }
        } catch (Throwable th) {
            this.d.unlock();
            throw th;
        }
    }

    public Map<String, String> c(String str) {
        return a("select * from fsFileInfo where absPath=?", new String[]{str});
    }

    public Map<String, String> d(String str) {
        return a("select * from modelFile where id=?", new String[]{str});
    }

    public Map<String, String> e(String str) {
        return a("select * from speechModel where id=?", new String[]{str});
    }

    private SQLiteDatabase b() {
        return this.b.getReadableDatabase();
    }

    public String a(String str, String str2) {
        Map<String, String> a2 = a("select b.absPath from speechModel a left join modelFile b on a." + str + "=b.id where a.id=?", new String[]{str2});
        if (a2 != null) {
            return a2.get(g.ABS_PATH.b());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        if (r0 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List<java.util.Map<java.lang.String, java.lang.String>> b(java.lang.String r8, java.lang.String[] r9) {
        /*
            r7 = this;
            java.util.concurrent.locks.Lock r0 = r7.e
            r0.lock()
            r0 = 0
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r1.<init>()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.database.sqlite.SQLiteDatabase r0 = r7.b()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            android.database.Cursor r8 = r0.rawQuery(r8, r9)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            if (r8 == 0) goto L46
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            if (r9 == 0) goto L43
            java.lang.String[] r9 = r8.getColumnNames()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
        L1f:
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            r2.<init>()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            int r3 = r9.length     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            r4 = 0
        L26:
            if (r4 >= r3) goto L3a
            r5 = r9[r4]     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            r6 = r9[r4]     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            int r6 = r8.getColumnIndex(r6)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            java.lang.String r6 = r8.getString(r6)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            r2.put(r5, r6)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            int r4 = r4 + 1
            goto L26
        L3a:
            r1.add(r2)     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            boolean r2 = r8.moveToNext()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
            if (r2 != 0) goto L1f
        L43:
            r8.close()     // Catch: java.lang.Exception -> L4a java.lang.Throwable -> L4c
        L46:
            r0.close()     // Catch: java.lang.Throwable -> L62
            goto L56
        L4a:
            r8 = move-exception
            goto L50
        L4c:
            r8 = move-exception
            goto L5c
        L4e:
            r8 = move-exception
            r1 = r0
        L50:
            r8.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L56
            goto L46
        L56:
            java.util.concurrent.locks.Lock r8 = r7.e
            r8.unlock()
            return r1
        L5c:
            if (r0 == 0) goto L64
            r0.close()     // Catch: java.lang.Throwable -> L62
            goto L64
        L62:
            r8 = move-exception
            goto L65
        L64:
            throw r8     // Catch: java.lang.Throwable -> L62
        L65:
            java.util.concurrent.locks.Lock r9 = r7.e
            r9.unlock()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.database.a.b(java.lang.String, java.lang.String[]):java.util.List");
    }

    public void a(String str, int i) {
        this.d.lock();
        try {
            String[] strArr = {str, String.valueOf(i)};
            SQLiteDatabase a2 = a();
            a2.execSQL("replace into fsFileInfo (absPath,state) values (?, ?)", strArr);
            a2.close();
        } finally {
            this.d.unlock();
        }
    }

    public void a(ModelFileBags modelFileBags) {
        this.d.lock();
        try {
            ModelFileTable.a(a(), modelFileBags);
        } finally {
            this.d.unlock();
        }
    }

    public void a(ModelBags modelBags) {
        this.d.lock();
        try {
            SpeechModelTable.a(a(), modelBags);
        } finally {
            this.d.unlock();
        }
    }

    public List<Map<String, String>> a(Conditions conditions) {
        String str;
        String[] strArr;
        String version = conditions.getVersion();
        if (StringTool.isEmpty(version)) {
            str = null;
            strArr = null;
        } else {
            strArr = new String[]{version, version};
            str = "version_min <= ? and version_max >= ?";
        }
        String[] domainArray = conditions.getDomainArray();
        String[] languageArray = conditions.getLanguageArray();
        String[] qualityArray = conditions.getQualityArray();
        String[] genderArray = conditions.getGenderArray();
        String[] speakerArray = conditions.getSpeakerArray();
        String[] modelIdsArray = conditions.getModelIdsArray();
        String buildConditions = SqlTool.buildConditions("and", str, SqlTool.buildInCondition("domain", domainArray), SqlTool.buildInCondition(ak.N, languageArray), SqlTool.buildInCondition("quality", qualityArray), SqlTool.buildInCondition("gender", genderArray), SqlTool.buildInCondition("speaker", speakerArray), SqlTool.buildInCondition("id", modelIdsArray));
        if (StringTool.isEmpty(buildConditions)) {
            return null;
        }
        return b(Cgoto.m989case("select * from speechModel where ", buildConditions), DataTool.connect(strArr, domainArray, languageArray, qualityArray, genderArray, speakerArray, modelIdsArray));
    }

    public List<Map<String, String>> a(Set<String> set) {
        if (set == null || set.isEmpty()) {
            return null;
        }
        String[] fromSetToArray = DataTool.fromSetToArray(set);
        return b(Cgoto.m989case("select * from modelFile where ", SqlTool.buildInCondition("id", fromSetToArray)), fromSetToArray);
    }

    private SQLiteDatabase a() {
        return this.b.getWritableDatabase();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0047, code lost:
        if (r1 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Map<java.lang.String, java.lang.String> a(java.lang.String r7, java.lang.String[] r8) {
        /*
            r6 = this;
            java.util.concurrent.locks.Lock r0 = r6.e
            r0.lock()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r6.b()     // Catch: java.lang.Throwable -> L56
            android.database.Cursor r7 = r1.rawQuery(r7, r8)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            if (r7 == 0) goto L3d
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            if (r8 == 0) goto L3a
            java.util.HashMap r8 = new java.util.HashMap     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r8.<init>()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            java.lang.String[] r0 = r7.getColumnNames()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            int r2 = r0.length     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            r3 = 0
        L21:
            if (r3 >= r2) goto L35
            r4 = r0[r3]     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            r5 = r0[r3]     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            int r5 = r7.getColumnIndex(r5)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            java.lang.String r5 = r7.getString(r5)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            r8.put(r4, r5)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L41
            int r3 = r3 + 1
            goto L21
        L35:
            r0 = r8
            goto L3a
        L37:
            r7 = move-exception
            r0 = r8
            goto L44
        L3a:
            r7.close()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
        L3d:
            r1.close()     // Catch: java.lang.Throwable -> L56
            goto L4a
        L41:
            r7 = move-exception
            goto L50
        L43:
            r7 = move-exception
        L44:
            r7.printStackTrace()     // Catch: java.lang.Throwable -> L41
            if (r1 == 0) goto L4a
            goto L3d
        L4a:
            java.util.concurrent.locks.Lock r7 = r6.e
            r7.unlock()
            return r0
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.lang.Throwable -> L56
        L55:
            throw r7     // Catch: java.lang.Throwable -> L56
        L56:
            r7 = move-exception
            java.util.concurrent.locks.Lock r8 = r6.e
            r8.unlock()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.database.a.a(java.lang.String, java.lang.String[]):java.util.Map");
    }
}
