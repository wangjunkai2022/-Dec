package com.apk;

import android.content.ContentValues;
import android.content.res.Resources;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TypedValue;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.RedBgImageBean;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;
/* compiled from: BookReadModule.java */
/* loaded from: classes8.dex */
public class g2 {

    /* renamed from: do  reason: not valid java name */
    public gg<String, List<Vector>> f1496do;

    /* renamed from: if  reason: not valid java name */
    public byte[] f1498if = null;

    /* renamed from: for  reason: not valid java name */
    public int f1497for = 0;

    /* renamed from: new  reason: not valid java name */
    public int f1499new = 0;

    /* renamed from: abstract  reason: not valid java name */
    public static void m907abstract(int i) {
        tt.f4763do.putInt("SP_RED_BACKGROUP_COLOR_INDEX_KEY", i);
    }

    /* renamed from: break  reason: not valid java name */
    public static int m908break() {
        return (int) TypedValue.applyDimension(2, m929this(), Resources.getSystem().getDisplayMetrics());
    }

    /* renamed from: case  reason: not valid java name */
    public static int m909case() {
        return ze.m3174instanceof(RedBgImageBean.RED_BG_SELECT_TYPE, 1);
    }

    /* renamed from: catch  reason: not valid java name */
    public static int m910catch() {
        return ze.m3174instanceof("interval_view_id", 20);
    }

