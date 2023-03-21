package com.apk;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.InputDeviceCompat;
import com.apk.sg0;
import com.apk.tw;
import com.apk.zg0;
import com.biquge.ebook.app.bean.BookChapter;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
import org.litepal.LitePal;
/* compiled from: OSUtils.java */
/* loaded from: classes8.dex */
public class mu {
    public static Object A(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        if (bArr == null) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
        } catch (Exception e) {
            e = e;
            objectInputStream = null;
            byteArrayInputStream = null;
        } catch (Throwable th2) {
            byteArrayInputStream = null;
            th = th2;
            objectInputStream = null;
        }
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                try {
                    Object readObject = objectInputStream.readObject();
                    m1758class(objectInputStream);
                    m1758class(byteArrayInputStream);
                    return readObject;
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    m1758class(objectInputStream);
                    m1758class(byteArrayInputStream);
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                m1758class(objectInputStream);
                m1758class(byteArrayInputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            objectInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
            m1758class(objectInputStream);
            m1758class(byteArrayInputStream);
            throw th;
        }
    }

    public static void B(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("stickTime", str2);
        contentValues.put("saveTime", str2);
        LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
    }

    public static String a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return str2;
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public static mv m1754abstract(InputStream inputStream) throws IOException {
        mv mvVar = mv.WEBP_A;
        mv mvVar2 = mv.WEBP;
        mv mvVar3 = mv.UNKNOWN;
        nw nwVar = new nw(inputStream);
        int m1919if = nwVar.m1919if();
        if (m1919if == 65496) {
            return mv.JPEG;
        }
        int m1919if2 = ((m1919if << 16) & (-65536)) | (nwVar.m1919if() & 65535);
        if (m1919if2 == -1991225785) {
            nwVar.m1918for(21L);
            return nwVar.m1917do() >= 3 ? mv.PNG_A : mv.PNG;
        } else if ((m1919if2 >> 8) == 4671814) {
            return mv.GIF;
        } else {
            if (m1919if2 != 1380533830) {
                return mvVar3;
            }
            nwVar.m1918for(4L);
            if ((((nwVar.m1919if() << 16) & (-65536)) | (nwVar.m1919if() & 65535)) != 1464156752) {
                return mvVar3;
            }
            int m1919if3 = ((nwVar.m1919if() << 16) & (-65536)) | (nwVar.m1919if() & 65535);
            if ((m1919if3 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                return mvVar3;
            }
            int i = m1919if3 & 255;
            if (i == 88) {
                nwVar.m1918for(4L);
                return (nwVar.m1917do() & 16) != 0 ? mvVar : mvVar2;
            } else if (i == 76) {
                nwVar.m1918for(4L);
                return (nwVar.m1917do() & 8) != 0 ? mvVar : mvVar2;
            } else {
                inputStream.close();
                return mvVar2;
            }
        }
    }

    public static boolean b(Context context, Intent intent) {
        return !context.getPackageManager().queryIntentActivities(intent, 65536).isEmpty();
    }

    /* renamed from: break  reason: not valid java name */
    public static void m1755break(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    public static boolean c(Context context) {
        if (Build.VERSION.SDK_INT >= 24) {
            return ((NotificationManager) context.getSystemService(NotificationManager.class)).areNotificationsEnabled();
        }
        return true;
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m1756case(Context context, boolean z) {
        return m1763else(context, z, false, null);
    }

    /* renamed from: catch  reason: not valid java name */
    public static void m1757catch(Context context) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                ii.m1220new(context).m1222for();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public static void m1758class(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: const  reason: not valid java name */
    public static ComicBean m1759const(ComicCollectBean comicCollectBean) {
        ComicBean comicBean = new ComicBean();
        comicBean.setId(comicCollectBean.getCollectId());
        comicBean.setName(comicCollectBean.getName());
        comicBean.setImg(comicCollectBean.getIcon());
        comicBean.setCName(comicCollectBean.getBookType());
        comicBean.setAuthor(comicCollectBean.getAuthor());
        comicBean.setDesc(comicCollectBean.getDesc());
        comicBean.setLastChapterId(comicCollectBean.getLastCapterId());
        comicBean.setFirstChapterId(comicCollectBean.getFirstChapterId());
        return comicBean;
    }

    /* renamed from: continue  reason: not valid java name */
    public static String m1760continue(BookChapter bookChapter) {
        if (bookChapter == null) {
            return null;
        }
        return bookChapter.getChapterId() + "=" + bookChapter.getReadPage() + "=" + bookChapter.getAllPage() + "=" + bookChapter.getUrl();
    }

    public static boolean d() {
        return Build.VERSION.SDK_INT >= 29;
    }

    /* renamed from: default  reason: not valid java name */
    public static boolean m1761default(String str, String str2) {
        return m1764extends(str, str2, null, false);
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1762do(String str) {
        HashMap m1012public = Cgoto.m1012public("action", "addbookcase", "bookId", str);
        JSONObject m2953extends = x4.m2953extends(p0.m2014try() + "/BookAction.aspx", m1012public);
        if (m2953extends != null) {
            try {
                if (v0.m2736try().m2741const() && "2".equals(m2953extends.optJSONObject("data").optString("result"))) {
                    p0.m2008native(true);
                    if (((ComicCollectBean) LitePal.where("collectId = ?", str).findFirst(ComicCollectBean.class)) != null) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("loginName", v0.m2736try().m2738case());
                        LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static boolean e() {
        return Build.VERSION.SDK_INT >= 30;
    }

    /* renamed from: else  reason: not valid java name */
    public static boolean m1763else(Context context, boolean z, boolean z2, g1 g1Var) {
        int m1772instanceof = m1772instanceof();
        if (v0.m2736try().m2741const()) {
            if (m1789transient() >= m1772instanceof && !v0.m2736try().m2739catch()) {
                eg.k(context, null, ze.q(R.string.add_book_comple_password_tips_txt), ze.q(R.string.user_set_password), new m00(context), new n00(g1Var), null, false);
                return z2;
            }
        } else if (m1789transient() >= m1772instanceof) {
            ze.d0(context, null, ze.r(R.string.not_login_add_shelf_book_max, Integer.valueOf(m1772instanceof())), ze.q(R.string.login_promptly_login_txt), new o00(context, z), null, null, false);
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e3 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:28:0x0080, B:30:0x0086, B:32:0x0096, B:34:0x00b4, B:35:0x00c8, B:37:0x00d2, B:41:0x0104, B:43:0x012f, B:45:0x0135, B:46:0x013a, B:48:0x0144, B:50:0x014c, B:52:0x0153, B:55:0x0164, B:57:0x016c, B:58:0x017e, B:62:0x01a8, B:66:0x01b3, B:68:0x01e3, B:69:0x01f0, B:71:0x01f6, B:72:0x0209, B:74:0x020f, B:59:0x0190), top: B:82:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01f6 A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:28:0x0080, B:30:0x0086, B:32:0x0096, B:34:0x00b4, B:35:0x00c8, B:37:0x00d2, B:41:0x0104, B:43:0x012f, B:45:0x0135, B:46:0x013a, B:48:0x0144, B:50:0x014c, B:52:0x0153, B:55:0x0164, B:57:0x016c, B:58:0x017e, B:62:0x01a8, B:66:0x01b3, B:68:0x01e3, B:69:0x01f0, B:71:0x01f6, B:72:0x0209, B:74:0x020f, B:59:0x0190), top: B:82:0x0080 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x020f A[Catch: Exception -> 0x0225, TRY_LEAVE, TryCatch #0 {Exception -> 0x0225, blocks: (B:28:0x0080, B:30:0x0086, B:32:0x0096, B:34:0x00b4, B:35:0x00c8, B:37:0x00d2, B:41:0x0104, B:43:0x012f, B:45:0x0135, B:46:0x013a, B:48:0x0144, B:50:0x014c, B:52:0x0153, B:55:0x0164, B:57:0x016c, B:58:0x017e, B:62:0x01a8, B:66:0x01b3, B:68:0x01e3, B:69:0x01f0, B:71:0x01f6, B:72:0x0209, B:74:0x020f, B:59:0x0190), top: B:82:0x0080 }] */
    /* renamed from: extends  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1764extends(java.lang.String r17, java.lang.String r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mu.m1764extends(java.lang.String, java.lang.String, java.lang.String, boolean):boolean");
    }

    public static boolean f() {
        return Build.VERSION.SDK_INT >= 23;
    }

    /* renamed from: final  reason: not valid java name */
    public static ComicBean m1765final(String str, String str2, String str3) {
        ComicBean comicBean = new ComicBean();
        comicBean.setId(str);
        comicBean.setName(str2);
        comicBean.setImg(str3);
        return comicBean;
    }

    /* renamed from: finally  reason: not valid java name */
    public static ComicCollectBean m1766finally(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return (ComicCollectBean) LitePal.where("collectId = ?", str).findFirst(ComicCollectBean.class);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static zg0.Cdo m1767for(zg0.Cdo cdo, fy fyVar) {
        if (fyVar.f1479do.isEmpty()) {
            return cdo;
        }
        sg0.Cdo cdo2 = new sg0.Cdo();
        try {
            for (Map.Entry<String, String> entry : fyVar.f1479do.entrySet()) {
                cdo2.m2459do(entry.getKey(), entry.getValue());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        cdo.m3205new(cdo2.m2462new());
        return cdo;
    }

    public static boolean g() {
        return Build.VERSION.SDK_INT >= 26;
    }

    /* renamed from: goto  reason: not valid java name */
    public static boolean m1768goto(Context context) {
        if (v0.m2736try().m2741const() || m1789transient() < m1772instanceof()) {
            return false;
        }
        ze.d0(context, null, ze.r(R.string.not_login_add_shelf_book_max, Integer.valueOf(m1772instanceof())), ze.q(R.string.login_promptly_login_txt), new p00(context), null, null, false);
        return true;
    }

    public static boolean h(String str) {
        return (TextUtils.isEmpty(str) || LitePal.where("collectId = ?", str).count(ComicCollectBean.class) == 0) ? false : true;
    }

    public static boolean i() {
        return !TextUtils.isEmpty(a("ro.build.version.emui", ""));
    }

    /* renamed from: if  reason: not valid java name */
    public static void m1769if(String str) {
        if (v0.m2736try().m2741const()) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                o m1921for = o.m1921for();
                q00 q00Var = new q00(str);
                ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.execute(q00Var);
                    return;
                }
                return;
            }
            m1762do(str);
        }
    }

    /* renamed from: implements  reason: not valid java name */
    public static List<ComicCollectBean> m1770implements() {
        return LitePal.order(m1773interface()).find(ComicCollectBean.class);
    }

    /* renamed from: import  reason: not valid java name */
    public static void m1771import(String[] strArr) {
        for (String str : strArr) {
            try {
                LitePal.deleteAll(ComicCollectBean.class, "collectId = ?", str);
                o0.m1925else().m1928catch(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                LitePal.deleteAll(ComicChapterBean.class, "novelId = ?", str);
            } catch (Exception e2) {
                try {
                    e2.printStackTrace();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            ze.W("CATELOG_GET_COMIC_" + str);
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static int m1772instanceof() {
        return ze.m3174instanceof("SP_LOGIN_CHECK_BS_SIZE_KEY", 10);
    }

    /* renamed from: interface  reason: not valid java name */
    public static String m1773interface() {
        return da.m415break() == 0 ? "stickTime desc, saveTime desc" : "stickTime desc, lastUpdateTime desc, saveTime desc";
    }

    public static boolean j() {
        if (!(i() ? a("ro.build.version.emui", "") : "").contains("EmotionUI_3.0")) {
            String a2 = i() ? a("ro.build.version.emui", "") : "";
            if (!("EmotionUI 3".equals(a2) || a2.contains("EmotionUI_3.1"))) {
                return false;
            }
        }
        return true;
    }

    public static boolean k() {
        int intValue;
        String a2 = a("ro.build.display.id", "").toLowerCase().contains("flyme") ? a("ro.build.display.id", "") : "";
        if (a2.isEmpty()) {
            return false;
        }
        try {
            if (a2.toLowerCase().contains(com.umeng.analytics.pro.ak.x)) {
                intValue = Integer.valueOf(a2.substring(9, 10)).intValue();
            } else {
                intValue = Integer.valueOf(a2.substring(6, 7)).intValue();
            }
            return intValue >= 4;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean l() {
        return !TextUtils.isEmpty(a("ro.miui.ui.version.name", ""));
    }

    public static boolean m() {
        String a2 = l() ? a("ro.miui.ui.version.name", "") : "";
        if (a2.isEmpty()) {
            return false;
        }
        try {
            return Integer.valueOf(a2.substring(1)).intValue() >= 6;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0051  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean n(android.database.sqlite.SQLiteDatabase r9, com.apk.yx r10) {
        /*
            java.lang.String r0 = r10.f6079do
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 == 0) goto L4d
            if (r9 == 0) goto L4d
            boolean r4 = r9.isOpen()
            if (r4 != 0) goto L10
            goto L4d
        L10:
            java.lang.String r4 = "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            java.lang.String r6 = "table"
            r5[r2] = r6     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r5[r1] = r0     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            android.database.Cursor r0 = r9.rawQuery(r4, r5)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            boolean r4 = r0.moveToFirst()     // Catch: java.lang.Exception -> L31 java.lang.Throwable -> L45
            if (r4 != 0) goto L29
            r0.close()
            goto L4d
        L29:
            int r4 = r0.getInt(r2)     // Catch: java.lang.Exception -> L31 java.lang.Throwable -> L45
            r0.close()
            goto L41
        L31:
            r4 = move-exception
            goto L38
        L33:
            r9 = move-exception
            goto L47
        L35:
            r0 = move-exception
            r4 = r0
            r0 = r3
        L38:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L45
            if (r0 == 0) goto L40
            r0.close()
        L40:
            r4 = 0
        L41:
            if (r4 <= 0) goto L4d
            r0 = 1
            goto L4e
        L45:
            r9 = move-exception
            r3 = r0
        L47:
            if (r3 == 0) goto L4c
            r3.close()
        L4c:
            throw r9
        L4d:
            r0 = 0
        L4e:
            if (r0 != 0) goto L51
            return r1
        L51:
            java.lang.String r0 = "select * from "
            java.lang.StringBuilder r0 = com.apk.Cgoto.m1016super(r0)
            java.lang.String r4 = r10.f6079do
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            android.database.Cursor r9 = r9.rawQuery(r0, r3)
            if (r9 != 0) goto L67
            return r2
        L67:
            java.util.List<com.apk.vx> r0 = r10.f6080if     // Catch: java.lang.Throwable -> Laa
            int r0 = r0.size()     // Catch: java.lang.Throwable -> Laa
            int r3 = r9.getColumnCount()     // Catch: java.lang.Throwable -> Laa
            if (r0 != r3) goto La6
            r3 = 0
        L74:
            if (r3 >= r0) goto La2
            java.lang.String r4 = r9.getColumnName(r3)     // Catch: java.lang.Throwable -> Laa
            java.util.List<com.apk.vx> r5 = r10.f6080if     // Catch: java.lang.Throwable -> Laa
            int r5 = r5.size()     // Catch: java.lang.Throwable -> Laa
            r6 = 0
        L81:
            r7 = -1
            if (r6 >= r5) goto L98
            java.util.List<com.apk.vx> r8 = r10.f6080if     // Catch: java.lang.Throwable -> Laa
            java.lang.Object r8 = r8.get(r6)     // Catch: java.lang.Throwable -> Laa
            com.apk.vx r8 = (com.apk.vx) r8     // Catch: java.lang.Throwable -> Laa
            java.lang.String r8 = r8.f5204do     // Catch: java.lang.Throwable -> Laa
            boolean r8 = r8.equals(r4)     // Catch: java.lang.Throwable -> Laa
            if (r8 == 0) goto L95
            goto L99
        L95:
            int r6 = r6 + 1
            goto L81
        L98:
            r6 = -1
        L99:
            if (r6 != r7) goto L9f
            r9.close()
            return r1
        L9f:
            int r3 = r3 + 1
            goto L74
        La2:
            r9.close()
            return r2
        La6:
            r9.close()
            return r1
        Laa:
            r10 = move-exception
            r9.close()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mu.n(android.database.sqlite.SQLiteDatabase, com.apk.yx):boolean");
    }

    /* renamed from: native  reason: not valid java name */
    public static w30<ByteBuffer, Long> m1774native(FileChannel fileChannel) throws IOException, x30 {
        long size = fileChannel.size();
        if (size >= 22) {
            long j = size - 22;
            long min = Math.min(j, 65535L);
            int i = 0;
            while (true) {
                long j2 = i;
                if (j2 <= min) {
                    long j3 = j - j2;
                    ByteBuffer allocate = ByteBuffer.allocate(4);
                    fileChannel.position(j3);
                    fileChannel.read(allocate);
                    allocate.order(ByteOrder.LITTLE_ENDIAN);
                    if (allocate.getInt(0) == 101010256) {
                        ByteBuffer allocate2 = ByteBuffer.allocate(2);
                        fileChannel.position(j3 + 20);
                        fileChannel.read(allocate2);
                        allocate2.order(ByteOrder.LITTLE_ENDIAN);
                        short s = allocate2.getShort(0);
                        if (s == i) {
                            ByteBuffer allocate3 = ByteBuffer.allocate(4);
                            allocate3.order(ByteOrder.LITTLE_ENDIAN);
                            fileChannel.position((fileChannel.size() - s) - 6);
                            fileChannel.read(allocate3);
                            long j4 = allocate3.getInt(0);
                            if (j4 >= 32) {
                                fileChannel.position(j4 - 24);
                                ByteBuffer allocate4 = ByteBuffer.allocate(24);
                                fileChannel.read(allocate4);
                                allocate4.order(ByteOrder.LITTLE_ENDIAN);
                                if (allocate4.getLong(8) == 2334950737559900225L && allocate4.getLong(16) == 3617552046287187010L) {
                                    long j5 = allocate4.getLong(0);
                                    if (j5 < allocate4.capacity() || j5 > 2147483639) {
                                        throw new x30(Cgoto.m1000for("APK Signing Block size out of range: ", j5));
                                    }
                                    int i2 = (int) (8 + j5);
                                    long j6 = j4 - i2;
                                    if (j6 >= 0) {
                                        fileChannel.position(j6);
                                        ByteBuffer allocate5 = ByteBuffer.allocate(i2);
                                        fileChannel.read(allocate5);
                                        allocate5.order(ByteOrder.LITTLE_ENDIAN);
                                        long j7 = allocate5.getLong(0);
                                        if (j7 == j5) {
                                            return new w30<>(allocate5, Long.valueOf(j6));
                                        }
                                        throw new x30("APK Signing Block sizes in header and footer do not match: " + j7 + " vs " + j5);
                                    }
                                    throw new x30(Cgoto.m1000for("APK Signing Block offset out of range: ", j6));
                                }
                                throw new x30("No APK Signing Block before ZIP Central Directory");
                            }
                            throw new x30(Cgoto.m1000for("APK too small for APK Signing Block. ZIP Central Directory offset: ", j4));
                        }
                    }
                    i++;
                } else {
                    throw new IOException("ZIP End of Central Directory (EOCD) record not found");
                }
            }
        } else {
            throw new IOException("APK too small for ZIP End of Central Directory (EOCD) record");
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static <T> ArrayList<T> m1775new(T... tArr) {
        if (tArr != null) {
            ArrayList<T> arrayList = new ArrayList<>(tArr.length);
            for (T t : tArr) {
                arrayList.add(t);
            }
            return arrayList;
        }
        return null;
    }

    public static boolean o(Context context, String str) {
        if (f()) {
            if ("android.permission.MANAGE_EXTERNAL_STORAGE".equals(str)) {
                if (e()) {
                    return Environment.isExternalStorageManager();
                }
                return yu.m3118do(context, wu.f5403do);
            } else if ("android.permission.REQUEST_INSTALL_PACKAGES".equals(str)) {
                if (g()) {
                    return context.getPackageManager().canRequestPackageInstalls();
                }
                return true;
            } else if ("android.permission.SYSTEM_ALERT_WINDOW".equals(str)) {
                if (f()) {
                    return Settings.canDrawOverlays(context);
                }
                return true;
            } else if ("android.permission.ACCESS_NOTIFICATION_POLICY".equals(str)) {
                return c(context);
            } else {
                if ("android.permission.WRITE_SETTINGS".equals(str)) {
                    if (f()) {
                        return Settings.System.canWrite(context);
                    }
                    return true;
                }
                if (!d()) {
                    if ("android.permission.ACCESS_BACKGROUND_LOCATION".equals(str) || "android.permission.ACCESS_MEDIA_LOCATION".equals(str)) {
                        return true;
                    }
                    if ("android.permission.ACTIVITY_RECOGNITION".equals(str)) {
                        try {
                            return ContextCompat.checkSelfPermission(context, "android.permission.BODY_SENSORS") == 0;
                        } catch (Exception unused) {
                            return false;
                        }
                    }
                }
                if (!g()) {
                    if ("android.permission.ANSWER_PHONE_CALLS".equals(str)) {
                        try {
                            return ContextCompat.checkSelfPermission(context, "android.permission.PROCESS_OUTGOING_CALLS") == 0;
                        } catch (Exception unused2) {
                            return false;
                        }
                    } else if ("android.permission.READ_PHONE_NUMBERS".equals(str)) {
                        try {
                            return ContextCompat.checkSelfPermission(context, "android.permission.READ_PHONE_STATE") == 0;
                        } catch (Exception unused3) {
                            return false;
                        }
                    }
                }
                try {
                    return ContextCompat.checkSelfPermission(context, str) == 0;
                } catch (Exception unused4) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean p(Context context, List<String> list) {
        if (f()) {
            for (String str : list) {
                if (!o(context, str)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    /* renamed from: package  reason: not valid java name */
    public static String m1776package(String str) {
        try {
            String m1357do = new jm().m1357do(new u30(new vr(str), new vr(str)));
            return m1357do + ".0";
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: private  reason: not valid java name */
    public static File m1777private(String str) {
        try {
            String m1776package = m1776package(str);
            if (TextUtils.isEmpty(m1776package)) {
                return null;
            }
            return new File(a6.m18else().m19case(), m1776package);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* renamed from: protected  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1778protected(java.io.File r4) {
        /*
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L36
            java.lang.String r2 = "r"
            r1.<init>(r4, r2)     // Catch: java.lang.Throwable -> L25 java.io.IOException -> L36
            java.nio.channels.FileChannel r4 = r1.getChannel()     // Catch: java.lang.Throwable -> L20 java.io.IOException -> L23
            com.apk.w30 r2 = m1774native(r4)     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            A r2 = r2.f5232do     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            java.util.Map r2 = m1779public(r2)     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            r4.close()     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L46
            goto L42
        L1c:
            r2 = move-exception
            goto L29
        L1e:
            goto L38
        L20:
            r2 = move-exception
            r4 = r0
            goto L29
        L23:
            r4 = r0
            goto L38
        L25:
            r4 = move-exception
            r2 = r4
            r4 = r0
            r1 = r4
        L29:
            if (r4 == 0) goto L30
            r4.close()     // Catch: java.io.IOException -> L2f com.apk.x30 -> L48
            goto L30
        L2f:
        L30:
            if (r1 == 0) goto L35
            r1.close()     // Catch: java.io.IOException -> L35 com.apk.x30 -> L48
        L35:
            throw r2     // Catch: com.apk.x30 -> L48
        L36:
            r4 = r0
            r1 = r4
        L38:
            if (r4 == 0) goto L3f
            r4.close()     // Catch: java.io.IOException -> L3e com.apk.x30 -> L48
            goto L3f
        L3e:
        L3f:
            if (r1 == 0) goto L48
            r2 = r0
        L42:
            r1.close()     // Catch: java.lang.Throwable -> L46
            goto L49
        L46:
            goto L49
        L48:
            r2 = r0
        L49:
            if (r2 != 0) goto L4c
            goto L5b
        L4c:
            r4 = 1903654775(0x71777777, float:1.22539554E30)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.Object r4 = r2.get(r4)
            java.nio.ByteBuffer r4 = (java.nio.ByteBuffer) r4
            if (r4 != 0) goto L5d
        L5b:
            r4 = r0
            goto L73
        L5d:
            byte[] r1 = r4.array()
            int r2 = r4.arrayOffset()
            int r3 = r4.position()
            int r3 = r3 + r2
            int r4 = r4.limit()
            int r4 = r4 + r2
            byte[] r4 = java.util.Arrays.copyOfRange(r1, r3, r4)
        L73:
            if (r4 != 0) goto L76
            goto L83
        L76:
            java.lang.String r1 = new java.lang.String     // Catch: java.io.UnsupportedEncodingException -> L7f
            java.lang.String r2 = "UTF-8"
            r1.<init>(r4, r2)     // Catch: java.io.UnsupportedEncodingException -> L7f
            r0 = r1
            goto L83
        L7f:
            r4 = move-exception
            r4.printStackTrace()
        L83:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mu.m1778protected(java.io.File):java.lang.String");
    }

    /* renamed from: public  reason: not valid java name */
    public static Map<Integer, ByteBuffer> m1779public(ByteBuffer byteBuffer) throws x30 {
        if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
            int capacity = byteBuffer.capacity() - 24;
            if (capacity >= 8) {
                int capacity2 = byteBuffer.capacity();
                if (capacity <= byteBuffer.capacity()) {
                    int limit = byteBuffer.limit();
                    int position = byteBuffer.position();
                    int i = 0;
                    try {
                        byteBuffer.position(0);
                        byteBuffer.limit(capacity);
                        byteBuffer.position(8);
                        ByteBuffer slice = byteBuffer.slice();
                        slice.order(byteBuffer.order());
                        byteBuffer.position(0);
                        byteBuffer.limit(limit);
                        byteBuffer.position(position);
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        while (slice.hasRemaining()) {
                            i++;
                            if (slice.remaining() >= 8) {
                                long j = slice.getLong();
                                if (j >= 4 && j <= 2147483647L) {
                                    int i2 = (int) j;
                                    int position2 = slice.position() + i2;
                                    if (i2 <= slice.remaining()) {
                                        Integer valueOf = Integer.valueOf(slice.getInt());
                                        int i3 = i2 - 4;
                                        if (i3 >= 0) {
                                            int limit2 = slice.limit();
                                            int position3 = slice.position();
                                            int i4 = i3 + position3;
                                            if (i4 >= position3 && i4 <= limit2) {
                                                slice.limit(i4);
                                                try {
                                                    ByteBuffer slice2 = slice.slice();
                                                    slice2.order(slice.order());
                                                    slice.position(i4);
                                                    slice.limit(limit2);
                                                    linkedHashMap.put(valueOf, slice2);
                                                    slice.position(position2);
                                                } catch (Throwable th) {
                                                    slice.limit(limit2);
                                                    throw th;
                                                }
                                            } else {
                                                throw new BufferUnderflowException();
                                            }
                                        } else {
                                            throw new IllegalArgumentException(Cgoto.m1003implements("size: ", i3));
                                        }
                                    } else {
                                        throw new x30("APK Signing Block entry #" + i + " size out of range: " + i2 + ", available: " + slice.remaining());
                                    }
                                } else {
                                    throw new x30("APK Signing Block entry #" + i + " size out of range: " + j);
                                }
                            } else {
                                throw new x30(Cgoto.m1003implements("Insufficient data to read size of APK Signing Block entry #", i));
                            }
                        }
                        return linkedHashMap;
                    } catch (Throwable th2) {
                        byteBuffer.position(0);
                        byteBuffer.limit(limit);
                        byteBuffer.position(position);
                        throw th2;
                    }
                }
                throw new IllegalArgumentException(Cgoto.m1018synchronized("end > capacity: ", capacity, " > ", capacity2));
            }
            throw new IllegalArgumentException(Cgoto.m1018synchronized("end < start: ", capacity, " < ", 8));
        }
        throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
    }

    public static boolean q(Activity activity, String str) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (!f() || r(str)) {
            return false;
        }
        if (!d()) {
            if ("android.permission.ACCESS_BACKGROUND_LOCATION".equals(str) || "android.permission.ACCESS_MEDIA_LOCATION".equals(str)) {
                return false;
            }
            if ("android.permission.ACTIVITY_RECOGNITION".equals(str)) {
                if (ContextCompat.checkSelfPermission(activity, "android.permission.BODY_SENSORS") == -1) {
                    z4 = true;
                    return z4 && !ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
                }
                z4 = false;
                if (z4) {
                    return false;
                }
            }
        }
        if (!g()) {
            if ("android.permission.ANSWER_PHONE_CALLS".equals(str)) {
                if (ContextCompat.checkSelfPermission(activity, "android.permission.PROCESS_OUTGOING_CALLS") == -1) {
                    z2 = true;
                    return z2 && !ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
                }
                z2 = false;
                if (z2) {
                    return false;
                }
            } else if ("android.permission.READ_PHONE_NUMBERS".equals(str)) {
                if (ContextCompat.checkSelfPermission(activity, "android.permission.READ_PHONE_STATE") == -1) {
                    z3 = true;
                    return z3 && !ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
                }
                z3 = false;
                if (z3) {
                    return false;
                }
            }
        }
        if (ContextCompat.checkSelfPermission(activity, str) == -1) {
            z = true;
            return z && !ActivityCompat.shouldShowRequestPermissionRationale(activity, str);
        }
        z = false;
        if (z) {
            return false;
        }
    }

    public static boolean r(String str) {
        return "android.permission.MANAGE_EXTERNAL_STORAGE".equals(str) || "android.permission.REQUEST_INSTALL_PACKAGES".equals(str) || "android.permission.SYSTEM_ALERT_WINDOW".equals(str) || "android.permission.ACCESS_NOTIFICATION_POLICY".equals(str) || "android.permission.WRITE_SETTINGS".equals(str);
    }

    /* renamed from: return  reason: not valid java name */
    public static Intent m1780return(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        StringBuilder m1016super = Cgoto.m1016super("package:");
        m1016super.append(context.getPackageName());
        intent.setData(Uri.parse(m1016super.toString()));
        return intent;
    }

    public static ComicBean s(JSONObject jSONObject) {
        ComicBean comicBean = new ComicBean();
        try {
            comicBean.setName(jSONObject.optString("BookName"));
            comicBean.setId(jSONObject.optString("BookId"));
            comicBean.setImg(jSONObject.optString("BookImage"));
            comicBean.setAuthor(jSONObject.optString("Author"));
            comicBean.setCName(jSONObject.optString("CategoryName"));
            comicBean.setDesc(jSONObject.optString("Description"));
            comicBean.setScore(Float.parseFloat(jSONObject.optString("Score")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return comicBean;
    }

    /* renamed from: static  reason: not valid java name */
    public static String m1781static(String str) {
        ComicCollectBean m1766finally = m1766finally(str);
        if (m1766finally != null) {
            return m1766finally.getFirstChapterId();
        }
        return null;
    }

    /* renamed from: strictfp  reason: not valid java name */
    public static List<String> m1782strictfp(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                return m1775new(strArr);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return null;
    }

    /* renamed from: super  reason: not valid java name */
    public static boolean m1783super(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(str);
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            file.delete();
        }
        return file.mkdirs();
    }

    /* renamed from: switch  reason: not valid java name */
    public static String m1784switch(Context context) {
        try {
            return ze.m3190throws(ze.m3180protected(new File(a6.m18else().m19case())));
        } catch (Exception e) {
            e.printStackTrace();
            return "0B";
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static List<ComicCollectBean> m1785synchronized() {
        return LitePal.order("saveTime desc").where("loginName != ? and readChapterId != ?", "", "").find(ComicCollectBean.class);
    }

    public static boolean t(String[] strArr) {
        try {
            if (!v0.m2736try().m2741const()) {
                m1771import(strArr);
            } else {
                int length = strArr.length;
                String str = "";
                int i = 0;
                while (i < length) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(strArr[i]);
                    sb.append(i != length + (-1) ? "," : "");
                    str = sb.toString();
                    i++;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("action", "removebookcase");
                hashMap.put("bookIds", str);
                JSONObject m2953extends = x4.m2953extends(p0.m2014try() + "/BookAction.aspx", hashMap);
                if (m2953extends == null || m2953extends.optInt(NotificationCompat.CATEGORY_STATUS, -1) != 1) {
                    return false;
                }
                p0.m2008native(true);
                m1771import(strArr);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static void m1786this(float f, float f2, float f3) {
        if (f >= f2) {
            throw new IllegalArgumentException("Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value");
        }
        if (f2 >= f3) {
            throw new IllegalArgumentException("Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[Catch: UnsupportedEncodingException -> 0x0077, TryCatch #0 {UnsupportedEncodingException -> 0x0077, blocks: (B:2:0x0000, B:6:0x0014, B:9:0x001b, B:11:0x0024, B:12:0x002c, B:14:0x0032, B:15:0x0042, B:17:0x0048, B:18:0x0069, B:10:0x0021), top: B:23:0x0000 }] */
    /* renamed from: throw  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1787throw(java.lang.String r6, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r7) {
        /*
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.io.UnsupportedEncodingException -> L77
            r0.<init>()     // Catch: java.io.UnsupportedEncodingException -> L77
            r0.append(r6)     // Catch: java.io.UnsupportedEncodingException -> L77
            r1 = 38
            int r1 = r6.indexOf(r1)     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r2 = "&"
            if (r1 > 0) goto L21
            r1 = 63
            int r1 = r6.indexOf(r1)     // Catch: java.io.UnsupportedEncodingException -> L77
            if (r1 <= 0) goto L1b
            goto L21
        L1b:
            java.lang.String r1 = "?"
            r0.append(r1)     // Catch: java.io.UnsupportedEncodingException -> L77
            goto L24
        L21:
            r0.append(r2)     // Catch: java.io.UnsupportedEncodingException -> L77
        L24:
            java.util.Set r7 = r7.entrySet()     // Catch: java.io.UnsupportedEncodingException -> L77
            java.util.Iterator r7 = r7.iterator()     // Catch: java.io.UnsupportedEncodingException -> L77
        L2c:
            boolean r1 = r7.hasNext()     // Catch: java.io.UnsupportedEncodingException -> L77
            if (r1 == 0) goto L69
            java.lang.Object r1 = r7.next()     // Catch: java.io.UnsupportedEncodingException -> L77
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.Object r3 = r1.getValue()     // Catch: java.io.UnsupportedEncodingException -> L77
            java.util.List r3 = (java.util.List) r3     // Catch: java.io.UnsupportedEncodingException -> L77
            java.util.Iterator r3 = r3.iterator()     // Catch: java.io.UnsupportedEncodingException -> L77
        L42:
            boolean r4 = r3.hasNext()     // Catch: java.io.UnsupportedEncodingException -> L77
            if (r4 == 0) goto L2c
            java.lang.Object r4 = r3.next()     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r5 = "UTF-8"
            java.lang.String r4 = java.net.URLEncoder.encode(r4, r5)     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.Object r5 = r1.getKey()     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.io.UnsupportedEncodingException -> L77
            r0.append(r5)     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r5 = "="
            r0.append(r5)     // Catch: java.io.UnsupportedEncodingException -> L77
            r0.append(r4)     // Catch: java.io.UnsupportedEncodingException -> L77
            r0.append(r2)     // Catch: java.io.UnsupportedEncodingException -> L77
            goto L42
        L69:
            int r7 = r0.length()     // Catch: java.io.UnsupportedEncodingException -> L77
            int r7 = r7 + (-1)
            r0.deleteCharAt(r7)     // Catch: java.io.UnsupportedEncodingException -> L77
            java.lang.String r6 = r0.toString()     // Catch: java.io.UnsupportedEncodingException -> L77
            return r6
        L77:
            r7 = move-exception
            r7.printStackTrace()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mu.m1787throw(java.lang.String, java.util.Map):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @androidx.annotation.Nullable
    /* renamed from: throws  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m1788throws(@androidx.annotation.NonNull android.content.Context r5) {
        /*
            r0 = 0
            android.content.pm.ApplicationInfo r5 = r5.getApplicationInfo()     // Catch: java.lang.Throwable -> Lb
            if (r5 != 0) goto L8
            goto Lb
        L8:
            java.lang.String r5 = r5.sourceDir     // Catch: java.lang.Throwable -> Lb
            goto Lc
        Lb:
            r5 = r0
        Lc:
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 == 0) goto L13
            goto L4a
        L13:
            java.io.File r1 = new java.io.File
            r1.<init>(r5)
            java.lang.String r5 = m1778protected(r1)     // Catch: org.json.JSONException -> L43
            if (r5 != 0) goto L1f
            goto L47
        L1f:
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L43
            r1.<init>(r5)     // Catch: org.json.JSONException -> L43
            java.util.Iterator r5 = r1.keys()     // Catch: org.json.JSONException -> L43
            java.util.HashMap r2 = new java.util.HashMap     // Catch: org.json.JSONException -> L43
            r2.<init>()     // Catch: org.json.JSONException -> L43
        L2d:
            boolean r3 = r5.hasNext()     // Catch: org.json.JSONException -> L43
            if (r3 == 0) goto L48
            java.lang.Object r3 = r5.next()     // Catch: org.json.JSONException -> L43
            java.lang.String r3 = r3.toString()     // Catch: org.json.JSONException -> L43
            java.lang.String r4 = r1.getString(r3)     // Catch: org.json.JSONException -> L43
            r2.put(r3, r4)     // Catch: org.json.JSONException -> L43
            goto L2d
        L43:
            r5 = move-exception
            r5.printStackTrace()
        L47:
            r2 = r0
        L48:
            if (r2 != 0) goto L4c
        L4a:
            r5 = r0
            goto L5c
        L4c:
            java.lang.String r5 = "channel"
            java.lang.Object r1 = r2.get(r5)
            java.lang.String r1 = (java.lang.String) r1
            r2.remove(r5)
            com.apk.v30 r5 = new com.apk.v30
            r5.<init>(r1, r2)
        L5c:
            if (r5 != 0) goto L5f
            goto L61
        L5f:
            java.lang.String r0 = r5.f5007do
        L61:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.mu.m1788throws(android.content.Context):java.lang.String");
    }

    /* renamed from: transient  reason: not valid java name */
    public static int m1789transient() {
        return LitePal.count(ComicCollectBean.class);
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1790try(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("stickTime", "");
        contentValues.put("saveTime", str2);
        LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", str);
    }

    public static void u(Runnable runnable) {
        tw.Cif.f4772do.f4769if.post(runnable);
    }

    public static synchronized void v(ComicBean comicBean, String str, String str2, String str3, int i, boolean z, boolean z2) {
        synchronized (mu.class) {
            try {
                ComicCollectBean m3171if = ze.m3171if(comicBean, i, str2, str, str3);
                if (da.m433super(comicBean.getId())) {
                    m3171if.setMax(LitePal.where("novelId = ? and url != ?", comicBean.getId(), "ROLLNAME_LAYOUT_KEY").count(ComicChapterBean.class));
                }
                try {
                    if (m1766finally(comicBean.getId()) == null && m3171if.save()) {
                        if (z2) {
                            ToastUtils.show((CharSequence) ze.q(R.string.add_bookshlef_txt));
                        }
                        if (z) {
                            m1769if(m3171if.getCollectId());
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ze.Z(true);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public static List<ComicCollectBean> m1791volatile() {
        return LitePal.where("readChapterId = ? and addTime < ?", "", Math.abs(System.currentTimeMillis() - 432000000) + "").find(ComicCollectBean.class);
    }

    public static void w(ComicBean comicBean, boolean z) {
        v(comicBean, "", "", "", 1, z, true);
    }

    /* renamed from: while  reason: not valid java name */
    public static boolean m1792while(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            file.delete();
            return true;
        } else if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    m1792while(file2);
                }
            }
            file.delete();
            return true;
        } else {
            return true;
        }
    }

    public static synchronized boolean x(ComicCollectBean comicCollectBean) {
        synchronized (mu.class) {
            try {
                if (m1766finally(comicCollectBean.getCollectId()) == null) {
                    comicCollectBean.setAddTime(System.currentTimeMillis());
                    comicCollectBean.save();
                }
                ze.Y(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public static void y(boolean z, String str, String str2, String str3, String str4, String str5, String str6, boolean z2, String str7, String str8) {
        ComicChapterBean comicChapterBean = (ComicChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ComicChapterBean.class);
        if (comicChapterBean != null) {
            ContentValues contentValues = new ContentValues();
            if (!TextUtils.isEmpty(str)) {
                contentValues.put("novelId", str);
                comicChapterBean.setNovelId(str);
            }
            if (!TextUtils.isEmpty(str2) && !"-2".equals(str2)) {
                contentValues.put("oid", str2);
                comicChapterBean.setOid(str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                contentValues.put("name", str3);
                comicChapterBean.setName(str3);
            }
            if (!TextUtils.isEmpty(str4) && !"-2".equals(str4)) {
                contentValues.put("pid", str4);
                comicChapterBean.setPid(str4);
            }
            if (!TextUtils.isEmpty(str5) && !"-2".equals(str5)) {
                contentValues.put("nid", str5);
                comicChapterBean.setNid(str5);
            }
            if (!TextUtils.isEmpty(str6)) {
                contentValues.put("content", str6);
                comicChapterBean.setContent(str6);
            }
            if (z) {
                contentValues.put("hasContent", Boolean.valueOf(z2));
                comicChapterBean.setHasContent(z2);
            }
            if (!TextUtils.isEmpty(str7)) {
                contentValues.put("HostKey", str7);
                comicChapterBean.setHostKey(str7);
            }
            if (!TextUtils.isEmpty(str8)) {
                contentValues.put("need_share", str8);
                comicChapterBean.setNeed_share(str8);
            }
            LitePal.updateAll(ComicChapterBean.class, contentValues, "novelId = ? and oid = ?", str, str2);
        } else {
            comicChapterBean = new ComicChapterBean();
            comicChapterBean.setNovelId(str);
            comicChapterBean.setOid(str2);
            comicChapterBean.setName(str3);
            comicChapterBean.setUrl("");
            comicChapterBean.setPid(str4);
            comicChapterBean.setNid(str5);
            comicChapterBean.setContent(str6);
            comicChapterBean.setHasContent(z2);
            comicChapterBean.setHostKey(str7);
            comicChapterBean.setNeed_share(str8);
            comicChapterBean.save();
        }
        da.m419else().m441do(comicChapterBean);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0035: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:23:0x0035 */
    public static byte[] z(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        Closeable closeable;
        Closeable closeable2 = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
            }
            try {
                objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream.writeObject(obj);
                    objectOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    m1758class(objectOutputStream);
                    m1758class(byteArrayOutputStream);
                    return byteArray;
                } catch (IOException e) {
                    e = e;
                    e.printStackTrace();
                    m1758class(objectOutputStream);
                    m1758class(byteArrayOutputStream);
                    return null;
                }
            } catch (IOException e2) {
                e = e2;
                objectOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                m1758class(closeable2);
                m1758class(byteArrayOutputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            byteArrayOutputStream = null;
            objectOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }
}
