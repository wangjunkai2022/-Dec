package com.biquge.ebook.app.app;

import android.app.ActivityManager;
import android.app.Service;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.app.NotificationCompat;
import com.apk.eg;
import com.apk.gg;
import com.apk.n2;
import com.apk.o;
import com.apk.o0;
import com.apk.p0;
import com.apk.w;
import com.apk.ze;
import com.biquge.ebook.app.bean.CacheFailedBean;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.hjq.toast.ToastUtils;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kimi.wuhends.ebooks.R;
import org.litepal.LitePal;

/* loaded from: classes8.dex */
public class AppService extends Service {

    /* renamed from: do  reason: not valid java name */
    public static gg<String, Cif> f6400do;

    /* renamed from: for  reason: not valid java name */
    public static gg<String, String> f6401for;

    /* renamed from: if  reason: not valid java name */
    public static gg<String, Cfor> f6402if;

    /* renamed from: com.biquge.ebook.app.app.AppService$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cfor extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: case  reason: not valid java name */
        public boolean f6403case;

        /* renamed from: do  reason: not valid java name */
        public ComicCollectBean f6404do;

        /* renamed from: for  reason: not valid java name */
        public final String f6405for;

        /* renamed from: if  reason: not valid java name */
        public final String f6406if;

        /* renamed from: new  reason: not valid java name */
        public String f6407new;

        /* renamed from: try  reason: not valid java name */
        public int f6408try;