    /* renamed from: class  reason: not valid java name */
    public static RedBgImageBean m911class() {
        RedBgImageBean redBgImageBean = new RedBgImageBean();
        redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_COLOR);
        redBgImageBean.setBgColor("#333333");
        redBgImageBean.setfColor("#888888");
        return redBgImageBean;
    }

    /* renamed from: const  reason: not valid java name */
    public static int m912const() {
        return ze.m3174instanceof("SP_RED_BACKGROUP_COLOR_INDEX_KEY", 0);
    }

    /* renamed from: continue  reason: not valid java name */
    public static void m913continue(int i) {
        tt.f4763do.putInt("SP_RED_BACKGROUP_IMAGE_KEY", i);
    }

    /* renamed from: default  reason: not valid java name */
    public static void m914default(String str, String str2, boolean z) {
        m913continue(-1);
        m907abstract(-1);
        da.m434switch(false);
        da.m432static(false);
        LitePal.deleteAll(RedBgImageBean.class, "type = ?", RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE);
        RedBgImageBean redBgImageBean = new RedBgImageBean();
        redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE);
        redBgImageBean.setBgImage(str);
        redBgImageBean.setfColor(str2);
        redBgImageBean.save();
        m926private(4);
        mf mfVar = new mf();
        mfVar.f3028do = "backgorund_view_id";
        rl0.m2304if().m2310else(mfVar);
        if (z) {
            ToastUtils.show((int) R.string.read_bg_set_success_txt);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static String m915do(String str, String str2) {
        return Cgoto.m996else(str, "=", str2);
    }

    /* renamed from: else  reason: not valid java name */
    public static RedBgImageBean m916else() {
        RedBgImageBean redBgImageBean = new RedBgImageBean();
        redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_COLOR);
        redBgImageBean.setBgColor("#E8D8B7");
        redBgImageBean.setfColor("#333333");
        redBgImageBean.setName(ze.q(R.string.read_bg_defult_txt));
        return redBgImageBean;
    }

    /* renamed from: extends  reason: not valid java name */
    public static void m917extends(String str, String str2, String str3, int i, String str4) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("readChapterId", str2);
            contentValues.put("readChapterName", str3);
            contentValues.put("readPage", Integer.valueOf(i));
            contentValues.put("saveTime", String.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(str4)) {
                contentValues.put("firstChapterId", str4);
            }
            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static int m918final() {
        return ze.m3174instanceof("SP_RED_BACKGROUP_IMAGE_KEY", -1);
    }

    /* renamed from: finally  reason: not valid java name */
    public static void m919finally(final String str, final String str2, final String str3, final int i, final String str4) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o m1921for = o.m1921for();
            Runnable runnable = new Runnable() { // from class: com.apk.q1
                @Override // java.lang.Runnable
                public final void run() {
                    g2.m917extends(str, str2, str3, i, str4);
                }
            };
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(runnable);
                return;
            }
            return;
        }
        m917extends(str, str2, str3, i, str4);
    }

    /* renamed from: goto  reason: not valid java name */
    public static RedBgImageBean m920goto() {
        RedBgImageBean redBgImageBean = new RedBgImageBean();
        redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_COLOR);
        redBgImageBean.setBgColor("#00793F");
        redBgImageBean.setfColor("#111111");
        return redBgImageBean;
    }

    /* renamed from: if  reason: not valid java name */
    public static ChapterBean m921if(String str, String str2) {
        return da.m419else().m442new(str, str2);
    }

    /* renamed from: new  reason: not valid java name */
    public static RedBgImageBean m924new() {
        RedBgImageBean redBgImageBean = (RedBgImageBean) LitePal.where("type = ?", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR).findFirst(RedBgImageBean.class);
        if (redBgImageBean != null) {
            redBgImageBean.setName(ze.q(R.string.read_bg_custom_title_txt));
        }
        return redBgImageBean;
    }

    /* renamed from: package  reason: not valid java name */
    public static void m925package(int i) {
        m907abstract(i);
        m913continue(-1);
        da.m434switch(false);
        da.m432static(false);
        m926private(1);
        mf mfVar = new mf();
        mfVar.f3028do = "backgorund_view_id";
        rl0.m2304if().m2310else(mfVar);
    }

    /* renamed from: private  reason: not valid java name */
    public static void m926private(int i) {
        tt.f4763do.putInt(RedBgImageBean.RED_BG_SELECT_TYPE, i);
    }

    /* renamed from: static  reason: not valid java name */
    public static void m927static(String str, List<ChapterBean> list, boolean z) {
        try {
            LitePal.deleteAll(ChapterBean.class, "novelId = ?", str);
            LitePal.saveAll(list);
        } catch (Exception e) {
            e.printStackTrace();
        }
        da.m428package(str);
        if (z) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("max", Integer.valueOf(list.size()));
                LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: super  reason: not valid java name */
    public static RedBgImageBean m928super() {
        List find;
        RedBgImageBean redBgImageBean;
        int m909case = m909case();
        RedBgImageBean redBgImageBean2 = null;
        if (m909case == 1) {
            int m912const = m912const();
            if (m912const < 0) {
                m912const = 0;
            }
            List find2 = LitePal.where("type = ?", RedBgImageBean.RED_BG_TYPE_COLOR).find(RedBgImageBean.class);
            if (find2 != null && find2.size() != 0 && m912const < find2.size()) {
                redBgImageBean = (RedBgImageBean) find2.get(m912const);
                redBgImageBean2 = redBgImageBean;
            }
        } else if (m909case == 2) {
            redBgImageBean2 = m924new();
        } else if (m909case == 3) {
            int m918final = m918final();
            if (m918final >= 0 && (find = LitePal.where("type = ?", "3").find(RedBgImageBean.class)) != null && find.size() != 0 && m918final < find.size()) {
                redBgImageBean = (RedBgImageBean) find.get(m918final);
                redBgImageBean2 = redBgImageBean;
            }
        } else if (m909case == 4) {
            redBgImageBean2 = m931try();
        }
        return redBgImageBean2 == null ? m916else() : redBgImageBean2;
    }

    /* renamed from: this  reason: not valid java name */
    public static int m929this() {
        return ze.m3174instanceof("reader_font_size", 19);
    }

    /* renamed from: throws  reason: not valid java name */
    public static void m930throws(String str, String str2, boolean z) {
        m913continue(-1);
        m907abstract(-1);
        da.m434switch(false);
        da.m432static(false);
        LitePal.deleteAll(RedBgImageBean.class, "type = ?", RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
        RedBgImageBean redBgImageBean = new RedBgImageBean();
        redBgImageBean.setType(RedBgImageBean.RED_BG_TYPE_CUSTOM_COLOR);
        redBgImageBean.setBgColor(str);
        redBgImageBean.setfColor(str2);
        redBgImageBean.save();
        m926private(2);
        mf mfVar = new mf();
        mfVar.f3028do = "backgorund_view_id";
        rl0.m2304if().m2310else(mfVar);
        if (z) {
            ToastUtils.show((int) R.string.read_bg_set_success_txt);
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static RedBgImageBean m931try() {
        RedBgImageBean redBgImageBean = (RedBgImageBean) LitePal.where("type = ?", RedBgImageBean.RED_BG_TYPE_CUSTOM_IMAGE).findFirst(RedBgImageBean.class);
        if (redBgImageBean != null) {
            redBgImageBean.setName(ze.q(R.string.read_bg_custom_title_txt));
        }
        return redBgImageBean;
    }

    /* renamed from: while  reason: not valid java name */
    public static boolean m932while(ChapterBean chapterBean) {
        if (chapterBean == null || !chapterBean.isHasContent()) {
            return false;
        }
        return n2.k(chapterBean.getNovelId(), chapterBean.getOid());
    }

    /* renamed from: for  reason: not valid java name */
    public List<Vector> m933for(String str) {
        gg<String, List<Vector>> ggVar = this.f1496do;
        if (ggVar != null) {
            return ggVar.get(m915do("1", str));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0108, code lost:
        r0 = r6.size();
        r2 = r18 - r12;
        r3 = r19 + "_" + r20 + "_" + r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x012c, code lost:
        if (r2 <= 0.0f) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012e, code lost:
        com.apk.ca.m315do().f548this.put(r3, java.lang.Float.valueOf(r2 / r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x013e, code lost:
        com.apk.ca.m315do().f548this.put(r3, java.lang.Float.valueOf(0.0f));
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a7 A[Catch: Exception -> 0x0151, all -> 0x0157, TryCatch #5 {Exception -> 0x0151, blocks: (B:21:0x007a, B:31:0x009e, B:32:0x00a1, B:34:0x00a7, B:36:0x00c4, B:37:0x00c9, B:39:0x00d5, B:40:0x00e5, B:42:0x00eb, B:46:0x00fc, B:55:0x014d, B:45:0x00f9), top: B:74:0x007a, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0108 A[EDGE_INSN: B:67:0x0108->B:49:0x0108 ?: BREAK  , EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: public  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.Vector<java.lang.String> m934public(float r17, float r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.g2.m934public(float, float, java.lang.String, java.lang.String, java.lang.String, int):java.util.Vector");
    }

    /* renamed from: return  reason: not valid java name */
    public final byte[] m935return(int i) {
        int i2 = i;
        while (true) {
            try {
                if (i2 >= this.f1497for) {
                    break;
                }
                int i3 = i2 + 1;
                if (this.f1498if[i2] == 10) {
                    i2 = i3;
                    break;
                }
                i2 = i3;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
        int i4 = i2 - i;
        byte[] bArr = new byte[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i5] = this.f1498if[i + i5];
        }
        return bArr;
    }

    /* renamed from: switch  reason: not valid java name */
    public void m936switch(String str) {
        gg<String, List<Vector>> ggVar = this.f1496do;
        if (ggVar != null) {
            ggVar.remove(m915do("1", str));
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public synchronized void m937throw(String str, String str2, String str3, float f, float f2) {
        int i = 0;
        try {
            this.f1499new = 0;
            this.f1497for = 0;
            try {
                File file = new File(n2.m1815default(str, "1", str2));
                if (file.exists()) {
                    byte[] bytes = CryptDesManager.decodeContent(ze.m3191transient(file.getAbsolutePath(), "UTF-8"), true).getBytes("UTF-8");
                    this.f1498if = bytes;
                    this.f1497for = bytes.length;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            ArrayList arrayList = new ArrayList();
            do {
                i++;
                arrayList.add(m934public(f, f2, str, str2, str3, i));
            } while (this.f1499new < this.f1497for);
            if (this.f1499new >= this.f1497for) {
                if (this.f1496do == null) {
                    this.f1496do = new gg<>();
                }
                this.f1496do.put(m915do("1", str2), arrayList);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
