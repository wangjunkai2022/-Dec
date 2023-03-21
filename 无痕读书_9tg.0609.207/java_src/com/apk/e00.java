package com.apk;

import android.content.ContentValues;
import android.os.Looper;
import android.text.TextUtils;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONArray;
import org.json.JSONObject;
import org.litepal.LitePal;
/* compiled from: ComicReadModule.java */
/* loaded from: classes8.dex */
public class e00 {

    /* renamed from: do  reason: not valid java name */
    public gg<String, List<String>> f978do;

    /* compiled from: ComicReadModule.java */
    /* renamed from: com.apk.e00$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cdo implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f979do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f980for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f981if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ int f982new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ String f983try;

        public Cdo(String str, String str2, String str3, int i, String str4) {
            this.f979do = str;
            this.f981if = str2;
            this.f980for = str3;
            this.f982new = i;
            this.f983try = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            e00.m526case(this.f979do, this.f981if, this.f980for, this.f982new, this.f983try);
        }
    }

    /* compiled from: ComicReadModule.java */
    /* renamed from: com.apk.e00$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends c1<Object> {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f984do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f985for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ String f986if;

        public Cif(String str, String str2, String str3) {
            this.f984do = str;
            this.f986if = str2;
            this.f985for = str3;
        }

        @Override // com.apk.c1
        public Object doInBackground() {
            try {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("userid", v0.m2736try().m2746goto());
                    jSONObject.put("deviceid", eg.m613super());
                    jSONObject.put("bookid", this.f984do);
                    jSONObject.put("chapterid", this.f986if);
                    jSONObject.put("money", dg.f857do.nextInt(50) + "");
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (x4.m2962switch(p0.m2006if() + "/TongJi/Shouyi", jSONObject) != null) {
                    tt.f4763do.putString("SP_LIMIT_CHAPTER_KEY_COMIC", tt.m2620do("SP_LIMIT_CHAPTER_KEY_COMIC", "").replace("&" + this.f986if + "&", ""));
                } else {
                    p0.m2013throw(this.f985for);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return super.doInBackground();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static void m526case(String str, String str2, String str3, int i, String str4) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("readChapterId", str2);
            contentValues.put("readChapterName", str3);
            contentValues.put("readPage", Integer.valueOf(i));
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(str4)) {
                contentValues.put("firstChapterId", str4);
            }
            LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static void m527else(String str, String str2, String str3, int i, String str4) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o m1921for = o.m1921for();
            Cdo cdo = new Cdo(str, str2, str3, i, str4);
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(cdo);
                return;
            }
            return;
        }
        m526case(str, str2, str3, i, str4);
    }

    /* renamed from: if  reason: not valid java name */
    public static ComicChapterBean m528if(String str, String str2) {
        return da.m419else().m439case(str, str2);
    }

    /* renamed from: new  reason: not valid java name */
    public static void m529new(String str, List<ComicChapterBean> list) {
        try {
            LitePal.deleteAll(ComicChapterBean.class, "novelId = ?", str);
            LitePal.saveAll(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        tt.f4763do.putBoolean(Cgoto.m989case("CATELOG_GET_COMIC_", str), true);
        try {
            List find = LitePal.where("novelId = ?", str).find(ComicChapterBean.class);
            int size = find != null ? find.size() : 0;
            ContentValues contentValues = new ContentValues();
            contentValues.put("max", Integer.valueOf(size));
            LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static void m530try(String str, String str2) {
        String m989case = Cgoto.m989case("SP_LIMIT_CHAPTER_KEY_COMIC-", str2);
        if (eg.m598goto(m989case)) {
            return;
        }
        p0.m2011super(m989case, "");
        new b1().m141do(new Cif(str, str2, m989case));
    }

    /* renamed from: do  reason: not valid java name */
    public List<String> m531do(String str) {
        gg<String, List<String>> ggVar = this.f978do;
        if (ggVar != null) {
            return ggVar.get(str);
        }
        return null;
    }

    /* renamed from: for  reason: not valid java name */
    public synchronized void m532for(String str, String str2) {
        try {
            ComicChapterBean m528if = m528if(str, str2);
            if (m528if != null) {
                String content = m528if.getContent();
                try {
                    ArrayList arrayList = new ArrayList();
                    JSONArray jSONArray = new JSONArray(content);
                    if (jSONArray.length() > 0) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            String optString = jSONArray.optString(i);
                            if (!optString.contains("aaaaaaaa")) {
                                arrayList.add(optString);
                            }
                        }
                        if (this.f978do == null) {
                            this.f978do = new gg<>();
                        }
                        this.f978do.put(str2, arrayList);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
