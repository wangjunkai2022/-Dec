package com.apk;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.CheckBox;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompatJellybean;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.multidex.MultiDexExtractor;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import androidx.viewpager.widget.ViewPager;
import com.apk.h40;
import com.biquge.ebook.app.adapter.HomeMenuAdapter;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookElement;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.HomenavmenuBean;
import com.biquge.ebook.app.bean.SearchPlatform;
import com.biquge.ebook.app.bean.SkinModel;
import com.biquge.ebook.app.bean.StoreConfigBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.biquge.ebook.app.ui.activity.ForgetPasswordActivity;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.data.bean.ComicElement;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.comment.sdk.bean.TrSourceType;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.nio.channels.FileChannel;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: AppUtils.java */
/* loaded from: classes8.dex */
public final class ze {

    /* renamed from: do  reason: not valid java name */
    public static int f6179do;

    public static void A(Context context, File file) {
        if (context == null || !file.exists()) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT >= 24) {
            Uri uriForFile = FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file);
            intent.addFlags(1);
            intent.addFlags(268435456);
            intent.setDataAndType(uriForFile, AdBaseConstants.MIME_APK);
        } else {
            intent.addFlags(268435456);
            intent.setDataAndType(Uri.fromFile(file), AdBaseConstants.MIME_APK);
        }
        context.startActivity(intent);
    }

    public static boolean B() {
        return m3179private("IS_ADDBOOK_TO_SHELF", false);
    }

    public static boolean C() {
        return m3179private("IS_ADDBOOK_TO_SHELF_COMIC", false);
    }

    public static boolean D(String str) {
        return tt.f4763do.containsKey(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a3, code lost:
        if ("google_sdk".equals(android.os.Build.PRODUCT) != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0013, code lost:
        if (android.text.TextUtils.isEmpty(r3.getName()) != false) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x001e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean E() {
        /*
            Method dump skipped, instructions count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.E():boolean");
    }

    public static boolean F() {
        try {
            Class<?> cls = Class.forName("com.huawei.system.BuildEx");
            return "harmony".equalsIgnoreCase(cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]).toString());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean G(String str) {
        return (TextUtils.isEmpty(str) || AppContext.f6392case.getPackageManager().getLaunchIntentForPackage(str) == null) ? false : true;
    }

    public static boolean H(View view) {
        Rect rect = new Rect();
        view.getWindowVisibleDisplayFrame(rect);
        return ((float) (view.getBottom() - rect.bottom)) > view.getResources().getDisplayMetrics().density * 100.0f;
    }

    public static boolean I(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith(".txt") || str.endsWith(".TXT");
    }

    public static boolean J(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.endsWith(MultiDexExtractor.EXTRACTED_SUFFIX) || str.endsWith(".ZIP");
    }

    public static void K(RecyclerView recyclerView, int i) {
        try {
            int childLayoutPosition = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(0));
            int childLayoutPosition2 = recyclerView.getChildLayoutPosition(recyclerView.getChildAt(recyclerView.getChildCount() - 1));
            if (i < childLayoutPosition) {
                recyclerView.smoothScrollToPosition(i);
            } else if (i <= childLayoutPosition2) {
                int i2 = i - childLayoutPosition;
                if (i2 >= 0 && i2 < recyclerView.getChildCount()) {
                    recyclerView.smoothScrollBy(0, recyclerView.getChildAt(i2).getTop());
                }
            } else {
                recyclerView.smoothScrollToPosition(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void L(Activity activity) {
        if (H(activity.getWindow().getDecorView().getRootView())) {
            return;
        }
        ((InputMethodManager) activity.getSystemService("input_method")).toggleSoftInput(2, 0);
    }

    public static void M(Context context) {
        Intent intent = new Intent(context, LoginActivity.class);
        if (!TextUtils.isEmpty(null)) {
            intent.putExtra("username", (String) null);
        }
        if (!TextUtils.isEmpty(null)) {
            intent.putExtra("password", (String) null);
        }
        context.startActivity(intent);
    }

    public static void N(Context context) {
        String q = q(R.string.user_set_password);
        Intent intent = new Intent(context, ForgetPasswordActivity.class);
        if (!TextUtils.isEmpty(q)) {
            intent.putExtra(NotificationCompatJellybean.KEY_TITLE, q);
        }
        context.startActivity(intent);
    }

    public static void O(String str, boolean z) {
        tt.f4763do.putBoolean(str, z);
    }

    public static void P(String str, float f) {
        tt.f4763do.putFloat(str, f);
    }

    public static void Q(String str, int i) {
        tt.f4763do.putInt(str, i);
    }

    public static void R(String str, long j) {
        tt.f4763do.putLong(str, j);
    }

    public static void S(String str, String str2) {
        tt.f4763do.putString(str, str2);
    }

    public static byte[] T(String str) {
        byte[] bArr = null;
        if (str != null && str.length() > 0) {
            try {
                try {
                    AssetManager assets = AppContext.f6392case.getAssets();
                    InputStream open = assets.open("uploader" + str);
                    bArr = new byte[open.available()];
                    open.read(bArr);
                    open.close();
                    return bArr;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } catch (Throwable unused) {
            }
        }
        return bArr;
    }

    public static byte[] U(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static void V() {
        mf.m1712do("refresh_shelf_book", null);
    }

    public static void W(String str) {
        if (tt.f4763do.containsKey(str)) {
            tt.f4763do.remove(str);
        }
    }

    public static int X(int i, float f) {
        return Color.argb((int) (Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    public static void Y(boolean z) {
        tt.f4763do.putBoolean("IS_ADDBOOK_TO_SHELF", z);
    }

    public static void Z(boolean z) {
        tt.f4763do.putBoolean("IS_ADDBOOK_TO_SHELF_COMIC", z);
    }

    public static long a(String str, long j) {
        return tt.f4763do.getLong(str, j);
    }

    public static void a0(ViewPager viewPager, int i) {
        Field field;
        try {
            try {
                field = ViewPager.class.getDeclaredField("mRestoredCurItem");
            } catch (NoSuchFieldException e) {
                e.printStackTrace();
                field = null;
            }
            field.setAccessible(true);
            try {
                field.set(viewPager, Integer.valueOf(i));
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            }
        } catch (SecurityException e3) {
            e3.printStackTrace();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public static String m3156abstract() {
        return m3162continue(AppContext.f6392case);
    }

    public static String b() {
        return ys.m3116if().f3937else;
    }

    public static void b0(Context context, String str, ft ftVar, dt dtVar, boolean z) {
        eg.k(context, null, str, null, ftVar, dtVar, null, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* renamed from: break  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m3157break(java.io.File r6, java.io.File r7) throws java.lang.Exception {
        /*
            r0 = 0
            boolean r1 = r7.exists()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            if (r1 != 0) goto La
            r7.createNewFile()     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
        La:
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L5d java.lang.Exception -> L62
            java.io.BufferedInputStream r6 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L59
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L59
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L50
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L50
            java.io.BufferedOutputStream r7 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            r7.<init>(r2)     // Catch: java.lang.Throwable -> L3e java.lang.Exception -> L45
            r0 = 5120(0x1400, float:7.175E-42)
            byte[] r0 = new byte[r0]     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L80
        L22:
            int r3 = r6.read(r0)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L80
            r4 = -1
            if (r3 == r4) goto L2e
            r4 = 0
            r7.write(r0, r4, r3)     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L80
            goto L22
        L2e:
            r7.flush()     // Catch: java.lang.Exception -> L3c java.lang.Throwable -> L80
            r6.close()
            r7.close()
            r2.close()
            goto L7c
        L3c:
            r0 = move-exception
            goto L68
        L3e:
            r7 = move-exception
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
            goto L84
        L45:
            r7 = move-exception
            r5 = r0
            r0 = r7
            r7 = r5
            goto L68
        L4a:
            r7 = move-exception
            r2 = r0
            r0 = r6
            r6 = r7
            r7 = r2
            goto L84
        L50:
            r7 = move-exception
            r2 = r0
            r0 = r7
            r7 = r2
            goto L68
        L55:
            r6 = move-exception
            r7 = r0
            r2 = r7
            goto L84
        L59:
            r6 = move-exception
            r7 = r0
            r2 = r7
            goto L66
        L5d:
            r6 = move-exception
            r7 = r0
            r1 = r7
            r2 = r1
            goto L84
        L62:
            r6 = move-exception
            r7 = r0
            r1 = r7
            r2 = r1
        L66:
            r0 = r6
            r6 = r2
        L68:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L80
            if (r6 == 0) goto L70
            r6.close()
        L70:
            if (r7 == 0) goto L75
            r7.close()
        L75:
            if (r2 == 0) goto L7a
            r2.close()
        L7a:
            if (r1 == 0) goto L7f
        L7c:
            r1.close()
        L7f:
            return
        L80:
            r0 = move-exception
            r5 = r0
            r0 = r6
            r6 = r5
        L84:
            if (r0 == 0) goto L89
            r0.close()
        L89:
            if (r7 == 0) goto L8e
            r7.close()
        L8e:
            if (r2 == 0) goto L93
            r2.close()
        L93:
            if (r1 == 0) goto L98
            r1.close()
        L98:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.m3157break(java.io.File, java.io.File):void");
    }

    public static String c() {
        return ys.m3116if().f3935case;
    }

    public static void c0(Context context, String str, ft ftVar, boolean z) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            eg.j(context, str, ftVar, z, false);
            return;
        }
        try {
            ((Activity) context).runOnUiThread(new cf(context, str, ftVar, z));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public static void m3158case() {
        try {
            ClipboardManager clipboardManager = (ClipboardManager) AppContext.f6392case.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(clipboardManager.getPrimaryClip());
                clipboardManager.setText(null);
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static boolean m3159catch(Context context, String str, String str2) {
        try {
            String[] list = context.getAssets().list(str);
            if (list.length > 0) {
                new File(str2).mkdirs();
                for (String str3 : list) {
                    m3159catch(context, str + "/" + str3, str2 + "/" + str3);
                }
            } else {
                InputStream open = context.getAssets().open(str);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(str2));
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = open.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.flush();
                open.close();
                fileOutputStream.close();
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: class  reason: not valid java name */
    public static void m3160class(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            ClipboardManager clipboardManager = (ClipboardManager) AppContext.f6392case.getSystemService("clipboard");
            clipboardManager.setText(str.trim());
            clipboardManager.setPrimaryClip(ClipData.newPlainText(null, str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: const  reason: not valid java name */
    public static String m3161const(File file) {
        try {
            if (file.getParentFile().exists()) {
                file.createNewFile();
                return file.getAbsolutePath();
            }
            new File(file.getParentFile().getAbsolutePath()).mkdirs();
            file.createNewFile();
            return "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: continue  reason: not valid java name */
    public static String m3162continue(Context context) {
        String str;
        try {
            str = mu.m1788throws(context.getApplicationContext());
        } catch (Exception e) {
            e.printStackTrace();
            str = "unknown";
        }
        return TextUtils.isEmpty(str) ? "default" : str;
    }

    public static List<SearchPlatform> d(hf hfVar) {
        hf hfVar2 = hf.COMIC;
        hf hfVar3 = hf.BOOK;
        String str = hfVar3.toString();
        String str2 = hfVar2.toString();
        ArrayList arrayList = new ArrayList();
        if (hfVar == hfVar3) {
            arrayList.add(new SearchPlatform(q(R.string.ebook_txt), str));
        } else if (hfVar == hfVar2) {
            arrayList.add(new SearchPlatform(q(R.string.comic_txt), str2));
        } else if (hfVar == hf.BOOK_COMIC) {
            arrayList.add(new SearchPlatform(q(R.string.ebook_txt), str));
            arrayList.add(new SearchPlatform(q(R.string.comic_txt), str2));
        } else if (hfVar == hf.COMIC_BOOK) {
            arrayList.add(new SearchPlatform(q(R.string.comic_txt), str2));
            arrayList.add(new SearchPlatform(q(R.string.ebook_txt), str));
        }
        return arrayList;
    }

    public static void d0(Context context, String str, String str2, String str3, ft ftVar, dt dtVar, et etVar, boolean z) {
        eg.l(context, str, str2, str3, ftVar, q(R.string.main_cancel), null, etVar, z);
    }

    /* renamed from: default  reason: not valid java name */
    public static hf m3163default(String str) {
        hf hfVar = hf.BOOK_COMIC;
        if ("xs".equals(str)) {
            return hf.BOOK;
        }
        if ("mh".equals(str)) {
            return hf.COMIC;
        }
        if ("xs_mh".equals(str)) {
            return hfVar;
        }
        if ("mh_xs".equals(str)) {
            return hf.COMIC_BOOK;
        }
        hf hfVar2 = bf.f301if;
        return hfVar;
    }

    /* renamed from: do  reason: not valid java name */
    public static CollectBook m3164do(Book book, int i, String str, String str2, String str3) {
        CollectBook collectBook = new CollectBook();
        if (book != null) {
            collectBook.setCollectId(String.valueOf(book.getId()));
            collectBook.setName(book.getName());
            collectBook.setReadChapterId(str2);
            collectBook.setReadChapterName(str3);
            collectBook.setReadPage(i);
            collectBook.setIcon(book.getImg());
            collectBook.setLastCapterName(book.getLastChapter());
            collectBook.setLastCapterId(book.getLastChapterId());
            collectBook.setFirstChapterId(book.getFirstChapterId());
            collectBook.setLastUpdateTime(book.getUpdateTime());
            collectBook.setSaveTime(String.valueOf(System.currentTimeMillis()));
            collectBook.setNew(false);
            collectBook.setAuthor(book.getAuthor());
            collectBook.setStickTime("");
            collectBook.setDesc(book.getDesc());
            collectBook.setBookStatus(book.getBookStatus());
            collectBook.setBookType(book.getCName());
            collectBook.setLoginName(str);
            collectBook.setAddTime(System.currentTimeMillis());
            collectBook.setMajorCharacters(book.getMajorCharacters());
            collectBook.setTagJson(book.getTagJson());
            if (book.isWebSite()) {
                collectBook.setWebSite(book.isWebSite());
                collectBook.setExternalUrl(book.getExternalUrl());
                collectBook.setChapterUrl(book.getChapterUrl());
            }
        }
        return collectBook;
    }

    public static String[] e() {
        String[] strArr = new String[2];
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK_COMIC) {
            strArr[0] = q(R.string.ebook_txt);
            strArr[1] = q(R.string.comic_txt);
        } else if (hfVar == hf.COMIC_BOOK) {
            strArr[0] = q(R.string.comic_txt);
            strArr[1] = q(R.string.ebook_txt);
        }
        return strArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:88:0x015a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void e0(java.lang.String r18, java.lang.String r19) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.e0(java.lang.String, java.lang.String):void");
    }

    /* renamed from: else  reason: not valid java name */
    public static void m3165else(RecyclerView recyclerView) {
        try {
            SimpleItemAnimator simpleItemAnimator = (SimpleItemAnimator) recyclerView.getItemAnimator();
            if (simpleItemAnimator != null) {
                simpleItemAnimator.setAddDuration(0L);
                simpleItemAnimator.setChangeDuration(0L);
                simpleItemAnimator.setMoveDuration(0L);
                simpleItemAnimator.setRemoveDuration(0L);
                simpleItemAnimator.setSupportsChangeAnimations(false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: extends  reason: not valid java name */
    public static String m3166extends() {
        String str = ys.m3114do().f3746do;
        return str == null ? "" : str;
    }

    public static String f(String str) {
        try {
            return str.substring(0, str.lastIndexOf("."));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static void f0(LinkedList<String> linkedList, LinkedList<String> linkedList2, String str, int i, String str2) {
        try {
            int i2 = 5000;
            if (str.length() <= 5000) {
                i2 = str.length();
            }
            String substring = str.substring(0, i2);
            if (TextUtils.isEmpty(substring)) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append("_");
            int i3 = i + 1;
            sb.append(i3);
            linkedList.add(sb.toString());
            linkedList2.add(substring);
            String substring2 = str.substring(i2);
            if (TextUtils.isEmpty(substring2)) {
                return;
            }
            f0(linkedList, linkedList2, substring2, i3, str2);
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        } catch (StackOverflowError e3) {
            e3.printStackTrace();
        }
    }

    /* renamed from: final  reason: not valid java name */
    public static <T> List<T> m3167final(List<T> list, int i) {
        if (list == null || i == 0) {
            return null;
        }
        if (i > list.size()) {
            i = list.size();
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        while (hashMap.size() < i) {
            int random = (int) (Math.random() * list.size());
            if (!hashMap.containsKey(Integer.valueOf(random))) {
                hashMap.put(Integer.valueOf(random), "");
                arrayList.add(list.get(random));
            }
        }
        return arrayList;
    }

    /* renamed from: finally  reason: not valid java name */
    public static String m3168finally() {
        String str = ys.m3114do().f3748if;
        return str == null ? "" : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0077 A[Catch: Exception -> 0x00b4, TryCatch #4 {Exception -> 0x00b4, blocks: (B:29:0x0073, B:31:0x0077, B:34:0x0086, B:37:0x0091), top: B:60:0x0073 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* renamed from: for  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void m3169for(android.content.Context r7, java.io.File r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.io.File r12) {
        /*
            if (r8 != 0) goto L3
            return
        L3:
            java.io.File r7 = new java.io.File
            java.lang.String r0 = r8.getAbsolutePath()
            java.lang.String r1 = "info.html"
            r7.<init>(r0, r1)
            boolean r0 = r7.exists()
            r2 = 0
            if (r0 == 0) goto L4e
            java.lang.String r0 = r7.getAbsolutePath()
            java.lang.String r0 = m3184strictfp(r0)
            java.lang.String r7 = r7.getAbsolutePath()
            java.lang.String r7 = m3191transient(r7, r0)
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 != 0) goto L4e
            java.lang.Class<com.biquge.ebook.app.bean.Book> r0 = com.biquge.ebook.app.bean.Book.class
            java.lang.Object r0 = m3189throw(r0, r7)     // Catch: java.lang.Exception -> L4a
            com.biquge.ebook.app.bean.Book r0 = (com.biquge.ebook.app.bean.Book) r0     // Catch: java.lang.Exception -> L4a
            if (r0 == 0) goto L48
            java.lang.String r3 = r0.getId()     // Catch: java.lang.Exception -> L45
            java.lang.String r3 = com.apk.w.m2864while(r3)     // Catch: java.lang.Exception -> L45
            java.lang.String r4 = com.apk.kg.m1501try()     // Catch: java.lang.Exception -> L45
            com.apk.Celse.m647else(r3, r7, r4, r2)     // Catch: java.lang.Exception -> L45
            goto L48
        L45:
            r7 = move-exception
            r2 = r0
            goto L4b
        L48:
            r2 = r0
            goto L4e
        L4a:
            r7 = move-exception
        L4b:
            r7.printStackTrace()
        L4e:
            java.lang.String r7 = r8.getName()
            r0 = 0
            if (r2 == 0) goto L6a
            java.lang.String r3 = r2.getId()     // Catch: java.lang.Exception -> L66
            boolean r3 = com.apk.n2.f(r3)     // Catch: java.lang.Exception -> L66
            if (r3 != 0) goto L6a
            com.apk.n2.u(r2, r0)     // Catch: java.lang.Exception -> L66
            V()     // Catch: java.lang.Exception -> L66
            goto L6a
        L66:
            r2 = move-exception
            r2.printStackTrace()
        L6a:
            java.io.File[] r8 = r8.listFiles()
            if (r8 == 0) goto Lb8
            int r2 = r8.length
            if (r2 <= 0) goto Lb8
            int r2 = r8.length     // Catch: java.lang.Exception -> Lb4
            r3 = 0
        L75:
            if (r3 >= r2) goto Lb8
            r4 = r8[r3]     // Catch: java.lang.Exception -> Lb4
            java.lang.String r5 = "index.html"
            java.lang.String r6 = r4.getName()     // Catch: java.lang.Exception -> Lb4
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Exception -> Lb4
            if (r5 == 0) goto L86
            goto Lb1
        L86:
            java.lang.String r5 = r4.getName()     // Catch: java.lang.Exception -> Lb4
            boolean r5 = r1.equals(r5)     // Catch: java.lang.Exception -> Lb4
            if (r5 == 0) goto L91
            goto Lb1
        L91:
            java.lang.String r5 = r4.getAbsolutePath()     // Catch: java.lang.Exception -> Lb4
            java.lang.String r5 = m3184strictfp(r5)     // Catch: java.lang.Exception -> Lb4
            java.lang.String r6 = r4.getAbsolutePath()     // Catch: java.lang.Exception -> Lb4
            java.lang.String r5 = m3191transient(r6, r5)     // Catch: java.lang.Exception -> Lb4
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Exception -> Lb4
            java.lang.String r4 = f(r4)     // Catch: java.lang.Exception -> Lb4
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Exception -> Lb4
            r6.<init>(r5)     // Catch: java.lang.Exception -> Lb4
            com.apk.n2.n(r7, r6, r4, r0, r0)     // Catch: java.lang.Exception -> Lb4
        Lb1:
            int r3 = r3 + 1
            goto L75
        Lb4:
            r8 = move-exception
            r8.printStackTrace()
        Lb8:
            com.apk.da.m428package(r7)
            V()
            int r7 = com.apk.ze.f6179do
            int r7 = r7 + (-1)
            com.apk.ze.f6179do = r7
            if (r7 != 0) goto Lf6
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lf2
            r7.<init>()     // Catch: java.lang.Exception -> Lf2
            r7.append(r9)     // Catch: java.lang.Exception -> Lf2
            java.lang.String r8 = "/"
            r7.append(r8)     // Catch: java.lang.Exception -> Lf2
            r7.append(r10)     // Catch: java.lang.Exception -> Lf2
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> Lf2
            com.apk.Celse.m645case(r7)     // Catch: java.lang.Exception -> Lf2
            java.io.File r7 = new java.io.File     // Catch: java.lang.Exception -> Led
            r7.<init>(r11)     // Catch: java.lang.Exception -> Led
            r7.delete()     // Catch: java.lang.Exception -> Led
            java.lang.String r7 = r12.getAbsolutePath()     // Catch: java.lang.Exception -> Led
            m3176native(r7)     // Catch: java.lang.Exception -> Led
            goto Lf6
        Led:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Exception -> Lf2
            goto Lf6
        Lf2:
            r7 = move-exception
            r7.printStackTrace()
        Lf6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.m3169for(android.content.Context, java.io.File, java.lang.String, java.lang.String, java.lang.String, java.io.File):void");
    }

    public static String g() {
        return ys.m3116if().f3941try;
    }

    public static void g0(Context context, String str) {
        try {
            context.startActivity(context.getPackageManager().getLaunchIntentForPackage(str));
        } catch (Exception unused) {
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m3170goto(Activity activity) {
        if (H(activity.getWindow().getDecorView().getRootView())) {
            ((InputMethodManager) activity.getSystemService("input_method")).toggleSoftInput(2, 0);
        }
    }

    public static String h() {
        return F() ? "harmony" : "android";
    }

    public static String h0(String str, int i, int i2) {
        try {
            if (!TextUtils.isEmpty(str) && i > -1 && i2 > -1 && i2 > i) {
                return str.substring(i, i2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static List<SkinModel> i() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SkinModel("#C0392B", "活力红", "red"));
        arrayList.add(new SkinModel("#CC9966", "大地棕", "brown"));
        arrayList.add(new SkinModel("#00ACF5", "经典蓝", "blue"));
        arrayList.add(new SkinModel("#E67E22", "新鲜橙", "orange"));
        arrayList.add(new SkinModel("#909DEF", "高贵紫", "violet"));
        arrayList.add(new SkinModel("#00B892", "自然青", "cyan"));
        arrayList.add(new SkinModel("#F9739A", "可爱粉", "pink"));
        arrayList.add(new SkinModel("#2E2E30", "炫酷黑", "black"));
        arrayList.add(new SkinModel("#5AB864", "健康绿", "green"));
        arrayList.add(new SkinModel("#F7CA18", "魅力黄", "yellow"));
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.List<com.biquge.ebook.app.bean.Book> i0(org.json.JSONArray r4) {
        /*
            r0 = 0
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L24
            com.apk.wf r1 = new com.apk.wf     // Catch: java.lang.Exception -> L24
            r1.<init>()     // Catch: java.lang.Exception -> L24
            java.lang.reflect.Type r1 = r1.getType()     // Catch: java.lang.Exception -> L24
            java.lang.Object r4 = com.biquge.ebook.app.helper.req.convert.Convert.fromJson(r4, r1)     // Catch: java.lang.Exception -> L24
            java.util.List r4 = (java.util.List) r4     // Catch: java.lang.Exception -> L24
            if (r4 == 0) goto L2b
            int r0 = r4.size()     // Catch: java.lang.Exception -> L22
            if (r0 <= 0) goto L2b
            com.jni.crypt.project.CryptDesManager.decodeClass(r4)     // Catch: java.lang.Exception -> L20
            goto L2b
        L20:
            goto L2b
        L22:
            r0 = move-exception
            goto L28
        L24:
            r4 = move-exception
            r3 = r0
            r0 = r4
            r4 = r3
        L28:
            r0.printStackTrace()
        L2b:
            if (r4 == 0) goto L65
            int r0 = r4.size()
            if (r0 <= 0) goto L65
            java.util.Iterator r0 = r4.iterator()
        L37:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L65
            java.lang.Object r1 = r0.next()
            com.biquge.ebook.app.bean.Book r1 = (com.biquge.ebook.app.bean.Book) r1
            if (r1 == 0) goto L37
            java.util.List r2 = r1.getCloudList()
            if (r2 == 0) goto L37
            java.util.List r2 = r1.getCloudList()
            int r2 = r2.size()
            if (r2 <= 0) goto L37
            java.lang.String r2 = r1.getId()
            java.util.List r1 = r1.getCloudList()
            java.lang.String r1 = com.biquge.ebook.app.helper.req.convert.Convert.toJson(r1)
            com.apk.p0.m2007import(r2, r1)
            goto L37
        L65:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.i0(org.json.JSONArray):java.util.List");
    }

    /* renamed from: if  reason: not valid java name */
    public static ComicCollectBean m3171if(ComicBean comicBean, int i, String str, String str2, String str3) {
        ComicCollectBean comicCollectBean = new ComicCollectBean();
        comicCollectBean.setCollectId(String.valueOf(comicBean.getId()));
        comicCollectBean.setName(comicBean.getName());
        comicCollectBean.setReadChapterId(str2);
        comicCollectBean.setReadChapterName(str3);
        comicCollectBean.setReadPage(i);
        comicCollectBean.setIcon(comicBean.getImg());
        comicCollectBean.setLastCapterName(comicBean.getLastChapter());
        comicCollectBean.setLastCapterId(comicBean.getLastChapterId());
        comicCollectBean.setFirstChapterId(comicBean.getFirstChapterId());
        String lastTime = comicBean.getLastTime();
        if (TextUtils.isEmpty(lastTime)) {
            lastTime = comicBean.getUpdateTime();
        }
        comicCollectBean.setLastUpdateTime(lastTime);
        comicCollectBean.setSaveTime(String.valueOf(System.currentTimeMillis()));
        comicCollectBean.setNew(false);
        comicCollectBean.setAuthor(comicBean.getAuthor());
        comicCollectBean.setStickTime("");
        comicCollectBean.setDesc(comicBean.getDesc());
        comicCollectBean.setBookType(comicBean.getCName());
        comicCollectBean.setLoginName(str);
        comicCollectBean.setAddTime(System.currentTimeMillis());
        return comicCollectBean;
    }

    /* renamed from: implements  reason: not valid java name */
    public static String m3172implements(String str) {
        return m3191transient(str, m3184strictfp(str));
    }

    /* renamed from: import  reason: not valid java name */
    public static void m3173import(String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o m1921for = o.m1921for();
            nf nfVar = new nf(str);
            ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
            if (threadPoolExecutor != null) {
                threadPoolExecutor.execute(nfVar);
                return;
            }
            return;
        }
        try {
            m3176native(a6.m18else().m22if() + File.separator + str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public static int m3174instanceof(String str, int i) {
        return tt.f4763do.decodeInt(str, i);
    }

    /* renamed from: interface  reason: not valid java name */
    public static boolean m3175interface(boolean z) {
        if (m3179private("SP_APP_DARK_THEME_SWITCH_KEY", true)) {
            return (AppContext.f6392case.getResources().getConfiguration().uiMode & 48) == 32;
        }
        if (z) {
            AppCompatDelegate.setDefaultNightMode(1);
        }
        return false;
    }

    public static int j(int i) {
        return lq0.m1660do(AppContext.f6392case, tr0.m2617do(i));
    }

    public static List<BookElement> j0(JSONArray jSONArray) {
        List<BookElement> list = null;
        try {
            List<BookElement> list2 = (List) Convert.fromJson(jSONArray.toString(), new yf().getType());
            if (list2 != null) {
                try {
                    if (list2.size() > 0) {
                        try {
                            CryptDesManager.decodeClass(list2);
                            return list2;
                        } catch (Exception unused) {
                            return list2;
                        }
                    }
                    return list2;
                } catch (Exception unused2) {
                    list = list2;
                    return list;
                }
            }
            return list2;
        } catch (Exception unused3) {
        }
    }

    public static int k() {
        return ys.m3114do().f3749new;
    }

    public static List<ComicBean> k0(JSONArray jSONArray) {
        try {
            List<ComicBean> list = (List) Convert.fromJson(jSONArray.toString(), new xf().getType());
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        CryptDesManager.decodeClass(list);
                        return list;
                    }
                    return list;
                } catch (Exception unused) {
                    return list;
                }
            }
            return list;
        } catch (Exception unused2) {
            return null;
        }
    }

    public static int l(String str) {
        try {
            return AppContext.f6392case.getPackageManager().getPackageInfo(str, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static List<ComicElement> l0(JSONArray jSONArray) {
        List<ComicElement> list = null;
        try {
            List<ComicElement> list2 = (List) Convert.fromJson(jSONArray.toString(), new zf().getType());
            if (list2 != null) {
                try {
                    if (list2.size() > 0) {
                        try {
                            CryptDesManager.decodeClass(list2);
                            return list2;
                        } catch (Exception unused) {
                            return list2;
                        }
                    }
                    return list2;
                } catch (Exception unused2) {
                    list = list2;
                    return list;
                }
            }
            return list2;
        } catch (Exception unused3) {
        }
    }

    public static String m() {
        String str = ys.m3114do().f3747for;
        return str == null ? "" : str;
    }

    public static List<StoreConfigBean> m0(JSONArray jSONArray) {
        try {
            return (List) Convert.fromJson(jSONArray.toString(), new ag().getType());
        } catch (Exception unused) {
            return null;
        }
    }

    public static String n(String str) {
        return tt.m2620do(str, "");
    }

    public static <T> T n0(Class<T> cls, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String jSONObject2 = jSONObject.toString();
        if (TextUtils.isEmpty(jSONObject2)) {
            return null;
        }
        return (T) Convert.fromJson(jSONObject2, (Class<Object>) cls);
    }

    /* renamed from: native  reason: not valid java name */
    public static boolean m3176native(String str) {
        try {
            File file = new File(str);
            if (!file.isDirectory()) {
                file.delete();
                return true;
            } else if (file.isDirectory()) {
                String[] list = file.list();
                for (int i = 0; i < list.length; i++) {
                    File file2 = new File(str + "/" + list[i]);
                    if (!file2.isDirectory()) {
                        file2.delete();
                    } else if (file2.isDirectory()) {
                        m3176native(str + "/" + list[i]);
                    }
                }
                file.delete();
                return true;
            } else {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    /* renamed from: new  reason: not valid java name */
    public static DividerItemDecoration m3177new(Context context, RecyclerView recyclerView) {
        return m3192try(context, recyclerView, false);
    }

    public static String o() {
        if (F()) {
            StringBuilder m1016super = Cgoto.m1016super("HarmonyOS-");
            m1016super.append(t());
            return m1016super.toString();
        }
        StringBuilder m1016super2 = Cgoto.m1016super("Android-");
        m1016super2.append(ys.m3116if().f3941try);
        return m1016super2.toString();
    }

    public static Bitmap o0(View view) {
        if (view == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Drawable background = view.getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        view.draw(canvas);
        return createBitmap;
    }

    public static int p(int i) {
        return ContextCompat.getColor(AppContext.f6392case, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0079 A[Catch: IOException -> 0x0075, TRY_LEAVE, TryCatch #2 {IOException -> 0x0075, blocks: (B:38:0x0071, B:42:0x0079), top: B:46:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void p0(java.lang.String r3, java.lang.String r4, java.lang.String r5) {
        /*
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            boolean r4 = r1.exists()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            if (r4 == 0) goto L10
            r1.delete()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            goto L1e
        L10:
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            boolean r3 = r4.exists()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            if (r3 != 0) goto L1e
            r4.mkdirs()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
        L1e:
            r1.createNewFile()     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            java.io.OutputStreamWriter r3 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            java.lang.String r1 = "UTF-8"
            r3.<init>(r4, r1)     // Catch: java.lang.Throwable -> L54 java.lang.Exception -> L57
            java.io.BufferedWriter r4 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
            java.lang.String r5 = com.jni.crypt.project.CryptDesManager.encodeContent(r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L45
            r4.append(r5)     // Catch: java.lang.Throwable -> L40 java.lang.Exception -> L45
            r4.close()     // Catch: java.io.IOException -> L62
            r3.close()     // Catch: java.io.IOException -> L62
            goto L6d
        L40:
            r5 = move-exception
            r0 = r4
            r4 = r3
            r3 = r5
            goto L6f
        L45:
            r5 = move-exception
            r0 = r4
            r4 = r3
            r3 = r5
            goto L59
        L4a:
            r4 = move-exception
            r2 = r4
            r4 = r3
            r3 = r2
            goto L6f
        L4f:
            r4 = move-exception
            r2 = r4
            r4 = r3
            r3 = r2
            goto L59
        L54:
            r3 = move-exception
            r4 = r0
            goto L6f
        L57:
            r3 = move-exception
            r4 = r0
        L59:
            r3.printStackTrace()     // Catch: java.lang.Throwable -> L6e
            if (r0 == 0) goto L64
            r0.close()     // Catch: java.io.IOException -> L62
            goto L64
        L62:
            r3 = move-exception
            goto L6a
        L64:
            if (r4 == 0) goto L6d
            r4.close()     // Catch: java.io.IOException -> L62
            goto L6d
        L6a:
            r3.printStackTrace()
        L6d:
            return
        L6e:
            r3 = move-exception
        L6f:
            if (r0 == 0) goto L77
            r0.close()     // Catch: java.io.IOException -> L75
            goto L77
        L75:
            r4 = move-exception
            goto L7d
        L77:
            if (r4 == 0) goto L80
            r4.close()     // Catch: java.io.IOException -> L75
            goto L80
        L7d:
            r4.printStackTrace()
        L80:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.p0(java.lang.String, java.lang.String, java.lang.String):void");
    }

    /* renamed from: package  reason: not valid java name */
    public static long m3178package(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(a6.m18else().m22if());
        return m3180protected(new File(Cgoto.m991class(sb, File.separator, str)));
    }

    /* renamed from: private  reason: not valid java name */
    public static boolean m3179private(String str, boolean z) {
        return tt.f4763do.decodeBool(str, z);
    }

    /* renamed from: protected  reason: not valid java name */
    public static long m3180protected(File file) {
        long j = 0;
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        j += m3180protected(file2);
                    }
                    return j;
                }
                return file.length();
            }
            return 0L;
        } catch (Exception e) {
            e.printStackTrace();
            return 0L;
        }
    }

    /* renamed from: public  reason: not valid java name */
    public static void m3181public(WebView webView) {
        if (webView != null) {
            try {
                ((ViewGroup) webView.getParent()).removeView(webView);
                webView.destroy();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String q(int i) {
        return AppContext.f6392case.getString(i);
    }

    public static String r(int i, Object... objArr) {
        return AppContext.f6392case.getString(i, objArr);
    }

    /* renamed from: return  reason: not valid java name */
    public static String m3182return(long j, long j2) {
        if (j <= 0 || j2 <= 0) {
            return "0%";
        }
        try {
            NumberFormat numberFormat = NumberFormat.getInstance();
            numberFormat.setMaximumFractionDigits(0);
            return numberFormat.format((((float) j) / ((float) j2)) * 100.0f) + "%";
        } catch (Exception e) {
            e.printStackTrace();
            return "0%";
        }
    }

    public static void s(Context context, String str, String str2, boolean z, boolean z2) {
        TrCommentSdk.openCommentActivity(context, z ? TrSourceType.Novel : TrSourceType.Cartoon, m3187synchronized(z2, str), str2);
    }

    /* renamed from: static  reason: not valid java name */
    public static void m3183static(File file, File file2) {
        Throwable th;
        FileInputStream fileInputStream;
        IOException e;
        m3161const(file2);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                        try {
                            FileChannel channel = fileInputStream.getChannel();
                            channel.transferTo(0L, channel.size(), fileOutputStream2.getChannel());
                            fileOutputStream2.close();
                        } catch (IOException e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            if (fileInputStream == null) {
                                return;
                            }
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    throw th;
                                }
                            }
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (IOException e5) {
                e = e5;
                fileInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
            }
            fileInputStream.close();
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0086, code lost:
        r8 = r4.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008a, code lost:
        if (128 > r8) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008c, code lost:
        if (r8 > 191) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x008e, code lost:
        r8 = r4.read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0092, code lost:
        if (128 > r8) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0094, code lost:
        if (r8 > 191) goto L67;
     */
    /* renamed from: strictfp  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String m3184strictfp(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.ze.m3184strictfp(java.lang.String):java.lang.String");
    }

    /* renamed from: super  reason: not valid java name */
    public static File m3185super() {
        File file = new File(a6.m17do() + "/" + System.currentTimeMillis());
        if (!file.exists()) {
            m3161const(file);
        }
        return file;
    }

    /* renamed from: switch  reason: not valid java name */
    public static void m3186switch(RecyclerView recyclerView) {
        if (recyclerView != null) {
            try {
                recyclerView.dispatchTouchEvent(MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, 0.0f, 0.0f, 0));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public static String m3187synchronized(boolean z, String str) {
        return z ? !str.contains("sn_") ? Cgoto.m989case("sn_", str) : str : !str.contains("sd_") ? Cgoto.m989case("sd_", str) : str;
    }

    public static String t() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "hw_sc.build.platform.version");
            return TextUtils.isEmpty(str) ? "" : str;
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static void m3188this(String str, String str2) throws Exception {
        try {
            new File(str2).mkdirs();
            File[] listFiles = new File(str).listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                return;
            }
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isFile()) {
                    m3157break(listFiles[i], new File(new File(str2).getAbsolutePath() + File.separator + listFiles[i].getName()));
                }
                if (listFiles[i].isDirectory()) {
                    m3188this(str + "/" + listFiles[i].getName(), str2 + "/" + listFiles[i].getName());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public static <T> T m3189throw(Class<T> cls, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        T t = (T) Convert.fromJson(str, (Class<Object>) cls);
        if (t != null) {
            CryptDesManager.decodeClass(t);
        }
        return t;
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m3190throws(long j) {
        if (j >= 1073741824) {
            return String.format("%.1fG", Double.valueOf((j * 1.0d) / 1.073741824E9d));
        }
        if (j >= DownloadInfo.DEFAULT_MIN_BYTES_INTERVAL) {
            return String.format("%.1fM", Double.valueOf((j * 1.0d) / 1048576.0d));
        }
        if (j >= 1024) {
            return String.format("%.1fK", Double.valueOf((j * 1.0d) / 1024.0d));
        }
        return j + "B";
    }

    /* renamed from: transient  reason: not valid java name */
    public static String m3191transient(String str, String str2) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(new File(str)), str2), 8192);
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb.append("\n");
                    sb.append(readLine);
                } else {
                    bufferedReader.close();
                    return sb.toString().trim();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static DividerItemDecoration m3192try(Context context, RecyclerView recyclerView, boolean z) {
        DividerItemDecoration dividerItemDecoration = new DividerItemDecoration(context, 1);
        if (!z && !da.m438while()) {
            dividerItemDecoration.setDrawable(ContextCompat.getDrawable(context, R.drawable.shape_list_division_line));
        } else {
            dividerItemDecoration.setDrawable(ContextCompat.getDrawable(context, R.drawable.shape_list_division_line_night));
        }
        recyclerView.addItemDecoration(dividerItemDecoration);
        return dividerItemDecoration;
    }

    public static void u(Context context, b40 b40Var, int i, int i2) {
        f40 f40Var = new f40(context, R.color.main_tab_txt_color, eg.m587catch(2.0f));
        f40Var.f1218case = eg.m587catch(i);
        b40Var.setScrollBar(f40Var);
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.main_tab_txt_color, R.color.color_333333);
        float f = i2;
        i40Var.m1183new(1.5f + f, f);
        b40Var.setOnTransitionListener(i40Var);
    }

    public static void v(Context context, b40 b40Var) {
        b40Var.setScrollBar(new df(context, R.drawable.shape_indicator_tab_stroke_bt, h40.Cdo.CENTENT_BACKGROUND));
        i40 i40Var = new i40();
        i40Var.m1181for(R.color.main_tab_txt_color, R.color.color_333333);
        b40Var.setOnTransitionListener(i40Var);
    }

    /* renamed from: volatile  reason: not valid java name */
    public static String m3193volatile() {
        ClipData primaryClip;
        ClipData.Item itemAt;
        try {
            ClipboardManager clipboardManager = (ClipboardManager) AppContext.f6392case.getSystemService("clipboard");
            if (clipboardManager == null || (primaryClip = clipboardManager.getPrimaryClip()) == null || (itemAt = primaryClip.getItemAt(0)) == null) {
                return null;
            }
            return itemAt.getText().toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static void w(Context context, RecyclerView recyclerView, List<HomenavmenuBean> list) {
        recyclerView.setLayoutManager(new GridLayoutManager(context, list.size()));
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        m3165else(recyclerView);
        HomeMenuAdapter homeMenuAdapter = new HomeMenuAdapter(list);
        recyclerView.setAdapter(homeMenuAdapter);
        homeMenuAdapter.setOnItemClickListener(new ff(list, context));
    }

    /* renamed from: while  reason: not valid java name */
    public static <T> T m3194while(Class<T> cls, JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("data");
        if (optJSONObject != null) {
            jSONObject = optJSONObject;
        }
        return (T) m3189throw(cls, jSONObject.toString());
    }

    public static void x(CheckBox checkBox) {
        StringBuilder m1016super = Cgoto.m1016super("《");
        m1016super.append(q(R.string.privacy_agreement_title));
        m1016super.append("》");
        String sb = m1016super.toString();
        StringBuilder m1016super2 = Cgoto.m1016super("《");
        m1016super2.append(q(R.string.privacy_user_service_title));
        m1016super2.append("》");
        String sb2 = m1016super2.toString();
        String r = r(R.string.privacy_agreement_txt, sb, sb2);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(r);
        int indexOf = r.indexOf(sb);
        spannableStringBuilder.setSpan(new tc(checkBox.getContext().getApplicationContext(), 1), indexOf, sb.length() + indexOf, 17);
        int indexOf2 = r.indexOf(sb2);
        spannableStringBuilder.setSpan(new tc(checkBox.getContext().getApplicationContext(), 2), indexOf2, sb2.length() + indexOf2, 17);
        checkBox.setMovementMethod(LinkMovementMethod.getInstance());
        checkBox.setText(spannableStringBuilder);
        if ((Ccontinue.m379if().f711do == gf.TUIGUANG) || Ccontinue.m379if().m381else()) {
            checkBox.setChecked(true);
        }
    }

    public static void y(Context context, String str, String str2) {
        String str3;
        try {
            InputStream open = context.getApplicationContext().getAssets().open(str);
            if (open != null) {
                File file = new File(a6.m18else().m20for(), str2);
                byte[] U = U(open);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(U);
                if (file.exists() && file.length() > 0) {
                    String valueOf = String.valueOf(file.hashCode());
                    try {
                        str3 = str2.substring(0, str2.lastIndexOf("."));
                    } catch (Exception e) {
                        e.printStackTrace();
                        str3 = str2;
                    }
                    if (!"functiondisclaimer.txt".equals(str)) {
                        str2 = str3;
                    }
                    n2.w(valueOf, str2, file.getAbsolutePath(), 1);
                    mf.m1712do("refresh_shelf_book", null);
                    Celse.m645case(str);
                }
                fileOutputStream.close();
                open.close();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void z(Context context, File file) {
        if (file != null) {
            try {
                if (file.exists()) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        A(context, file);
                        if (context.getPackageManager().canRequestPackageInstalls()) {
                            return;
                        }
                        boolean z = false;
                        try {
                            z = ActivityCompat.shouldShowRequestPermissionRationale((Activity) context, "android.permission.INSTALL_PACKAGES");
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        if (z) {
                            ToastUtils.show((int) R.string.intall_apply_for_right_txt);
                            try {
                                context.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + m3168finally())));
                                return;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    A(context, file);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }
}