        public Cfor(String str, String str2, String str3, Cdo cdo) {
            this.f6406if = str;
            this.f6405for = str2;
            this.f6407new = str3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0119, code lost:
            r16.f6408try = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0166, code lost:
            r16.f6408try = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0168, code lost:
            r10 = r11;
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x028f  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0291  */
        /* JADX WARN: Removed duplicated region for block: B:116:0x0294 A[Catch: Exception -> 0x02ef, TryCatch #4 {Exception -> 0x02ef, blocks: (B:3:0x000a, B:6:0x001b, B:8:0x0023, B:9:0x003e, B:11:0x006c, B:12:0x007e, B:14:0x0097, B:16:0x009d, B:17:0x00a1, B:19:0x00a7, B:25:0x00f4, B:26:0x00f8, B:38:0x0123, B:57:0x0171, B:58:0x0174, B:60:0x0182, B:63:0x0190, B:65:0x019c, B:67:0x01a6, B:69:0x01b0, B:74:0x01ca, B:79:0x01d7, B:98:0x0242, B:111:0x0287, B:116:0x0294, B:118:0x029a, B:120:0x02a3, B:129:0x02ce, B:110:0x0284, B:128:0x02cb, B:97:0x023f, B:76:0x01d1, B:131:0x02d5, B:133:0x02e0, B:132:0x02db, B:134:0x02ec, B:37:0x0120, B:72:0x01bb, B:27:0x00fc, B:31:0x0107, B:33:0x0119, B:81:0x01f0, B:83:0x01fa, B:85:0x0206, B:87:0x020c, B:90:0x0219, B:92:0x0226, B:94:0x0231, B:93:0x022c, B:123:0x02a9, B:125:0x02b3, B:20:0x00ad, B:22:0x00c7), top: B:147:0x000a, inners: #1, #3, #5, #6, #8 }] */
        /* JADX WARN: Removed duplicated region for block: B:122:0x02a8  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x02d5 A[Catch: Exception -> 0x02ef, TryCatch #4 {Exception -> 0x02ef, blocks: (B:3:0x000a, B:6:0x001b, B:8:0x0023, B:9:0x003e, B:11:0x006c, B:12:0x007e, B:14:0x0097, B:16:0x009d, B:17:0x00a1, B:19:0x00a7, B:25:0x00f4, B:26:0x00f8, B:38:0x0123, B:57:0x0171, B:58:0x0174, B:60:0x0182, B:63:0x0190, B:65:0x019c, B:67:0x01a6, B:69:0x01b0, B:74:0x01ca, B:79:0x01d7, B:98:0x0242, B:111:0x0287, B:116:0x0294, B:118:0x029a, B:120:0x02a3, B:129:0x02ce, B:110:0x0284, B:128:0x02cb, B:97:0x023f, B:76:0x01d1, B:131:0x02d5, B:133:0x02e0, B:132:0x02db, B:134:0x02ec, B:37:0x0120, B:72:0x01bb, B:27:0x00fc, B:31:0x0107, B:33:0x0119, B:81:0x01f0, B:83:0x01fa, B:85:0x0206, B:87:0x020c, B:90:0x0219, B:92:0x0226, B:94:0x0231, B:93:0x022c, B:123:0x02a9, B:125:0x02b3, B:20:0x00ad, B:22:0x00c7), top: B:147:0x000a, inners: #1, #3, #5, #6, #8 }] */
        /* JADX WARN: Removed duplicated region for block: B:132:0x02db A[Catch: Exception -> 0x02ef, TryCatch #4 {Exception -> 0x02ef, blocks: (B:3:0x000a, B:6:0x001b, B:8:0x0023, B:9:0x003e, B:11:0x006c, B:12:0x007e, B:14:0x0097, B:16:0x009d, B:17:0x00a1, B:19:0x00a7, B:25:0x00f4, B:26:0x00f8, B:38:0x0123, B:57:0x0171, B:58:0x0174, B:60:0x0182, B:63:0x0190, B:65:0x019c, B:67:0x01a6, B:69:0x01b0, B:74:0x01ca, B:79:0x01d7, B:98:0x0242, B:111:0x0287, B:116:0x0294, B:118:0x029a, B:120:0x02a3, B:129:0x02ce, B:110:0x0284, B:128:0x02cb, B:97:0x023f, B:76:0x01d1, B:131:0x02d5, B:133:0x02e0, B:132:0x02db, B:134:0x02ec, B:37:0x0120, B:72:0x01bb, B:27:0x00fc, B:31:0x0107, B:33:0x0119, B:81:0x01f0, B:83:0x01fa, B:85:0x0206, B:87:0x020c, B:90:0x0219, B:92:0x0226, B:94:0x0231, B:93:0x022c, B:123:0x02a9, B:125:0x02b3, B:20:0x00ad, B:22:0x00c7), top: B:147:0x000a, inners: #1, #3, #5, #6, #8 }] */
        /* JADX WARN: Removed duplicated region for block: B:148:0x01f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:173:0x02ce A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x01ca A[Catch: Exception -> 0x02ef, TRY_ENTER, TryCatch #4 {Exception -> 0x02ef, blocks: (B:3:0x000a, B:6:0x001b, B:8:0x0023, B:9:0x003e, B:11:0x006c, B:12:0x007e, B:14:0x0097, B:16:0x009d, B:17:0x00a1, B:19:0x00a7, B:25:0x00f4, B:26:0x00f8, B:38:0x0123, B:57:0x0171, B:58:0x0174, B:60:0x0182, B:63:0x0190, B:65:0x019c, B:67:0x01a6, B:69:0x01b0, B:74:0x01ca, B:79:0x01d7, B:98:0x0242, B:111:0x0287, B:116:0x0294, B:118:0x029a, B:120:0x02a3, B:129:0x02ce, B:110:0x0284, B:128:0x02cb, B:97:0x023f, B:76:0x01d1, B:131:0x02d5, B:133:0x02e0, B:132:0x02db, B:134:0x02ec, B:37:0x0120, B:72:0x01bb, B:27:0x00fc, B:31:0x0107, B:33:0x0119, B:81:0x01f0, B:83:0x01fa, B:85:0x0206, B:87:0x020c, B:90:0x0219, B:92:0x0226, B:94:0x0231, B:93:0x022c, B:123:0x02a9, B:125:0x02b3, B:20:0x00ad, B:22:0x00c7), top: B:147:0x000a, inners: #1, #3, #5, #6, #8 }] */
        /* JADX WARN: Removed duplicated region for block: B:79:0x01d7 A[Catch: Exception -> 0x02ef, TRY_LEAVE, TryCatch #4 {Exception -> 0x02ef, blocks: (B:3:0x000a, B:6:0x001b, B:8:0x0023, B:9:0x003e, B:11:0x006c, B:12:0x007e, B:14:0x0097, B:16:0x009d, B:17:0x00a1, B:19:0x00a7, B:25:0x00f4, B:26:0x00f8, B:38:0x0123, B:57:0x0171, B:58:0x0174, B:60:0x0182, B:63:0x0190, B:65:0x019c, B:67:0x01a6, B:69:0x01b0, B:74:0x01ca, B:79:0x01d7, B:98:0x0242, B:111:0x0287, B:116:0x0294, B:118:0x029a, B:120:0x02a3, B:129:0x02ce, B:110:0x0284, B:128:0x02cb, B:97:0x023f, B:76:0x01d1, B:131:0x02d5, B:133:0x02e0, B:132:0x02db, B:134:0x02ec, B:37:0x0120, B:72:0x01bb, B:27:0x00fc, B:31:0x0107, B:33:0x0119, B:81:0x01f0, B:83:0x01fa, B:85:0x0206, B:87:0x020c, B:90:0x0219, B:92:0x0226, B:94:0x0231, B:93:0x022c, B:123:0x02a9, B:125:0x02b3, B:20:0x00ad, B:22:0x00c7), top: B:147:0x000a, inners: #1, #3, #5, #6, #8 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean doInBackground(java.lang.Void[] r17) {
            /*
                Method dump skipped, instructions count: 758
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.app.AppService.Cfor.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue() && this.f6404do.getMax() == this.f6404do.getProgress()) {
                this.f6404do.setState(2);
                o0.m1925else().m1930const(this.f6404do);
                ToastUtils.show((CharSequence) ze.r(R.string.download_progress_finish_txt, this.f6405for));
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("state", (Integer) 2);
                    contentValues.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.f6404do.getProgress()));
                    LitePal.updateAll(ComicCollectBean.class, contentValues, "collectId = ?", this.f6404do.getCollectId());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                if (this.f6403case) {
                    this.f6404do.setState(5);
                } else {
                    this.f6404do.setState(-1);
                }
                o0.m1925else().m1930const(this.f6404do);
            }
            gg<String, Cfor> ggVar = AppService.f6402if;
            if (ggVar != null) {
                ggVar.remove(this.f6404do.getCollectId());
            }
            if (this.f6403case) {
                o0 m1925else = o0.m1925else();
                String str = this.f6406if;
                if (m1925else != null) {
                    try {
                        if (m1925else.f3336new != null) {
                            Iterator it = ((HashSet) m1925else.f3336new.entrySet()).iterator();
                            while (it.hasNext()) {
                                String str2 = (String) ((Map.Entry) it.next()).getKey();
                                if (!str2.equals(str)) {
                                    m1925else.m1928catch(str2);
                                }
                            }
                            return;
                        }
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                throw null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            try {
                ComicCollectBean comicCollectBean = o0.m1925else().f3336new.get(this.f6406if);
                if (comicCollectBean != null) {
                    this.f6404do = comicCollectBean;
                } else {
                    this.f6404do = (ComicCollectBean) LitePal.where("collectId = ?", this.f6406if).findFirst(ComicCollectBean.class);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f6404do == null) {
                ComicCollectBean comicCollectBean2 = new ComicCollectBean();
                this.f6404do = comicCollectBean2;
                comicCollectBean2.setCollectId(this.f6406if);
                this.f6404do.setName(this.f6405for);
                this.f6404do.setMax(0);
                this.f6404do.setProgress(0);
            }
            this.f6404do.setState(3);
            this.f6408try = this.f6404do.getProgress();
            o0.m1925else().m1930const(this.f6404do);
            this.f6403case = false;
        }
    }

    /* renamed from: com.biquge.ebook.app.app.AppService$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static class Cif extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: do  reason: not valid java name */
        public CollectBook f6409do;

        /* renamed from: for  reason: not valid java name */
        public final String f6410for;

        /* renamed from: if  reason: not valid java name */
        public final String f6411if;

        /* renamed from: new  reason: not valid java name */
        public int f6412new;

        public Cif(String str, String str2, Cdo cdo) {
            this.f6411if = str;
            this.f6410for = str2;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(10:24|(2:28|(2:30|(4:32|(2:33|(1:47)(2:35|(3:38|39|(1:41)(0))(1:37)))|42|(2:44|(1:46))))(2:48|(1:50)(11:51|(2:53|(1:55))|56|(1:60)|61|(2:65|(1:73)(2:70|71))|78|79|(3:83|(3:86|(2:89|90)(1:88)|84)|91)(0)|93|94)))|97|61|(4:63|65|(2:67|74)(1:75)|73)|78|79|(4:81|83|(1:84)|91)(0)|93|94) */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x01f9, code lost:
            r13 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x01fa, code lost:
            r13.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0076 A[Catch: Exception -> 0x0200, TryCatch #0 {Exception -> 0x0200, blocks: (B:3:0x0004, B:5:0x000d, B:7:0x0019, B:8:0x001e, B:10:0x0022, B:11:0x0026, B:14:0x003f, B:22:0x006c, B:23:0x006d, B:25:0x0076, B:28:0x00a0, B:30:0x00a6, B:32:0x00bb, B:34:0x00d3, B:36:0x00df, B:39:0x00ec, B:41:0x00f2, B:43:0x0102, B:45:0x0106, B:46:0x0109, B:47:0x010c, B:49:0x0110, B:51:0x011c, B:52:0x0123, B:54:0x012b, B:55:0x012e, B:57:0x0136, B:59:0x0142, B:60:0x0148, B:62:0x0154, B:64:0x015c, B:66:0x0160, B:68:0x0165, B:71:0x0176, B:73:0x0179, B:76:0x017f, B:93:0x01fd, B:92:0x01fa, B:26:0x0085, B:15:0x004a, B:17:0x0052, B:21:0x0062, B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:99:0x0004, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0085 A[Catch: Exception -> 0x0200, TryCatch #0 {Exception -> 0x0200, blocks: (B:3:0x0004, B:5:0x000d, B:7:0x0019, B:8:0x001e, B:10:0x0022, B:11:0x0026, B:14:0x003f, B:22:0x006c, B:23:0x006d, B:25:0x0076, B:28:0x00a0, B:30:0x00a6, B:32:0x00bb, B:34:0x00d3, B:36:0x00df, B:39:0x00ec, B:41:0x00f2, B:43:0x0102, B:45:0x0106, B:46:0x0109, B:47:0x010c, B:49:0x0110, B:51:0x011c, B:52:0x0123, B:54:0x012b, B:55:0x012e, B:57:0x0136, B:59:0x0142, B:60:0x0148, B:62:0x0154, B:64:0x015c, B:66:0x0160, B:68:0x0165, B:71:0x0176, B:73:0x0179, B:76:0x017f, B:93:0x01fd, B:92:0x01fa, B:26:0x0085, B:15:0x004a, B:17:0x0052, B:21:0x0062, B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:99:0x0004, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00df A[Catch: Exception -> 0x0200, TryCatch #0 {Exception -> 0x0200, blocks: (B:3:0x0004, B:5:0x000d, B:7:0x0019, B:8:0x001e, B:10:0x0022, B:11:0x0026, B:14:0x003f, B:22:0x006c, B:23:0x006d, B:25:0x0076, B:28:0x00a0, B:30:0x00a6, B:32:0x00bb, B:34:0x00d3, B:36:0x00df, B:39:0x00ec, B:41:0x00f2, B:43:0x0102, B:45:0x0106, B:46:0x0109, B:47:0x010c, B:49:0x0110, B:51:0x011c, B:52:0x0123, B:54:0x012b, B:55:0x012e, B:57:0x0136, B:59:0x0142, B:60:0x0148, B:62:0x0154, B:64:0x015c, B:66:0x0160, B:68:0x0165, B:71:0x0176, B:73:0x0179, B:76:0x017f, B:93:0x01fd, B:92:0x01fa, B:26:0x0085, B:15:0x004a, B:17:0x0052, B:21:0x0062, B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:99:0x0004, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0123 A[Catch: Exception -> 0x0200, TryCatch #0 {Exception -> 0x0200, blocks: (B:3:0x0004, B:5:0x000d, B:7:0x0019, B:8:0x001e, B:10:0x0022, B:11:0x0026, B:14:0x003f, B:22:0x006c, B:23:0x006d, B:25:0x0076, B:28:0x00a0, B:30:0x00a6, B:32:0x00bb, B:34:0x00d3, B:36:0x00df, B:39:0x00ec, B:41:0x00f2, B:43:0x0102, B:45:0x0106, B:46:0x0109, B:47:0x010c, B:49:0x0110, B:51:0x011c, B:52:0x0123, B:54:0x012b, B:55:0x012e, B:57:0x0136, B:59:0x0142, B:60:0x0148, B:62:0x0154, B:64:0x015c, B:66:0x0160, B:68:0x0165, B:71:0x0176, B:73:0x0179, B:76:0x017f, B:93:0x01fd, B:92:0x01fa, B:26:0x0085, B:15:0x004a, B:17:0x0052, B:21:0x0062, B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:99:0x0004, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0165 A[Catch: Exception -> 0x0200, TryCatch #0 {Exception -> 0x0200, blocks: (B:3:0x0004, B:5:0x000d, B:7:0x0019, B:8:0x001e, B:10:0x0022, B:11:0x0026, B:14:0x003f, B:22:0x006c, B:23:0x006d, B:25:0x0076, B:28:0x00a0, B:30:0x00a6, B:32:0x00bb, B:34:0x00d3, B:36:0x00df, B:39:0x00ec, B:41:0x00f2, B:43:0x0102, B:45:0x0106, B:46:0x0109, B:47:0x010c, B:49:0x0110, B:51:0x011c, B:52:0x0123, B:54:0x012b, B:55:0x012e, B:57:0x0136, B:59:0x0142, B:60:0x0148, B:62:0x0154, B:64:0x015c, B:66:0x0160, B:68:0x0165, B:71:0x0176, B:73:0x0179, B:76:0x017f, B:93:0x01fd, B:92:0x01fa, B:26:0x0085, B:15:0x004a, B:17:0x0052, B:21:0x0062, B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:99:0x0004, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01a5 A[Catch: Exception -> 0x01f9, TryCatch #1 {Exception -> 0x01f9, blocks: (B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:100:0x0191, outer: #0 }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01b5 A[Catch: Exception -> 0x01f9, TryCatch #1 {Exception -> 0x01f9, blocks: (B:79:0x0191, B:81:0x01a5, B:83:0x01ab, B:84:0x01af, B:86:0x01b5, B:89:0x01e4), top: B:100:0x0191, outer: #0 }] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean doInBackground(java.lang.Void[] r13) {
            /*
                Method dump skipped, instructions count: 519
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.app.AppService.Cif.doInBackground(java.lang.Object[]):java.lang.Object");
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue() && this.f6409do.getMax() == this.f6409do.getProgress() && this.f6409do.getMax() != 0) {
                this.f6409do.setState(2);
                o0.m1925else().m1929class(this.f6409do);
                ToastUtils.show((CharSequence) ze.r(R.string.download_progress_finish_txt, this.f6410for));
                AppService.m3297catch(this.f6411if, this.f6409do.getMax(), this.f6409do.getProgress(), -1, 2);
            } else {
                this.f6409do.setState(-1);
                o0.m1925else().m1929class(this.f6409do);
            }
            gg<String, Cif> ggVar = AppService.f6400do;
            if (ggVar != null) {
                ggVar.remove(this.f6409do.getCollectId());
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            try {
                CollectBook m1927case = o0.m1925else().m1927case(this.f6411if);
                if (m1927case != null) {
                    this.f6409do = m1927case;
                } else {
                    this.f6409do = (CollectBook) LitePal.where("collectId = ?", this.f6411if).findFirst(CollectBook.class);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.f6409do == null) {
                CollectBook collectBook = new CollectBook();
                this.f6409do = collectBook;
                collectBook.setCollectId(this.f6411if);
                this.f6409do.setName(this.f6410for);
                this.f6409do.setMax(0);
                this.f6409do.setProgress(0);
                this.f6409do.setPercentage(0);
            }
            this.f6409do.setState(3);
            this.f6412new = this.f6409do.getProgress();
            o0.m1925else().m1929class(this.f6409do);
        }
    }

    /* renamed from: break  reason: not valid java name */
    public static boolean m3295break(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null || (runningServices = activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) == null || runningServices.size() == 0) {
            return false;
        }
        for (int i = 0; i < runningServices.size(); i++) {
            ActivityManager.RunningServiceInfo runningServiceInfo = runningServices.get(i);
            if (runningServiceInfo.process.equals(ze.m3168finally()) && runningServiceInfo.service.getClassName().equals(AppService.class.getName())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: case  reason: not valid java name */
    public static synchronized void m3296case(boolean z, String str, String str2) {
        synchronized (AppService.class) {
            if (f6400do != null) {
                gg<String, Cif> ggVar = f6400do;
                ggVar.m957do();
                if (ggVar.f1563if.containsKey(str)) {
                    return;
                }
            }
            if (z) {
                ToastUtils.show((int) R.string.download_add_queue_txt);
            }
            gg<String, String> ggVar2 = o0.m1925else().f3333do;
            if (ggVar2 != null) {
                ggVar2.remove(str);
            }
            Cif cif = new Cif(str, str2, null);
            o m1921for = o.m1921for();
            if (m1921for.f3331try == null) {
                m1921for.f3331try = new ThreadPoolExecutor(1, 11, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
            }
            cif.executeOnExecutor(m1921for.f3331try, new Void[0]);
            if (f6400do == null) {
                f6400do = new gg<>();
            }
            f6400do.put(str, cif);
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public static void m3297catch(String str, int i, int i2, int i3, int i4) {
        try {
            if (o0.m1925else().m1934goto(str)) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("max", Integer.valueOf(i));
            contentValues.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(i2));
            if (i3 >= 0) {
                contentValues.put("percentage", Integer.valueOf(i3));
            }
            if (i4 != -1) {
                contentValues.put("state", Integer.valueOf(i4));
            }
            LitePal.updateAll(CollectBook.class, contentValues, "collectId = ?", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: do  reason: not valid java name */
    public static int m3298do(String str, List list) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        for (int i = 0; i < list.size(); i++) {
            if (str.equals(((ChapterBean) list.get(i)).getOid())) {
                return i;
            }
        }
        return 0;
    }

    /* renamed from: else  reason: not valid java name */
    public static synchronized void m3299else(boolean z, String str, String str2, String str3) {
        synchronized (AppService.class) {
            Cfor cfor = f6402if != null ? f6402if.get(str) : null;
            if (z) {
                ToastUtils.show((int) R.string.download_add_queue_txt);
            }
            if (cfor != null) {
                if (!TextUtils.isEmpty(str3)) {
                    if (f6401for == null) {
                        f6401for = new gg<>();
                    }
                    f6401for.put(str, str3);
                }
                return;
            }
            gg<String, String> ggVar = o0.m1925else().f3334for;
            if (ggVar != null) {
                ggVar.remove(str);
            }
            Cfor cfor2 = new Cfor(str, str2, str3, null);
            o m1921for = o.m1921for();
            if (m1921for.f3326case == null) {
                m1921for.f3326case = new ThreadPoolExecutor(1, 11, 1L, TimeUnit.HOURS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.AbortPolicy());
            }
            cfor2.executeOnExecutor(m1921for.f3326case, new Void[0]);
            if (f6402if == null) {
                f6402if = new gg<>();
            }
            f6402if.put(str, cfor2);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public static String m3300for(String str) {
        return str;
    }

    /* renamed from: goto  reason: not valid java name */
    public static ComicChapterBean m3301goto(String str, String str2) {
        return (ComicChapterBean) LitePal.where("novelId = ? and oid = ?", str, str2).findFirst(ComicChapterBean.class);
    }

    /* renamed from: if  reason: not valid java name */
    public static boolean m3302if(String str, CollectBook collectBook, WebSiteBean webSiteBean, ChapterBean chapterBean, int i) {
        boolean z;
        boolean m600implements = eg.m600implements();
        if (m600implements && !o0.m1925else().m1934goto(str)) {
            if ("ROLLNAME_LAYOUT_KEY".equals(chapterBean.getUrl()) || (n2.k(str, chapterBean.getOid()) && chapterBean.isHasContent())) {
                z = true;
            } else {
                try {
                    z = n2.m1837super(str, chapterBean.getOid(), webSiteBean == null ? w.m2850if(p0.m2003final(str), str, chapterBean.getOid()) : "", false, webSiteBean, false);
                } catch (Exception e) {
                    e.printStackTrace();
                    z = false;
                }
            }
            if (i != -1) {
                int i2 = i + 1;
                if (z) {
                    collectBook.setState(0);
                    collectBook.setProgress(i2);
                    o0.m1925else().m1929class(collectBook);
                    m3297catch(str, collectBook.getMax(), i2, -1, 0);
                    return false;
                }
                try {
                    if (((CacheFailedBean) LitePal.where("novelId = ? and chapterId = ?", chapterBean.getNovelId(), chapterBean.getOid()).findFirst(CacheFailedBean.class)) == null) {
                        new CacheFailedBean(i2, chapterBean.getNovelId(), chapterBean.getOid(), chapterBean.getUrl()).save();
                        return false;
                    }
                    return false;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
            return false;
        }
        if (!m600implements) {
            collectBook.setState(-1);
        } else {
            collectBook.setState(1);
        }
        o0.m1925else().m1929class(collectBook);
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public static void m3303new(String str) {
        try {
            if (f6400do != null) {
                gg<String, Cif> ggVar = f6400do;
                ggVar.m957do();
                if (ggVar.f1563if.containsKey(str)) {
                    Cif cif = f6400do.get(str);
                    f6400do.remove(str);
                    if (cif != null) {
                        cif.cancel(true);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public static void m3304this(Context context) {
        try {
            if (m3295break(context)) {
                return;
            }
            context.startService(new Intent(context, AppService.class));
        } catch (Exception e) {
            e.printStackTrace();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public static void m3305try(String str) {
        try {
            if (f6402if != null) {
                gg<String, Cfor> ggVar = f6402if;
                ggVar.m957do();
                if (ggVar.f1563if.containsKey(str)) {
                    Cfor cfor = f6402if.get(str);
                    if (cfor != null) {
                        cfor.cancel(true);
                    }
                    f6402if.remove(str);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
