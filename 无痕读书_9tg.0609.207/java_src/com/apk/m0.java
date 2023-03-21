package com.apk;

import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.multidex.MultiDexExtractor;
import com.apk.ut;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.BarrageConfigBean;
import com.biquge.ebook.app.bean.BatchCacheBean;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.DownloadProgress;
import com.biquge.ebook.app.bean.NewReadFont;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.ShareTgBean;
import com.biquge.ebook.app.bean.User;
import com.biquge.ebook.app.bean.webread.WebSiteRulesBean;
import com.biquge.ebook.app.helper.req.convert.Convert;
import com.jni.crypt.project.CryptDesManager;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.widget.barrage.BarrageBean;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.umeng.analytics.MobclickAgent;
import com.umeng.commonsdk.UMConfigure;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.litepal.LitePal;
import org.litepal.parser.LitePalParser;
/* compiled from: AppInitHelper.java */
/* loaded from: classes8.dex */
public class m0 {

    /* renamed from: do  reason: not valid java name */
    public static final ut.Cdo f2971do = h0.f1667do;

    /* renamed from: break  reason: not valid java name */
    public static void m1675break(String str) {
        if (v.m2734do() == null) {
            throw null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:(2:21|22)|(2:24|(8:26|(3:32|(4:35|(8:37|38|39|40|41|42|43|(2:45|46)(2:48|49))(2:65|66)|47|33)|67)|68|(3:70|(4:72|(1:74)(2:84|(1:86)(1:87))|75|(2:79|80))(1:88)|81)|53|54|56|57))|89|53|54|56|57) */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01b8, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01b9, code lost:
        r0.printStackTrace();
     */
    /* renamed from: case  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1676case() {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.m0.m1676case():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: catch  reason: not valid java name */
    public static boolean m1677catch(String str, List<WebSiteRulesBean> list) {
        JSONObject m2961super;
        boolean optBoolean;
        WebSiteRulesBean m1857final;
        int i = 0;
        try {
            m2961super = x4.m2961super(str, 0L, xw.NO_CACHE);
            optBoolean = m2961super.optBoolean(com.ss.android.socialbase.downloader.impls.h.e);
        } catch (Exception e) {
            e = e;
        }
        try {
            JSONArray optJSONArray = m2961super.optJSONArray("data");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                return optBoolean;
            }
            int length = optJSONArray.length();
            while (i < length) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null) {
                    String optString = optJSONObject.optString("yu");
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("items");
                    if (optJSONArray2 != null && optJSONArray2.length() > 0 && (m1857final = nd.m1857final(optJSONArray2)) != null) {
                        m1857final.setBaseUrl(optString);
                        list.add(m1857final);
                    }
                }
                i++;
            }
            return optBoolean;
        } catch (Exception e2) {
            e = e2;
            i = optBoolean;
            e.printStackTrace();
            return i;
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static void m1678do(NewReadFont newReadFont) {
        String str;
        File file;
        long j;
        int indexOf;
        dh0 dh0Var;
        BufferedInputStream bufferedInputStream;
        RandomAccessFile randomAccessFile;
        InputStream inputStream;
        byte[] bArr;
        if (ze.m3179private("SP_LOAD_DEFAULT_FONT_KEY", false)) {
            return;
        }
        String url = newReadFont.getUrl();
        l0 l0Var = new l0();
        DownloadProgress downloadProgress = DownloadProgress.getDownloadProgress(url);
        ch0 ch0Var = null;
        if (downloadProgress != null) {
            file = new File(downloadProgress.getFilePath());
            if (file.exists() && (downloadProgress.getStatus() == 1 || file.length() >= downloadProgress.getTotalSize())) {
                l0Var.m1582do(file);
                return;
            }
            j = file.exists() ? file.length() : 0L;
        } else {
            String[] split = url.split("/");
            int length = split.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    String str2 = split[i];
                    if (str2.contains("?") && (indexOf = str2.indexOf("?")) != -1) {
                        str = str2.substring(0, indexOf);
                        break;
                    }
                    i++;
                } else {
                    str = split.length > 0 ? split[split.length - 1] : null;
                }
            }
            file = new File(a6.m18else().m20for(), str);
            DownloadProgress.saveDownloadProgress(url, file.getAbsolutePath());
            j = 0;
        }
        File file2 = file;
        try {
            ky kyVar = new ky(url);
            kyVar.f3956break.m897for("Range", "bytes=" + j + "-");
            ch0Var = kyVar.m2193for();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (ch0Var == null || !ch0Var.m338throw() || (dh0Var = ch0Var.f614goto) == null) {
            return;
        }
        long mo457throw = dh0Var.mo457throw();
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
            randomAccessFile2.seek(j);
            InputStream m456for = dh0Var.m456for();
            byte[] bArr2 = new byte[8192];
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(m456for, 8192);
            long j2 = 0;
            while (true) {
                try {
                    int read = bufferedInputStream2.read(bArr2, 0, 8192);
                    if (read != -1) {
                        if (!TextUtils.isEmpty("") && o0.m1925else().m1934goto("")) {
                            mu.m1758class(randomAccessFile2);
                            mu.m1758class(bufferedInputStream2);
                            mu.m1758class(m456for);
                            return;
                        }
                        randomAccessFile2.write(bArr2, 0, read);
                        j2 += read;
                        if (j2 > j) {
                            bufferedInputStream = bufferedInputStream2;
                            bArr = bArr2;
                            randomAccessFile = randomAccessFile2;
                            inputStream = m456for;
                            try {
                                DownloadProgress.updateDownloadProgress(url, 0, j2, mo457throw);
                            } catch (Throwable th) {
                                th = th;
                            }
                        } else {
                            bufferedInputStream = bufferedInputStream2;
                            bArr = bArr2;
                            randomAccessFile = randomAccessFile2;
                            inputStream = m456for;
                        }
                        bufferedInputStream2 = bufferedInputStream;
                        bArr2 = bArr;
                        randomAccessFile2 = randomAccessFile;
                        m456for = inputStream;
                    } else {
                        bufferedInputStream = bufferedInputStream2;
                        randomAccessFile = randomAccessFile2;
                        inputStream = m456for;
                        DownloadProgress.updateDownloadProgress(url, 1, j2, mo457throw);
                        l0Var.m1582do(file2);
                        mu.m1758class(randomAccessFile);
                        mu.m1758class(bufferedInputStream);
                        mu.m1758class(inputStream);
                        return;
                    }
                    th = th;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedInputStream = bufferedInputStream2;
                    randomAccessFile = randomAccessFile2;
                    inputStream = m456for;
                }
                mu.m1758class(randomAccessFile);
                mu.m1758class(bufferedInputStream);
                mu.m1758class(inputStream);
                throw th;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public static void m1679else() {
        String m2620do;
        String str;
        String m2620do2;
        List<CollectBook> m1830package;
        boolean m2881import = w0.m2881import();
        AppContext appContext = AppContext.f6392case;
        try {
            String[] list = appContext.getAssets().list("cache");
            if (list != null && list.length > 0) {
                for (String str2 : list) {
                    if (Celse.m648for("cache/" + str2) != null) {
                        break;
                    }
                    String str3 = a6.m18else().m20for() + "/" + str2;
                    if (ze.m3159catch(appContext, "cache/" + str2, str3)) {
                        if (str3.endsWith(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                            String str4 = a6.m18else().m23new() + File.separator + ze.f(str2);
                            try {
                                if (eg.n(str3, str4, null)) {
                                    File file = new File(str4);
                                    if (file.isDirectory()) {
                                        ze.f6179do = file.listFiles().length;
                                        File[] listFiles = file.listFiles();
                                        int length = listFiles.length;
                                        int i = 0;
                                        while (i < length) {
                                            int i2 = i;
                                            int i3 = length;
                                            File[] fileArr = listFiles;
                                            File file2 = file;
                                            ze.m3169for(appContext, listFiles[i], "cache", str2, str3, file);
                                            i = i2 + 1;
                                            length = i3;
                                            listFiles = fileArr;
                                            file = file2;
                                        }
                                    }
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (str3.endsWith(".txt")) {
                            ze.y(appContext, "cache/" + str2, str2);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (m2881import) {
            m2620do = tt.m2620do("SP_AOTU_ADD_SHELD_IDS_MAN_KEY", "");
        } else {
            m2620do = tt.m2620do("SP_AOTU_ADD_SHELD_IDS_LADY_KEY", "");
        }
        if (TextUtils.isEmpty(m2620do)) {
            str = "";
        } else {
            str = Cgoto.m989case(!TextUtils.isEmpty("") ? Cgoto.m989case("", ",") : "", m2620do);
        }
        if (m2881import) {
            m2620do2 = tt.m2620do("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_MAN_KEY", "");
        } else {
            m2620do2 = tt.m2620do("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_LADY_KEY", "");
        }
        if (!TextUtils.isEmpty(m2620do2)) {
            if (!TextUtils.isEmpty(str)) {
                str = Cgoto.m989case(str, ",");
            }
            str = Cgoto.m989case(str, m2620do2);
        }
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(",");
            if (split.length > 0) {
                try {
                    for (String str5 : split) {
                        String str6 = "SP_SHELF_TUIGUANG_ID_KEY" + str5;
                        if (!ze.m3179private(str6, false)) {
                            if (n2.f(str5)) {
                                tt.f4763do.putBoolean(str6, true);
                            } else {
                                Book m2761throw = v3.m2761throw(str5, true);
                                if (m2761throw != null) {
                                    n2.t(m2761throw, "", "", "", 1, false, false);
                                    tt.f4763do.putBoolean(str6, true);
                                    try {
                                        String firstChapterId = m2761throw.getFirstChapterId();
                                        if (!TextUtils.isEmpty(firstChapterId)) {
                                            n2.m1837super(m2761throw.getId(), firstChapterId, null, false, null, true);
                                        }
                                    } catch (Exception unused) {
                                    }
                                    ze.V();
                                }
                            }
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                ze.Y(true);
                ze.W("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_MAN_KEY");
                ze.W("SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_LADY_KEY");
            }
        }
        try {
            if (ze.m3179private("SP_AOTU_ADD_CLEAR_NO_READ_KEY", false) && (m1830package = n2.m1830package()) != null && m1830package.size() > 0) {
                String[] strArr = new String[m1830package.size()];
                for (int i4 = 0; i4 < m1830package.size(); i4++) {
                    strArr[i4] = m1830package.get(i4).getCollectId();
                }
                n2.s(strArr);
                ze.V();
            }
        } catch (Exception unused2) {
        } catch (Throwable th) {
            ze.W("SP_AOTU_ADD_CLEAR_NO_READ_KEY");
            throw th;
        }
        ze.W("SP_AOTU_ADD_CLEAR_NO_READ_KEY");
    }

    /* renamed from: for  reason: not valid java name */
    public static String m1680for() {
        List list;
        long currentTimeMillis;
        HashMap m1007native = Cgoto.m1007native("action", "sharelist");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("platform", ze.h());
            jSONObject.put("sourceType", "novel");
            jSONObject.put("packageName", ze.m3168finally());
            jSONObject.put(LitePalParser.NODE_VERSION, ze.m());
            jSONObject.put("channel", ze.m3156abstract());
            jSONObject.put("deviceno", eg.m613super());
            jSONObject.put("ts", kg.m1498if());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m1007native.put("data", CryptDesManager.encodeContent(jSONObject.toString()));
        JSONObject m2953extends = x4.m2953extends(w.m2841const(), m1007native);
        if (m2953extends != null) {
            String jSONObject2 = m2953extends.toString();
            try {
                if (!TextUtils.isEmpty(jSONObject2)) {
                    JSONObject jSONObject3 = new JSONObject(jSONObject2);
                    if (jSONObject3.optInt(NotificationCompat.CATEGORY_STATUS) == 1) {
                        JSONObject optJSONObject = jSONObject3.optJSONObject("data");
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString("endTime");
                            String m2879goto = w0.m2879goto();
                            if (!TextUtils.isEmpty(m2879goto)) {
                                long m1493catch = kg.m1493catch(m2879goto, kg.f2535do);
                                if (!TextUtils.isEmpty(optString)) {
                                    currentTimeMillis = kg.m1493catch(optString, kg.f2535do);
                                } else {
                                    currentTimeMillis = System.currentTimeMillis();
                                }
                                if (currentTimeMillis >= m1493catch) {
                                    w0.m2885package(optString);
                                }
                            } else {
                                w0.m2885package(optString);
                            }
                            tt.f4763do.putString("SP_SERVICE_CUR_TIME_KEY", optJSONObject.optString("serverTime"));
                            JSONArray optJSONArray = optJSONObject.optJSONArray("devicenos");
                            if (optJSONArray != null) {
                                try {
                                    list = (List) Convert.fromJson(optJSONArray.toString(), new vf().getType());
                                } catch (Exception unused) {
                                    list = null;
                                }
                                if (list != null && list.size() > 0 && list.size() != w0.m2868catch()) {
                                    LitePal.deleteAll(ShareTgBean.class, new String[0]);
                                    LitePal.saveAll(list);
                                    tt.f4763do.putInt("SP_NEW_SHARE_LINK_SIZE", list.size());
                                    mf.m1712do("REFRESH_NEW_SHARE_LINK_USEAR", null);
                                }
                            }
                        }
                    } else {
                        ze.W("SP_NEW_SHARE_USER_COUPONID");
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return jSONObject2;
        }
        return "获取失败";
    }

    /* renamed from: goto  reason: not valid java name */
    public static void m1681goto() {
        UMConfigure.setLogEnabled(false);
        MobclickAgent.setCatchUncaughtExceptions(false);
        UMConfigure.init(AppContext.f6392case, "6159e28fac9567566e8a1623", ze.m3156abstract(), 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* renamed from: if  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1682if(boolean r7) {
        /*
            r0 = 0
            r1 = 1
            if (r7 == 0) goto L75
            com.biquge.ebook.app.app.AppContext r2 = com.biquge.ebook.app.app.AppContext.f6392case
            com.swl.gg.sdk.TrAdSdk.preInit(r2)
            boolean r2 = com.apk.w0.m2893switch()
            if (r2 == 0) goto L12
            com.swl.gg.sdk.TrAdSdk.setLog(r1)
        L12:
            com.apk.y r2 = new com.apk.y
            r2.<init>()
            com.apk.k40.f2467do = r2
            android.app.Application r2 = com.apk.k40.m1442continue()
            com.apk.tw r3 = com.apk.tw.Cif.f4772do     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L2b
            com.apk.tw r3 = com.apk.tw.Cif.f4772do     // Catch: java.lang.Exception -> L2b
            android.content.Context r3 = r3.getContext()     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L2b
            r3 = 1
            goto L2c
        L2b:
            r3 = 0
        L2c:
            if (r3 != 0) goto L6c
            com.apk.xg0$do r3 = new com.apk.xg0$do
            r3.<init>()
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r5 = 10000(0x2710, double:4.9407E-320)
            r3.m2994if(r5, r4)
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r3.m2995new(r5, r4)
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r3.m2992do(r5, r4)
            com.apk.px r4 = new com.apk.px
            com.apk.sx r5 = new com.apk.sx
            r5.<init>(r2)
            r4.<init>(r5)
            java.lang.String r5 = "cookieJar"
            com.apk.nd0.m1875new(r4, r5)
            r3.f5573break = r4
            com.apk.tw r4 = com.apk.tw.Cif.f4772do
            r4.f4766do = r2
            com.apk.xg0 r2 = new com.apk.xg0
            r2.<init>(r3)
            r4.f4768for = r2
            com.apk.xw r2 = com.apk.xw.NO_CACHE
            r4.f4765case = r2
            r2 = -1
            r4.m2623if(r2)
            r4.m2622for(r1)
        L6c:
            com.apk.x r2 = new com.apk.x
            r2.<init>()
            com.tr.comment.sdk.TrCommentSdk.init(r2)
            goto L8d
        L75:
            com.apk.continue r2 = com.apk.Ccontinue.m379if()
            boolean r2 = r2.f716if
            if (r2 == 0) goto L8d
            com.apk.o r2 = com.apk.o.m1921for()
            com.apk.case r3 = new com.apk.case
            r3.<init>()
            java.util.concurrent.ThreadPoolExecutor r2 = r2.f3327do
            if (r2 == 0) goto L8d
            r2.execute(r3)
        L8d:
            java.lang.String r2 = "SP_TUIGUANG_YOUMENG_INIT_KEY"
            if (r7 == 0) goto Lc1
            boolean r7 = com.apk.ze.m3179private(r2, r0)
            java.lang.String r1 = "6159e28fac9567566e8a1623"
            if (r7 != 0) goto La3
            com.biquge.ebook.app.app.AppContext r7 = com.biquge.ebook.app.app.AppContext.f6392case
            java.lang.String r0 = com.apk.ze.m3156abstract()
            com.umeng.commonsdk.UMConfigure.preInit(r7, r1, r0)
            goto Lef
        La3:
            com.biquge.ebook.app.app.AppContext r7 = com.biquge.ebook.app.app.AppContext.f6392case
            java.lang.String r2 = com.apk.ze.m3156abstract()
            com.umeng.commonsdk.UMConfigure.preInit(r7, r1, r2)
            m1681goto()
            com.swl.gg.sdk.TrAdSdk.openAdQuickDownload(r0)
            com.biquge.ebook.app.app.AppContext r7 = com.biquge.ebook.app.app.AppContext.f6392case
            com.apk.z r0 = com.apk.z.m3123do()
            com.swl.gg.sdk.TrAdSdk.init(r7, r0)
            com.apk.ut$do r7 = com.apk.m0.f2971do
            com.apk.ys.m3115for(r7)
            goto Lef
        Lc1:
            boolean r7 = com.apk.ze.m3179private(r2, r0)
            if (r7 != 0) goto Le0
            com.tencent.mmkv.MMKV r7 = com.apk.tt.f4763do
            r7.putBoolean(r2, r1)
            m1681goto()
            com.swl.gg.sdk.TrAdSdk.openAdQuickDownload(r0)
            com.biquge.ebook.app.app.AppContext r7 = com.biquge.ebook.app.app.AppContext.f6392case
            com.apk.z r0 = com.apk.z.m3123do()
            com.swl.gg.sdk.TrAdSdk.init(r7, r0)
            com.apk.ut$do r7 = com.apk.m0.f2971do
            com.apk.ys.m3115for(r7)
        Le0:
            boolean r7 = com.swl.gg.sdk.TrAdSdk.isInitAds()
            if (r7 != 0) goto Lef
            com.biquge.ebook.app.app.AppContext r7 = com.biquge.ebook.app.app.AppContext.f6392case
            com.apk.z r0 = com.apk.z.m3123do()
            com.swl.gg.sdk.TrAdSdk.init(r7, r0)
        Lef:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.m0.m1682if(boolean):void");
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1683new() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        int i = 1;
        while (z) {
            try {
                StringBuilder sb = new StringBuilder();
                String m2620do = tt.m2620do("SP_WEB_ACCURATE_SEARCH_HOST_KEY", "");
                if (TextUtils.isEmpty(m2620do)) {
                    m2620do = "https://precise.apptianwangxing.com";
                }
                sb.append(m2620do);
                sb.append("/catalog/8/");
                sb.append(i);
                sb.append(".json");
                z = m1677catch(sb.toString(), arrayList);
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
            if (!z) {
                break;
            }
            i++;
        }
        if (arrayList.size() > 0) {
            da.m419else().m440catch(arrayList);
            LitePal.deleteAll(WebSiteRulesBean.class, new String[0]);
            LitePal.saveAll(arrayList);
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static void m1684this() {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        JSONObject m2961super;
        JSONArray optJSONArray2;
        long currentTimeMillis;
        xw xwVar = xw.NO_CACHE;
        xw xwVar2 = xw.ALWAYS_FIRST_CACHE_THEN_REQUEST;
        Process.setThreadPriority(10);
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            int loginType = m2743else.getLoginType();
            if (loginType == 1 || loginType == 2) {
                String name = m2743else.getName();
                String pwd = m2743else.getPwd();
                if (!TextUtils.isEmpty(name) && !TextUtils.isEmpty(pwd)) {
                    m2743else.setLoginType(0);
                } else if (!TextUtils.isEmpty(name) && TextUtils.isEmpty(pwd)) {
                    m2743else.setLoginType(4);
                } else {
                    m2743else.setLoginType(3);
                }
            }
            g5.m940try(m2743else.getLoginType(), m2743else.getName(), m2743else.getPwd());
        } else {
            try {
                if (ze.m3179private("SP_ADD_BOOK_SHELF_AUTO_LOGIN_KEY", true) && ze.m3174instanceof("SP_ADD_BOOK_SHELF_AUTO_LOGIN_COUNT_KEY", 0) <= 10) {
                    String m2620do = tt.m2620do("SP_INSTALL_DAY_AUTO_LOGIN_KEY", "");
                    String str = kg.m1498if() + "#";
                    if (!m2620do.contains(str)) {
                        m2620do = m2620do + str;
                        tt.f4763do.putString("SP_INSTALL_DAY_AUTO_LOGIN_KEY", m2620do);
                    }
                    if (m2620do.split("#").length >= ze.m3174instanceof("SP_AUTO_REGISTER_LOGIN_INSTALL_DAY_KEY", 3)) {
                        tt.f4763do.putInt("SP_ADD_BOOK_SHELF_AUTO_LOGIN_COUNT_KEY", ze.m3174instanceof("SP_ADD_BOOK_SHELF_AUTO_LOGIN_COUNT_KEY", 0) + 1);
                        mf.m1713if("login_action_start", new Object[0]);
                        g5.m940try(3, null, null);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        LitePal.deleteAll(BatchCacheBean.class, new String[0]);
        tt.f4763do.putBoolean("BATCH_CACHE_MUST_REWARD_AD_KEY", true);
        hf hfVar = Ccontinue.m379if().f729while;
        if (hfVar == hf.BOOK) {
            m1679else();
        } else if (hfVar == hf.COMIC) {
            m1685try();
        } else if (hfVar == hf.BOOK_COMIC || hfVar == hf.COMIC_BOOK) {
            m1679else();
            m1685try();
        }
        m1683new();
        x4.m2958native(p0.m1999class() + "/ver9/base/rd_bg_conf.html", 2592000000L, xwVar2, new w4("SP_HOST_SHUC_XS_KEY"));
        String m2620do2 = tt.m2620do("SP_YU_POOLS_KEY", "");
        if (!TextUtils.isEmpty(m2620do2)) {
            try {
                JSONObject m2961super2 = x4.m2961super(m2620do2, 0L, xwVar);
                if (m2961super2 != null && (optJSONObject = m2961super2.optJSONObject("data")) != null && (optJSONArray = optJSONObject.optJSONArray("try_try")) != null && optJSONArray.length() > 0) {
                    tt.f4763do.putString("SP_YU_POOLS_HOST_VALUE_KEY", optJSONArray.optString(dg.f857do.nextInt(optJSONArray.length())));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (w0.m2890static()) {
            try {
                BarrageConfigBean barrageConfigBean = Ccontinue.m379if().f715goto;
                if (barrageConfigBean != null) {
                    String get_txtlink_dm = barrageConfigBean.getGet_txtlink_dm();
                    if (!TextUtils.isEmpty(get_txtlink_dm) && (m2961super = x4.m2961super(get_txtlink_dm, 0L, xwVar)) != null && (optJSONArray2 = m2961super.optJSONArray("data")) != null && optJSONArray2.length() > 0) {
                        ArrayList arrayList = new ArrayList();
                        for (int i = 0; i < optJSONArray2.length(); i++) {
                            JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i);
                            if (optJSONObject2 != null) {
                                String optString = optJSONObject2.optString("label");
                                String optString2 = optJSONObject2.optString("color");
                                String optString3 = optJSONObject2.optString("clickto");
                                String optString4 = optJSONObject2.optString("c_extra");
                                String optString5 = optJSONObject2.optString("pkg");
                                String optString6 = optJSONObject2.optString("pre_Str");
                                String optString7 = optJSONObject2.optString("pre_Ico");
                                String optString8 = optJSONObject2.optString("bgcolor");
                                BarrageBean barrageBean = new BarrageBean(optString, optString2);
                                barrageBean.setClickto(optString3);
                                barrageBean.setC_extra(optString4);
                                barrageBean.setPkg(optString5);
                                barrageBean.setPre_Str(optString6);
                                barrageBean.setPre_Ico(optString7);
                                barrageBean.setBgcolor(optString8);
                                arrayList.add(barrageBean);
                                if (!TextUtils.isEmpty(optString7)) {
                                    u.m2644do(optString7);
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            BarrageDataUtils.getInstance().setAdBarrageBeanLists(arrayList);
                        }
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        NewShareDisBean m382for = Ccontinue.m379if().m382for();
        if (m382for != null && !TextUtils.isEmpty(w0.m2869class())) {
            if (m382for.isOnlyCheckTime()) {
                String m2879goto = w0.m2879goto();
                if (!TextUtils.isEmpty(m2879goto)) {
                    long m1493catch = kg.m1493catch(m2879goto, kg.f2535do);
                    String m2870const = w0.m2870const();
                    if (!TextUtils.isEmpty(m2870const)) {
                        currentTimeMillis = kg.m1493catch(m2870const, kg.f2535do);
                    } else {
                        currentTimeMillis = System.currentTimeMillis();
                    }
                    if (currentTimeMillis < m1493catch && System.currentTimeMillis() < m1493catch) {
                        m1680for();
                    }
                }
            } else {
                m1680for();
            }
        }
        x4.m2958native(w.m2839catch(), 604800000L, xwVar2, new k0("SP_HOST_SHUC_XS_KEY"));
    }

    /* renamed from: try  reason: not valid java name */
    public static void m1685try() {
        String m2620do;
        String str;
        String m2620do2;
        List<ComicCollectBean> m1791volatile;
        boolean m2881import = w0.m2881import();
        if (m2881import) {
            m2620do = tt.m2620do("SP_AOTU_ADD_CRATTON_SHELD_IDS_MAN_KEY", "");
        } else {
            m2620do = tt.m2620do("SP_AOTU_ADD_CRATTON_SHELD_IDS_LADY_KEY", "");
        }
        if (TextUtils.isEmpty(m2620do)) {
            str = "";
        } else {
            str = Cgoto.m989case(!TextUtils.isEmpty("") ? Cgoto.m989case("", ",") : "", m2620do);
        }
        if (m2881import) {
            m2620do2 = tt.m2620do("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_MAN_KEY", "");
        } else {
            m2620do2 = tt.m2620do("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_LADY_KEY", "");
        }
        if (!TextUtils.isEmpty(m2620do2)) {
            if (!TextUtils.isEmpty(str)) {
                str = Cgoto.m989case(str, ",");
            }
            str = Cgoto.m989case(str, m2620do2);
        }
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(",");
            if (split.length > 0) {
                try {
                    for (String str2 : split) {
                        String str3 = "SP_COMIC_SHELF_TUIGUANG_ID_KEY" + str2;
                        if (!ze.m3179private(str3, false)) {
                            if (mu.m1766finally(str2) != null) {
                                tt.f4763do.putBoolean(str3, true);
                            } else {
                                ComicBean m3134super = z2.m3134super(str2, false);
                                if (m3134super != null) {
                                    mu.v(m3134super, "", "", "", 1, false, false);
                                    tt.f4763do.putBoolean(str3, true);
                                    ze.V();
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                ze.Y(true);
                ze.W("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_MAN_KEY");
                ze.W("SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_LADY_KEY");
            }
        }
        try {
            if (ze.m3179private("SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY", false) && (m1791volatile = mu.m1791volatile()) != null && m1791volatile.size() > 0) {
                String[] strArr = new String[m1791volatile.size()];
                for (int i = 0; i < m1791volatile.size(); i++) {
                    strArr[i] = m1791volatile.get(i).getCollectId();
                }
                mu.t(strArr);
                ze.V();
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            ze.W("SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY");
            throw th;
        }
        ze.W("SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY");
    }
}
