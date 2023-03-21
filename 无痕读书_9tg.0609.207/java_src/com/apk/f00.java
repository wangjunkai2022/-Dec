package com.apk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import com.apk.Cimport;
import com.apk.f00;
import com.apk.mi;
import com.apk.u20;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.manhua.adapter.ComicRecyclerViewAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.ZoomRecyclerView;
import com.manhua.ui.widget.barrage.BarrageBean;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.manhua.ui.widget.barrage.BarrageView;
import com.swl.gg.sdk.TrAdSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kimi.wuhends.ebooks.R;
import org.json.JSONArray;
/* compiled from: ComicReadPresenter.java */
/* loaded from: classes8.dex */
public class f00 extends qz<k00> implements u20.Cfor {

    /* renamed from: abstract  reason: not valid java name */
    public final BarrageDataUtils.OnBarrageListener f1167abstract;

    /* renamed from: break  reason: not valid java name */
    public final e00 f1168break;

    /* renamed from: case  reason: not valid java name */
    public String f1169case;

    /* renamed from: catch  reason: not valid java name */
    public ComicReaderViewpager f1170catch;

    /* renamed from: class  reason: not valid java name */
    public lz f1171class;

    /* renamed from: const  reason: not valid java name */
    public ZoomRecyclerView f1172const;

    /* renamed from: continue  reason: not valid java name */
    public boolean f1173continue;

    /* renamed from: default  reason: not valid java name */
    public final gg<String, String> f1174default;

    /* renamed from: else  reason: not valid java name */
    public int f1175else;

    /* renamed from: extends  reason: not valid java name */
    public final Cimport.Ctry f1176extends;

    /* renamed from: final  reason: not valid java name */
    public ComicRecyclerViewAdapter f1177final;

    /* renamed from: finally  reason: not valid java name */
    public final l00 f1178finally;

    /* renamed from: for  reason: not valid java name */
    public ComicBean f1179for;

    /* renamed from: goto  reason: not valid java name */
    public int f1180goto;

    /* renamed from: import  reason: not valid java name */
    public final k1 f1181import;

    /* renamed from: native  reason: not valid java name */
    public int f1182native;

    /* renamed from: new  reason: not valid java name */
    public ComicCollectBean f1183new;

    /* renamed from: package  reason: not valid java name */
    public boolean f1184package;

    /* renamed from: private  reason: not valid java name */
    public boolean f1185private;

    /* renamed from: public  reason: not valid java name */
    public int f1186public;

    /* renamed from: return  reason: not valid java name */
    public BookChapter f1187return;

    /* renamed from: static  reason: not valid java name */
    public boolean f1188static;

    /* renamed from: strictfp  reason: not valid java name */
    public boolean f1189strictfp;

    /* renamed from: super  reason: not valid java name */
    public final Cimport f1190super;

    /* renamed from: switch  reason: not valid java name */
    public final Map<String, String> f1191switch;

    /* renamed from: this  reason: not valid java name */
    public boolean f1192this;

    /* renamed from: throw  reason: not valid java name */
    public zg f1193throw;

    /* renamed from: throws  reason: not valid java name */
    public String f1194throws;

    /* renamed from: try  reason: not valid java name */
    public String f1195try;

    /* renamed from: volatile  reason: not valid java name */
    public final pz f1196volatile;

    /* renamed from: while  reason: not valid java name */
    public final Handler f1197while;

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements Cimport.Ctry {
        public Ccase() {
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: do  reason: not valid java name */
        public void mo732do() {
            if (f00.this.f1190super.m1257try()) {
                f00 f00Var = f00.this;
                Cimport cimport = f00Var.f1190super;
                if (cimport.f2182new) {
                    return;
                }
                cimport.m1251else(f00Var.f3971if);
            }
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: for  reason: not valid java name */
        public void mo733for() {
            f00 f00Var = f00.this;
            f00Var.f1185private = false;
            f00.m694for(f00Var, 2);
            if (f00.this.f1190super.m1257try()) {
                f00 f00Var2 = f00.this;
                Cimport cimport = f00Var2.f1190super;
                if (cimport.f2182new) {
                    cimport.m1251else(f00Var2.f3971if);
                }
            }
            GV gv = f00.this.f3970do;
            if (gv != 0) {
                ((k00) gv).mo1405case(false);
            }
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: if  reason: not valid java name */
        public void mo734if() {
            f00.m694for(f00.this, 3);
        }

        @Override // com.apk.Cimport.Ctry
        public void start() {
            f00 f00Var = f00.this;
            f00Var.f1185private = true;
            f00.m694for(f00Var, 1);
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BarrageDataUtils.OnBarrageListener {
        public Cdo() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageDataUtils.OnBarrageListener
        public void onAddBarrage(BarrageBean barrageBean, boolean z, String str) {
            BarrageView barrageView;
            BarrageView barrageView2;
            if (z && barrageBean != null && f00.this.m706default()) {
                f00 f00Var = f00.this;
                if (f00Var.m709extends()) {
                    try {
                        int lastItem = f00Var.f1172const.getLastItem() + 2;
                        for (int firstItem = f00Var.f1172const.getFirstItem() - 2; firstItem < lastItem; firstItem++) {
                            BookChapter m725super = f00Var.m725super(firstItem);
                            if (m725super != null && (barrageView = (BarrageView) f00Var.f1172const.findViewWithTag(mu.m1760continue(m725super))) != null) {
                                barrageView.addData(f00.m699while(f00Var.f1195try), barrageBean);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    try {
                        BookChapter m710final = f00Var.m710final();
                        if (m710final != null && !f00.m695native(m710final) && (barrageView2 = (BarrageView) f00Var.f1170catch.findViewWithTag(mu.m1760continue(m710final))) != null) {
                            barrageView2.addData(f00.m699while(f00Var.f1195try), barrageBean);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            Toast makeText = Toast.makeText(AppContext.f6392case, str, 0);
            makeText.setGravity(48, 0, 0);
            makeText.show();
        }

        @Override // com.manhua.ui.widget.barrage.BarrageDataUtils.OnBarrageListener
        public void onResultBarrage() {
            BookChapter m710final = f00.this.m710final();
            if (m710final != null) {
                ((k00) f00.this.f3970do).mo1414native(BarrageDataUtils.getInstance().getBarrageCount(f00.m699while(m710final.getChapterId())));
                f00.this.n();
            }
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements l00 {
        public Celse() {
        }

        /* renamed from: do  reason: not valid java name */
        public void m735do() {
            f00 f00Var = f00.this;
            if (f00Var == null) {
                throw null;
            }
            b1 b1Var = new b1();
            b1Var.m143if(f00Var.f3971if);
            b1Var.m141do(new j00(f00Var, false, false));
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements pz {
        public Cfor() {
        }

        @Override // com.apk.pz
        /* renamed from: do  reason: not valid java name */
        public void mo736do(View view, float f, float f2, boolean z) {
            if (z) {
                return;
            }
            if (f00.this != null) {
                if (!da.m430public()) {
                    ((k00) f00.this.f3970do).mo1422throw();
                    return;
                } else if (f00.this.m709extends()) {
                    double d = f2;
                    if (d < 0.15d) {
                        ((k00) f00.this.f3970do).mo1404break();
                        return;
                    } else if (d > 0.7d) {
                        ((k00) f00.this.f3970do).mo1421this();
                        return;
                    } else {
                        ((k00) f00.this.f3970do).mo1422throw();
                        return;
                    }
                } else {
                    double d2 = f;
                    if (d2 < 0.3d) {
                        ((k00) f00.this.f3970do).mo1404break();
                        return;
                    } else if (d2 > 0.7d) {
                        ((k00) f00.this.f3970do).mo1421this();
                        return;
                    } else {
                        ((k00) f00.this.f3970do).mo1422throw();
                        return;
                    }
                }
            }
            throw null;
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicChapterBean f1202do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f1204if;

        public Cgoto(ComicChapterBean comicChapterBean, boolean z) {
            this.f1202do = comicChapterBean;
            this.f1204if = z;
        }

        /* renamed from: do  reason: not valid java name */
        public void m737do(List list, boolean z) {
            try {
                try {
                    if (list.size() > 0) {
                        if (f00.this.m709extends()) {
                            f00.this.f1177final.addData(0, (Collection) list);
                            int size = list.size();
                            if (z) {
                                f00.this.f1172const.scrollToPosition(size - 1);
                            }
                        } else {
                            f00.this.f1171class.f2948case.addAll(0, list);
                            f00.this.f1171class.notifyDataSetChanged();
                            int size2 = list.size();
                            if (z) {
                                if (f00.this.m715import() == 1) {
                                    int i = size2 - 1;
                                    if (i >= 0) {
                                        f00.this.f1170catch.setCurrentItem(i);
                                    }
                                } else {
                                    int currentItem = f00.this.f1170catch.getCurrentItem() + 1;
                                    if (currentItem < f00.this.f1171class.getCount()) {
                                        f00.this.f1170catch.setCurrentItem(currentItem);
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                f00.this.m(false);
                f00.this.f1172const.setLoadUp(false);
            } catch (Throwable th) {
                f00.this.m(false);
                f00.this.f1172const.setLoadUp(false);
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicChapterBean m704const;
            final ArrayList arrayList = new ArrayList();
            String pid = this.f1202do.getPid();
            if (f00.m693case(pid) && (m704const = f00.this.m704const(pid)) != null) {
                if (!f00.m697throws(m704const, false)) {
                    arrayList.addAll(f00.m696new(f00.this, m704const));
                } else if (mu.m1761default(f00.this.m702catch(), pid)) {
                    arrayList.addAll(f00.m696new(f00.this, m704const));
                } else {
                    ((k00) f00.this.f3970do).mo1408const(ze.q(R.string.tips_loadfaild_reload_txt));
                }
            }
            Handler handler = f00.this.f1197while;
            if (handler != null) {
                final boolean z = this.f1204if;
                handler.post(new Runnable() { // from class: com.apk.xz
                    @Override // java.lang.Runnable
                    public final void run() {
                        f00.Cgoto.this.m737do(arrayList, z);
                    }
                });
            }
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ ComicChapterBean f1205do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f1207if;

        public Cif(ComicChapterBean comicChapterBean, boolean z) {
            this.f1205do = comicChapterBean;
            this.f1207if = z;
        }

        /* renamed from: do  reason: not valid java name */
        public void m738do(List list, boolean z) {
            int currentPosition;
            try {
                try {
                    if (list.size() > 0) {
                        if (f00.this.m709extends()) {
                            f00.this.f1177final.addData((Collection) list);
                            if (z && f00.this.f1177final.getItemCount() > (currentPosition = f00.this.f1172const.getCurrentPosition() + 1)) {
                                f00.this.f1172const.scrollToPosition(currentPosition);
                            }
                        } else {
                            f00.this.f1171class.f2948case.addAll(list);
                            f00.this.f1171class.notifyDataSetChanged();
                            if (z) {
                                if (f00.this.m715import() == 1) {
                                    int currentItem = f00.this.f1170catch.getCurrentItem() + 1;
                                    if (currentItem < f00.this.f1171class.getCount()) {
                                        f00.this.f1170catch.setCurrentItem(currentItem);
                                    }
                                } else {
                                    int currentItem2 = f00.this.f1170catch.getCurrentItem() - 1;
                                    if (currentItem2 >= 0) {
                                        f00.this.f1170catch.setCurrentItem(currentItem2);
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                f00.this.m(false);
                f00.this.f1172const.setLoadMore(false);
            } catch (Throwable th) {
                f00.this.m(false);
                f00.this.f1172const.setLoadMore(false);
                throw th;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ComicChapterBean m704const;
            final ArrayList arrayList = new ArrayList();
            String nid = this.f1205do.getNid();
            if (f00.m693case(nid) && (m704const = f00.this.m704const(nid)) != null) {
                if (!f00.m697throws(m704const, false)) {
                    arrayList.addAll(f00.m696new(f00.this, m704const));
                } else if (mu.m1761default(f00.this.m702catch(), nid)) {
                    arrayList.addAll(f00.m696new(f00.this, m704const));
                } else {
                    ((k00) f00.this.f3970do).mo1408const(ze.q(R.string.tips_loadfaild_reload_txt));
                }
            }
            Handler handler = f00.this.f1197while;
            if (handler != null) {
                final boolean z = this.f1207if;
                handler.post(new Runnable() { // from class: com.apk.tz
                    @Override // java.lang.Runnable
                    public final void run() {
                        f00.Cif.this.m738do(arrayList, z);
                    }
                });
            }
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements k1 {
        public Cnew() {
        }

        /* renamed from: case  reason: not valid java name */
        public /* synthetic */ void m739case() {
            ((k00) f00.this.f3970do).mo1415new(true);
            if (f.m683catch() || !f.m682break()) {
                return;
            }
            f00.this.f();
        }

        @Override // com.apk.k1
        /* renamed from: do  reason: not valid java name */
        public void mo740do() {
            Handler handler = f00.this.f1197while;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.wz
                    @Override // java.lang.Runnable
                    public final void run() {
                        f00.Cnew.this.m744try();
                    }
                });
            }
        }

        @Override // com.apk.k1
        /* renamed from: for  reason: not valid java name */
        public void mo741for() {
            Handler handler = f00.this.f1197while;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.uz
                    @Override // java.lang.Runnable
                    public final void run() {
                        f00.Cnew.this.m739case();
                    }
                });
            }
        }

        @Override // com.apk.k1
        /* renamed from: if  reason: not valid java name */
        public void mo742if(final String str) {
            Handler handler = f00.this.f1197while;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.vz
                    @Override // java.lang.Runnable
                    public final void run() {
                        f00.Cnew.this.m743new(str);
                    }
                });
            }
        }

        /* renamed from: new  reason: not valid java name */
        public /* synthetic */ void m743new(String str) {
            e00.m530try(f00.this.m702catch(), str);
        }

        /* renamed from: try  reason: not valid java name */
        public /* synthetic */ void m744try() {
            ((k00) f00.this.f3970do).mo1412if(true);
            if (f.m683catch() || !f.m682break()) {
                return;
            }
            f00.this.f();
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis implements mi.Cdo {
        public Cthis(g00 g00Var) {
        }

        @NonNull
        /* renamed from: do  reason: not valid java name */
        public List<String> m745do(int i) {
            try {
                BookChapter bookChapter = (BookChapter) f00.this.f1177final.getItem(i);
                if (bookChapter != null) {
                    return Collections.singletonList(bookChapter.getImageUrl());
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return Collections.emptyList();
        }
    }

    /* compiled from: ComicReadPresenter.java */
    /* renamed from: com.apk.f00$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {
        public Ctry() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f00 f00Var = f00.this;
            f00Var.j(f00Var.f1175else);
        }
    }

    public f00(Activity activity, Handler handler, k00 k00Var) {
        super(activity, k00Var);
        this.f1181import = new Cnew();
        this.f1191switch = new HashMap();
        this.f1174default = new gg<>();
        this.f1176extends = new Ccase();
        this.f1178finally = new Celse();
        this.f1167abstract = new Cdo();
        this.f1196volatile = new Cfor();
        this.f1197while = handler;
        this.f1168break = new e00();
        this.f1190super = new Cimport(hf.COMIC);
    }

    /* renamed from: case  reason: not valid java name */
    public static boolean m693case(String str) {
        return (TextUtils.isEmpty(str) || "-2".equals(str) || "-1".equals(str)) ? false : true;
    }

    /* renamed from: for  reason: not valid java name */
    public static void m694for(f00 f00Var, int i) {
        if (f00Var == null) {
            throw null;
        }
        mf.m1712do("BOOKRE_CHAPTER_PAGE_AD_TYPE", Integer.valueOf(i));
    }

    /* renamed from: native  reason: not valid java name */
    public static boolean m695native(BookChapter bookChapter) {
        if (bookChapter == null) {
            return false;
        }
        return bookChapter.getItemType() == 2 || bookChapter.getItemType() == 3;
    }

    /* renamed from: new  reason: not valid java name */
    public static List m696new(f00 f00Var, ComicChapterBean comicChapterBean) {
        return f00Var.m727synchronized(comicChapterBean, true);
    }

    /* renamed from: throws  reason: not valid java name */
    public static boolean m697throws(ComicChapterBean comicChapterBean, boolean z) {
        if (comicChapterBean != null && !TextUtils.isEmpty(comicChapterBean.getContent()) && !TextUtils.isEmpty(comicChapterBean.getName()) && !TextUtils.isEmpty(comicChapterBean.getNid())) {
            try {
                if (new JSONArray(comicChapterBean.getContent()).length() >= 0) {
                    if (z) {
                        return !comicChapterBean.isHasContent();
                    }
                    return false;
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    /* renamed from: while  reason: not valid java name */
    public static String m699while(String str) {
        return !TextUtils.isEmpty(str) ? str.replace("LOAD_AD_CHAPTER_ID", "") : str;
    }

    public synchronized void a(boolean z) {
        this.f1172const.setLoadMore(true);
        m(true);
        ComicChapterBean m704const = m704const(this.f1195try);
        if (m704const != null) {
            o.m1921for().m1924new().execute(new Cif(m704const, z));
        } else {
            m(false);
            this.f1172const.setLoadMore(false);
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public void m700abstract() {
        if (this.f1193throw == null) {
            this.f1193throw = new zg(this.f3971if);
        }
        if (this.f1193throw.isShowing()) {
            return;
        }
        this.f1193throw.m3196do(this.f1170catch);
    }

    public synchronized void b(boolean z) {
        if (this.f1173continue) {
            this.f1173continue = false;
            return;
        }
        this.f1172const.setLoadUp(true);
        m(true);
        ComicChapterBean m704const = m704const(this.f1195try);
        if (m704const != null) {
            o.m1921for().m1924new().execute(new Cgoto(m704const, z));
        } else {
            m(false);
            this.f1172const.setLoadUp(false);
        }
    }

    /* renamed from: break  reason: not valid java name */
    public final void m701break(ComicChapterBean comicChapterBean) {
        m(true);
        final ArrayList arrayList = new ArrayList();
        ComicChapterBean m704const = m704const(comicChapterBean.getPid());
        if (m704const != null && m693case(m704const.getOid())) {
            if (!m697throws(m704const, false)) {
                arrayList.addAll(m727synchronized(m704const, true));
            } else {
                arrayList.add(m720protected(m704const));
            }
        }
        Handler handler = this.f1197while;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.apk.a00
                @Override // java.lang.Runnable
                public final void run() {
                    f00.this.m719private(arrayList);
                }
            });
        }
    }

    public final void c(int i) {
        this.f1172const.scrollToPosition(i);
    }

    /* renamed from: catch  reason: not valid java name */
    public final String m702catch() {
        ComicBean comicBean = this.f1179for;
        if (comicBean != null) {
            return comicBean.getId();
        }
        ComicCollectBean comicCollectBean = this.f1183new;
        return comicCollectBean != null ? comicCollectBean.getCollectId() : "";
    }

    /* renamed from: class  reason: not valid java name */
    public final String m703class() {
        ComicBean comicBean = this.f1179for;
        if (comicBean != null) {
            return comicBean.getName();
        }
        ComicCollectBean comicCollectBean = this.f1183new;
        return comicCollectBean != null ? comicCollectBean.getName() : "";
    }

    /* renamed from: const  reason: not valid java name */
    public final ComicChapterBean m704const(String str) {
        boolean z = false;
        ComicChapterBean comicChapterBean = null;
        try {
            if (!TextUtils.isEmpty(str) && str.contains("LOAD_AD_CHAPTER_ID")) {
                str = str.replace("LOAD_AD_CHAPTER_ID", "");
                z = true;
            }
            comicChapterBean = e00.m528if(m702catch(), str);
            if (z) {
                comicChapterBean.setHasContent(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return comicChapterBean;
    }

    /* renamed from: continue  reason: not valid java name */
    public /* synthetic */ void m705continue(boolean z) {
        ((k00) this.f3970do).mo1409do(false, z);
    }

    public void d() {
        try {
            if (this.f1185private) {
                return;
            }
            int currentPosition = m709extends() ? this.f1172const.getCurrentPosition() : this.f1170catch.getCurrentItem();
            if (currentPosition == (m709extends() ? this.f1177final.getItemCount() : this.f1171class.getCount()) - 1) {
                if (m723static(true)) {
                    if (this.f3970do != 0) {
                        ((k00) this.f3970do).mo1413import();
                        return;
                    }
                    return;
                }
                a(true);
            } else if (m709extends()) {
                ((k00) this.f3970do).g(currentPosition + 1);
            } else {
                this.f1170catch.setCurrentItem(currentPosition + 1, true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: default  reason: not valid java name */
    public boolean m706default() {
        if (w0.m2890static()) {
            return ze.m3179private("SP_READ_SHOW_DARRAGE_KEY", true);
        }
        return false;
    }

    @Override // com.apk.u20.Cfor
    /* renamed from: do  reason: not valid java name */
    public void mo707do() {
        this.f1189strictfp = true;
        if (m706default()) {
            BarrageDataUtils.getInstance().setScrollState(false);
        }
    }

    public void e() {
        gg<String, BarrageView> ggVar;
        gg<String, List<String>> ggVar2;
        Cimport cimport = this.f1190super;
        if (cimport != null) {
            cimport.m1249case();
        }
        e00 e00Var = this.f1168break;
        if (e00Var != null && (ggVar2 = e00Var.f978do) != null) {
            ggVar2.clear();
        }
        Handler handler = this.f1197while;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        lz lzVar = this.f1171class;
        if (lzVar != null && (ggVar = lzVar.f2952goto) != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                ((BarrageView) ((Map.Entry) it.next()).getValue()).destory();
            }
            lzVar.f2952goto.clear();
        }
        gg<String, String> ggVar3 = this.f1174default;
        if (ggVar3 != null) {
            ggVar3.clear();
        }
    }

    /* renamed from: else  reason: not valid java name */
    public final void m708else(ComicChapterBean comicChapterBean, final int i) {
        m(true);
        try {
            BookChapter m725super = m725super(m715import() == 0 ? i - 1 : i + 1);
            if (m725super != null) {
                if (m721public(m725super)) {
                    final ArrayList arrayList = new ArrayList();
                    ComicChapterBean m704const = m704const(comicChapterBean.getNid());
                    if (m704const != null) {
                        if (!m697throws(m704const, false)) {
                            arrayList.addAll(m727synchronized(m704const, true));
                        } else if (m721public(m725super)) {
                            arrayList.add(m730transient(m704const));
                        } else {
                            arrayList.add(m720protected(m704const));
                        }
                    }
                    if (this.f1197while != null) {
                        this.f1197while.post(new Runnable() { // from class: com.apk.sz
                            @Override // java.lang.Runnable
                            public final void run() {
                                f00.this.m711finally(i, arrayList);
                            }
                        });
                    }
                }
            } else {
                ComicChapterBean m704const2 = m704const(comicChapterBean.getNid());
                if (m704const2 != null) {
                    final ArrayList arrayList2 = new ArrayList();
                    if (!m697throws(m704const2, false)) {
                        arrayList2.addAll(m727synchronized(m704const2, true));
                    } else {
                        arrayList2.add(m720protected(m704const2));
                    }
                    if (this.f1197while != null) {
                        this.f1197while.post(new Runnable() { // from class: com.apk.yz
                            @Override // java.lang.Runnable
                            public final void run() {
                                f00.this.m718package(arrayList2);
                            }
                        });
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        m(false);
    }

    /* renamed from: extends  reason: not valid java name */
    public final boolean m709extends() {
        return m715import() == 2;
    }

    public boolean f() {
        g m1805new = k30.m1427catch().m1805new();
        if (m1805new != null) {
            if (TrAdSdk.isRewardAdType(m1805new.m899if())) {
                if (e.m520while().m690this()) {
                    return true;
                }
                e.m520while().m522native(m1805new.m899if(), m1805new.m898do(), "read");
                return false;
            } else if (TrAdSdk.isFullAdType(m1805new.m899if())) {
                if (c.m286while().m690this()) {
                    return true;
                }
                c.m286while().m292native(m1805new.m899if(), m1805new.m898do(), "read");
                return false;
            } else {
                return false;
            }
        }
        return false;
    }

    /* renamed from: final  reason: not valid java name */
    public BookChapter m710final() {
        if (m709extends()) {
            ZoomRecyclerView zoomRecyclerView = this.f1172const;
            if (zoomRecyclerView != null) {
                return m725super(zoomRecyclerView.getCurrentPosition());
            }
        } else {
            ComicReaderViewpager comicReaderViewpager = this.f1170catch;
            if (comicReaderViewpager != null) {
                return m725super(comicReaderViewpager.getCurrentItem());
            }
        }
        return null;
    }

    /* renamed from: finally  reason: not valid java name */
    public void m711finally(int i, List list) {
        try {
            try {
                if (m709extends()) {
                    this.f1177final.remove(i + 1);
                    this.f1177final.addData((Collection) list);
                } else {
                    if (m715import() == 0) {
                        this.f1171class.f2948case.remove(i - 1);
                        this.f1171class.f2948case.addAll(0, list);
                    } else {
                        this.f1171class.f2948case.remove(i + 1);
                        this.f1171class.f2948case.addAll(list);
                    }
                    this.f1171class.notifyDataSetChanged();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            m(false);
        }
    }

    public void g() {
        try {
            if (this.f1185private) {
                return;
            }
            if (m709extends()) {
                int currentPosition = this.f1172const.getCurrentPosition();
                if (currentPosition > 0) {
                    ((k00) this.f3970do).g(currentPosition - 1);
                } else if (!m722return()) {
                    b(true);
                }
            } else {
                int currentItem = this.f1170catch.getCurrentItem();
                if (currentItem > 0) {
                    this.f1170catch.setCurrentItem(currentItem - 1, true);
                } else if (!m722return()) {
                    b(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public void m712goto() {
        BookChapter bookChapter = this.f1187return;
        if (bookChapter == null || bookChapter.getItemType() != 2) {
            return;
        }
        String str = this.f1195try + "-" + this.f1175else;
        Cimport cimport = this.f1190super;
        if (cimport != null && !cimport.m1254if(str)) {
            ze.m3186switch(this.f1172const);
        }
        if (m709extends()) {
            Cimport cimport2 = this.f1190super;
            if (cimport2 != null && cimport2.m1257try()) {
                Cimport cimport3 = this.f1190super;
                if (cimport3.f2191try && !cimport3.m1254if(str)) {
                    GV gv = this.f3970do;
                    if (gv != 0) {
                        ((k00) gv).mo1405case(true);
                        return;
                    }
                    return;
                }
            }
            TextView textView = (TextView) this.f1172const.findViewWithTag(mu.m1760continue(m710final()) + "ContinueReadTView");
            if (textView != null) {
                m728this(textView);
                return;
            }
            return;
        }
        TextView textView2 = (TextView) this.f1170catch.findViewWithTag(mu.m1760continue(m710final()) + "ContinueReadTView");
        if (textView2 != null) {
            m728this(textView2);
        }
    }

    public void h() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o.m1921for().m1924new().execute(new Ctry());
        } else {
            j(this.f1175else);
        }
    }

    public void i() {
        try {
            if (this.f1179for != null) {
                BookChapter m710final = m710final();
                mu.v(this.f1179for, this.f1195try, "", m710final != null ? m710final.getChapterName() : "", m710final != null ? m710final.getReadPage() : 0, true, true);
                ze.V();
                v m2734do = v.m2734do();
                m702catch();
                m703class();
                if (m2734do != null) {
                    return;
                }
                throw null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.u20.Cfor
    /* renamed from: if  reason: not valid java name */
    public void mo713if() {
        this.f1189strictfp = false;
        if (m706default()) {
            BarrageDataUtils.getInstance().setScrollState(true);
            if (m709extends()) {
                n();
            }
        }
    }

    /* renamed from: implements  reason: not valid java name */
    public final BookChapter m714implements(String str, String str2, int i, int i2) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m702catch());
        bookChapter.setChapterId("LOAD_AD_CHAPTER_ID" + str);
        bookChapter.setChapterName(str2);
        bookChapter.setAllPage(i);
        bookChapter.setReadPage(i2);
        bookChapter.setItemType(3);
        return bookChapter;
    }

    /* renamed from: import  reason: not valid java name */
    public int m715import() {
        if (da.m430public()) {
            return ze.m3174instanceof("SP_READ_PAGE_MODE_KEY", 2);
        }
        return 2;
    }

    /* renamed from: instanceof  reason: not valid java name */
    public final List<BookChapter> m716instanceof(ComicChapterBean comicChapterBean) {
        return m727synchronized(comicChapterBean, true);
    }

    /* renamed from: interface  reason: not valid java name */
    public final BookChapter m717interface(String str, String str2) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m702catch());
        bookChapter.setChapterId("LOAD_AD_CHAPTER_ID" + str);
        bookChapter.setChapterName(ze.q(R.string.book_next_chapter_txt) + "：" + str2);
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setItemType(2);
        return bookChapter;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(int r13) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.j(int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0270 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void k(int r12) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.k(int):void");
    }

    public final void l() {
        BookChapter m710final = m710final();
        if (m710final == null || m695native(m710final)) {
            return;
        }
        ((k00) this.f3970do).mo1420switch(m710final.getChapterName(), m710final.getReadPage(), m710final.getAllPage());
    }

    public void m(boolean z) {
        if (m709extends()) {
            this.f1172const.setScrollEnabled(!z);
        } else if (this.f1185private) {
        } else {
            this.f1170catch.setCanScroll(!z);
        }
    }

    public void n() {
        if (m706default()) {
            p(1);
        }
    }

    public void o(int i, boolean z, boolean z2) {
        int i2;
        int i3 = 0;
        this.f1182native = 0;
        this.f1190super.f2167case = 0;
        ArrayList arrayList = new ArrayList();
        ComicChapterBean m704const = m704const(this.f1195try);
        if (z) {
            tt.f4763do.putInt("SP_READ_PAGE_MODE_KEY", i);
            lz lzVar = this.f1171class;
            if (lzVar != null) {
                lzVar.f2950else = i;
            }
        }
        if (m704const != null) {
            String pid = m704const.getPid();
            if (m693case(pid)) {
                List<BookChapter> m727synchronized = m727synchronized(m704const(pid), false);
                i2 = ((ArrayList) m727synchronized).size();
                arrayList.addAll(m727synchronized);
            } else {
                i2 = 0;
            }
            List<BookChapter> m727synchronized2 = m727synchronized(m704const, false);
            if (da.m430public() && this.f1190super.m1252for()) {
                int i4 = this.f1175else;
                if (i4 > 0) {
                    i4--;
                }
                ArrayList arrayList2 = (ArrayList) m727synchronized2;
                int size = arrayList2.size();
                while (i4 < size) {
                    BookChapter bookChapter = (BookChapter) arrayList2.get(i4);
                    int i5 = this.f1182native + 1;
                    this.f1182native = i5;
                    if (i5 != 0 && i5 % this.f1190super.f2178goto == 0) {
                        arrayList2.add(i4, m714implements(bookChapter.getChapterId(), bookChapter.getChapterName(), size, i4));
                    }
                    i4++;
                }
            }
            int size2 = ((ArrayList) m727synchronized2).size();
            arrayList.addAll(m727synchronized2);
            String nid = m704const.getNid();
            if (m693case(nid)) {
                List<BookChapter> m716instanceof = m716instanceof(m704const(nid));
                i3 = ((ArrayList) m716instanceof).size();
                arrayList.addAll(m716instanceof);
            }
            int i6 = this.f1175else;
            if (i6 > 0) {
                i6--;
            }
            int i7 = i == 0 ? ((i3 + size2) - 1) - i6 : i2 + i6;
            if (i == 2) {
                this.f1177final.setNewData(arrayList);
                if (z2) {
                    this.f1172const.setAdapter(this.f1177final);
                }
                this.f1172const.scrollToPosition(i7);
                return;
            }
            this.f1171class.f2948case.clear();
            this.f1171class.f2948case.addAll(arrayList);
            this.f1170catch.setAdapter(this.f1171class);
            this.f1170catch.setCurrentItem(i7);
        }
    }

    public final void p(int i) {
        BarrageView barrageView;
        gg<String, BarrageView> ggVar;
        if (m709extends()) {
            try {
                int lastItem = this.f1172const != null ? this.f1172const.getLastItem() + 2 : 0;
                for (int firstItem = this.f1172const != null ? this.f1172const.getFirstItem() - 2 : 0; firstItem < lastItem; firstItem++) {
                    BookChapter m725super = m725super(firstItem);
                    if (m725super != null && !m695native(m725super) && (barrageView = (BarrageView) this.f1172const.findViewWithTag(mu.m1760continue(m725super))) != null) {
                        if (i == 1) {
                            barrageView.initBarrageView();
                        } else if (i == 2) {
                            barrageView.destory();
                        } else if (i == 3) {
                            barrageView.reloadSync();
                        } else if (i == 4) {
                            barrageView.pause();
                        } else if (i == 5) {
                            barrageView.resume();
                        }
                    }
                }
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        try {
            if (i == 1) {
                this.f1171class.m1674new(mu.m1760continue(m710final()));
            } else if (i == 2) {
                gg<String, BarrageView> ggVar2 = this.f1171class.f2952goto;
                if (ggVar2 != null) {
                    Iterator it = ((HashSet) ggVar2.entrySet()).iterator();
                    while (it.hasNext()) {
                        ((BarrageView) ((Map.Entry) it.next()).getValue()).destory();
                    }
                }
            } else if (i == 3) {
                this.f1171class.m1673if(mu.m1760continue(m710final()));
            } else if (i != 4) {
                if (i == 5 && (ggVar = this.f1171class.f2952goto) != null) {
                    Iterator it2 = ((HashSet) ggVar.entrySet()).iterator();
                    while (it2.hasNext()) {
                        ((BarrageView) ((Map.Entry) it2.next()).getValue()).resume();
                    }
                }
            } else {
                gg<String, BarrageView> ggVar3 = this.f1171class.f2952goto;
                if (ggVar3 != null) {
                    Iterator it3 = ((HashSet) ggVar3.entrySet()).iterator();
                    while (it3.hasNext()) {
                        ((BarrageView) ((Map.Entry) it3.next()).getValue()).pause();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: package  reason: not valid java name */
    public void m718package(List list) {
        try {
            try {
                if (m709extends()) {
                    this.f1177final.addData((Collection) list);
                } else {
                    this.f1171class.f2948case.addAll(list);
                    this.f1171class.notifyDataSetChanged();
                    if (m715import() == 0) {
                        this.f1170catch.setCurrentItem(list.size());
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            m(false);
        }
    }

    /* renamed from: private  reason: not valid java name */
    public void m719private(List list) {
        int size;
        try {
            try {
                if (list.size() > 0) {
                    if (m709extends()) {
                        this.f1177final.addData(0, (Collection) list);
                        int size2 = list.size();
                        if (this.f1177final.getItemCount() > size2) {
                            c(size2);
                        }
                    } else {
                        this.f1171class.f2948case.addAll(0, list);
                        this.f1171class.notifyDataSetChanged();
                        if (m715import() != 0 && this.f1171class.getCount() > (size = list.size())) {
                            this.f1170catch.setCurrentItem(size);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            m(false);
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public final BookChapter m720protected(ComicChapterBean comicChapterBean) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m702catch());
        bookChapter.setChapterId(comicChapterBean != null ? comicChapterBean.getOid() : "");
        bookChapter.setChapterName(comicChapterBean != null ? comicChapterBean.getName() : "");
        bookChapter.setImageUrl(null);
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setNeed_share(comicChapterBean != null ? comicChapterBean.getNeed_share() : "");
        return bookChapter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        if (r5.getImageUrl().equals("LOAD_FAILED") != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
        if ("LOAD_FAILED".equals(r5.getImageUrl()) != false) goto L26;
     */
    /* renamed from: public  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m721public(com.biquge.ebook.app.bean.BookChapter r5) {
        /*
            r4 = this;
            java.lang.String r0 = "LOAD_FAILED"
            r1 = 1
            r2 = 0
            boolean r3 = m695native(r5)     // Catch: java.lang.Exception -> L2d
            if (r3 != 0) goto L31
            java.lang.String r3 = r5.getImageUrl()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2b
            java.lang.String r3 = r5.getChapterName()     // Catch: java.lang.Exception -> L2d
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L1b
            goto L2b
        L1b:
            java.lang.String r3 = r5.getImageUrl()     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L2b
            java.lang.String r3 = r5.getImageUrl()     // Catch: java.lang.Exception -> L2d
            boolean r3 = r3.equals(r0)     // Catch: java.lang.Exception -> L2d
            if (r3 == 0) goto L31
        L2b:
            r2 = 1
            goto L31
        L2d:
            r3 = move-exception
            r3.printStackTrace()
        L31:
            boolean r3 = m695native(r5)     // Catch: java.lang.Exception -> L59
            if (r3 != 0) goto L56
            java.lang.String r3 = r5.getImageUrl()     // Catch: java.lang.Exception -> L59
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L59
            if (r3 != 0) goto L57
            java.lang.String r3 = r5.getChapterName()     // Catch: java.lang.Exception -> L59
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L59
            if (r3 != 0) goto L57
            java.lang.String r5 = r5.getImageUrl()     // Catch: java.lang.Exception -> L59
            boolean r5 = r0.equals(r5)     // Catch: java.lang.Exception -> L59
            if (r5 == 0) goto L56
            goto L57
        L56:
            r1 = r2
        L57:
            r2 = r1
            goto L5d
        L59:
            r5 = move-exception
            r5.printStackTrace()
        L5d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.m721public(com.biquge.ebook.app.bean.BookChapter):boolean");
    }

    /* renamed from: return  reason: not valid java name */
    public boolean m722return() {
        try {
            ComicChapterBean m704const = m704const(this.f1195try);
            if (m704const != null && "-1".equals(m704const.getPid())) {
                return this.f1175else == 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* renamed from: static  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m723static(boolean r8) {
        /*
            r7 = this;
            r0 = 0
            java.lang.String r1 = r7.f1195try     // Catch: java.lang.Exception -> L6d
            com.manhua.data.bean.ComicChapterBean r1 = r7.m704const(r1)     // Catch: java.lang.Exception -> L6d
            java.lang.String r2 = "-1"
            r3 = 1
            if (r1 == 0) goto L41
            java.lang.String r4 = r1.getNid()     // Catch: java.lang.Exception -> L6d
            boolean r4 = r2.equals(r4)     // Catch: java.lang.Exception -> L6d
            if (r4 == 0) goto L41
            if (r8 == 0) goto L3f
            int r4 = r7.f1175else     // Catch: java.lang.Exception -> L6d
            com.apk.e00 r5 = r7.f1168break     // Catch: java.lang.Exception -> L6d
            java.lang.String r1 = r1.getOid()     // Catch: java.lang.Exception -> L6d
            if (r5 == 0) goto L3d
            com.apk.gg<java.lang.String, java.util.List<java.lang.String>> r6 = r5.f978do     // Catch: java.lang.Exception -> L35
            if (r6 == 0) goto L39
            com.apk.gg<java.lang.String, java.util.List<java.lang.String>> r5 = r5.f978do     // Catch: java.lang.Exception -> L35
            java.lang.Object r1 = r5.get(r1)     // Catch: java.lang.Exception -> L35
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Exception -> L35
            if (r1 == 0) goto L39
            int r1 = r1.size()     // Catch: java.lang.Exception -> L35
            goto L3a
        L35:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Exception -> L6d
        L39:
            r1 = 0
        L3a:
            if (r4 != r1) goto L41
            goto L3f
        L3d:
            r8 = 0
            throw r8     // Catch: java.lang.Exception -> L6d
        L3f:
            r1 = 1
            goto L42
        L41:
            r1 = 0
        L42:
            if (r8 == 0) goto L72
            if (r1 != 0) goto L72
            com.biquge.ebook.app.bean.BookChapter r8 = r7.m710final()     // Catch: java.lang.Exception -> L6a
            java.lang.String r4 = r7.f1195try     // Catch: java.lang.Exception -> L6a
            com.manhua.data.bean.ComicChapterBean r4 = r7.m704const(r4)     // Catch: java.lang.Exception -> L6a
            if (r8 == 0) goto L72
            if (r4 == 0) goto L72
            java.lang.String r4 = r4.getNid()     // Catch: java.lang.Exception -> L6a
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L6a
            if (r2 == 0) goto L71
            int r2 = r8.getReadPage()     // Catch: java.lang.Exception -> L6a
            int r8 = r8.getAllPage()     // Catch: java.lang.Exception -> L6a
            if (r2 != r8) goto L71
            r0 = 1
            goto L71
        L6a:
            r8 = move-exception
            r0 = r1
            goto L6e
        L6d:
            r8 = move-exception
        L6e:
            r8.printStackTrace()
        L71:
            r1 = r0
        L72:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.m723static(boolean):boolean");
    }

    /* renamed from: strictfp  reason: not valid java name */
    public /* synthetic */ void m724strictfp() {
        ReadFootprint.addComicFootprint(m702catch(), this.f1195try, this.f1175else);
    }

    /* renamed from: super  reason: not valid java name */
    public final BookChapter m725super(int i) {
        int m715import = m715import();
        if (m715import == 0) {
            lz lzVar = this.f1171class;
            if (lzVar != null) {
                return lzVar.m1671do((lzVar.getCount() - 1) - i);
            }
        } else if (m715import != 2) {
            lz lzVar2 = this.f1171class;
            if (lzVar2 != null) {
                return lzVar2.m1671do(i);
            }
        } else {
            ComicRecyclerViewAdapter comicRecyclerViewAdapter = this.f1177final;
            if (comicRecyclerViewAdapter != null) {
                return (BookChapter) comicRecyclerViewAdapter.getItem(i);
            }
        }
        return null;
    }

    /* renamed from: switch  reason: not valid java name */
    public boolean m726switch() {
        return da.m430public();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:5|6|(2:19|(1:21))|22|(4:27|(5:65|66|67|68|69)|29|(3:31|(6:33|(4:38|39|(2:48|(2:52|53))|54)|62|39|(1:61)(5:42|44|46|48|(1:56)(3:50|52|53))|54)|63)(1:64))|76|77|78|79|29|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ac, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b1, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b2, code lost:
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bd A[Catch: Exception -> 0x016a, TryCatch #1 {Exception -> 0x016a, blocks: (B:7:0x0015, B:10:0x0026, B:12:0x002c, B:14:0x0036, B:16:0x003c, B:18:0x0046, B:20:0x0050, B:22:0x0061, B:23:0x006b, B:25:0x0073, B:28:0x007a, B:47:0x00b5, B:49:0x00bd, B:51:0x00c5, B:53:0x0107, B:56:0x0114, B:58:0x011c, B:61:0x0129, B:63:0x012f, B:65:0x0139, B:67:0x0141, B:69:0x0148, B:71:0x014f, B:72:0x015e, B:57:0x0118, B:73:0x0162, B:37:0x009a, B:46:0x00b2, B:30:0x0086, B:34:0x0095, B:39:0x009e, B:43:0x00ad), top: B:80:0x0015, inners: #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0162 A[Catch: Exception -> 0x016a, TRY_LEAVE, TryCatch #1 {Exception -> 0x016a, blocks: (B:7:0x0015, B:10:0x0026, B:12:0x002c, B:14:0x0036, B:16:0x003c, B:18:0x0046, B:20:0x0050, B:22:0x0061, B:23:0x006b, B:25:0x0073, B:28:0x007a, B:47:0x00b5, B:49:0x00bd, B:51:0x00c5, B:53:0x0107, B:56:0x0114, B:58:0x011c, B:61:0x0129, B:63:0x012f, B:65:0x0139, B:67:0x0141, B:69:0x0148, B:71:0x014f, B:72:0x015e, B:57:0x0118, B:73:0x0162, B:37:0x009a, B:46:0x00b2, B:30:0x0086, B:34:0x0095, B:39:0x009e, B:43:0x00ad), top: B:80:0x0015, inners: #2, #4 }] */
    /* renamed from: synchronized  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.biquge.ebook.app.bean.BookChapter> m727synchronized(com.manhua.data.bean.ComicChapterBean r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.m727synchronized(com.manhua.data.bean.ComicChapterBean, boolean):java.util.List");
    }

    /* renamed from: this  reason: not valid java name */
    public void m728this(TextView textView) {
        if (textView == null || this.f1190super == null) {
            return;
        }
        this.f1190super.m1248break(textView, this.f1195try + "-" + this.f1175else, this.f1176extends);
    }

    /* renamed from: throw  reason: not valid java name */
    public ComicChapterBean m729throw() {
        return m704const(this.f1195try);
    }

    /* renamed from: transient  reason: not valid java name */
    public final BookChapter m730transient(ComicChapterBean comicChapterBean) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m702catch());
        bookChapter.setChapterId(comicChapterBean != null ? comicChapterBean.getOid() : this.f1195try);
        bookChapter.setChapterName(comicChapterBean != null ? comicChapterBean.getName() : "");
        bookChapter.setImageUrl("LOAD_FAILED");
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setNeed_share(comicChapterBean != null ? comicChapterBean.getNeed_share() : "");
        return bookChapter;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0053 A[Catch: all -> 0x008b, Exception -> 0x008d, TRY_LEAVE, TryCatch #0 {Exception -> 0x008d, blocks: (B:3:0x0004, B:5:0x000b, B:12:0x0049, B:14:0x0053, B:8:0x0025), top: B:54:0x0004, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bf A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* renamed from: volatile  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m731volatile(java.util.List r6, int r7) {
        /*
            r5 = this;
            java.lang.String r0 = "Cartoon"
            r1 = 0
            r2 = 0
            boolean r3 = r5.m709extends()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r4 = 1
            if (r3 == 0) goto L25
            com.manhua.adapter.ComicRecyclerViewAdapter r3 = r5.f1177final     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r3.setNewData(r6)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.ui.widget.ZoomRecyclerView r6 = r5.f1172const     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.adapter.ComicRecyclerViewAdapter r3 = r5.f1177final     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r6.setAdapter(r3)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.ui.widget.ZoomRecyclerView r6 = r5.f1172const     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r6.scrollToPosition(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.adapter.ComicRecyclerViewAdapter r6 = r5.f1177final     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            int r6 = r6.getItemCount()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            if (r6 != r4) goto L48
            goto L49
        L25:
            com.apk.lz r3 = r5.f1171class     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            java.util.List<com.biquge.ebook.app.bean.BookChapter> r3 = r3.f2948case     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r3.clear()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.apk.lz r3 = r5.f1171class     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            java.util.List<com.biquge.ebook.app.bean.BookChapter> r3 = r3.f2948case     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r3.addAll(r6)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.ui.widget.ComicReaderViewpager r6 = r5.f1170catch     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.apk.lz r3 = r5.f1171class     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r6.setAdapter(r3)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.manhua.ui.widget.ComicReaderViewpager r6 = r5.f1170catch     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r6.setCurrentItem(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.apk.lz r6 = r5.f1171class     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            int r6 = r6.getCount()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            if (r6 != r4) goto L48
            goto L49
        L48:
            r4 = 0
        L49:
            r5.k(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r5.l()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            android.os.Handler r6 = r5.f1197while     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            if (r6 == 0) goto L5d
            android.os.Handler r6 = r5.f1197while     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            com.apk.c00 r7 = new com.apk.c00     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r7.<init>()     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
            r6.post(r7)     // Catch: java.lang.Throwable -> L8b java.lang.Exception -> L8d
        L5d:
            boolean r6 = com.apk.w0.m2890static()
            if (r6 == 0) goto L74
            com.manhua.ui.widget.barrage.BarrageDataUtils r6 = com.manhua.ui.widget.barrage.BarrageDataUtils.getInstance()
            java.lang.String r7 = r5.m702catch()
            java.lang.String r3 = r5.f1195try
            java.lang.String r3 = m699while(r3)
            r6.loadBarrageData(r0, r7, r3)
        L74:
            r5.m(r1)
            com.manhua.data.bean.ComicChapterBean r6 = r5.m729throw()
            if (r6 == 0) goto Lbf
            boolean r6 = r6.isHasContent()
            if (r6 != 0) goto Lbf
            com.apk.v r6 = com.apk.v.m2734do()
            if (r6 == 0) goto L8a
            goto Lbf
        L8a:
            throw r2
        L8b:
            r6 = move-exception
            goto Lc0
        L8d:
            r6 = move-exception
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L8b
            boolean r6 = com.apk.w0.m2890static()
            if (r6 == 0) goto La8
            com.manhua.ui.widget.barrage.BarrageDataUtils r6 = com.manhua.ui.widget.barrage.BarrageDataUtils.getInstance()
            java.lang.String r7 = r5.m702catch()
            java.lang.String r3 = r5.f1195try
            java.lang.String r3 = m699while(r3)
            r6.loadBarrageData(r0, r7, r3)
        La8:
            r5.m(r1)
            com.manhua.data.bean.ComicChapterBean r6 = r5.m729throw()
            if (r6 == 0) goto Lbf
            boolean r6 = r6.isHasContent()
            if (r6 != 0) goto Lbf
            com.apk.v r6 = com.apk.v.m2734do()
            if (r6 == 0) goto Lbe
            goto Lbf
        Lbe:
            throw r2
        Lbf:
            return
        Lc0:
            boolean r7 = com.apk.w0.m2890static()
            if (r7 == 0) goto Ld7
            com.manhua.ui.widget.barrage.BarrageDataUtils r7 = com.manhua.ui.widget.barrage.BarrageDataUtils.getInstance()
            java.lang.String r3 = r5.m702catch()
            java.lang.String r4 = r5.f1195try
            java.lang.String r4 = m699while(r4)
            r7.loadBarrageData(r0, r3, r4)
        Ld7:
            r5.m(r1)
            com.manhua.data.bean.ComicChapterBean r7 = r5.m729throw()
            if (r7 == 0) goto Lee
            boolean r7 = r7.isHasContent()
            if (r7 != 0) goto Lee
            com.apk.v r7 = com.apk.v.m2734do()
            if (r7 == 0) goto Led
            goto Lee
        Led:
            throw r2
        Lee:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f00.m731volatile(java.util.List, int):void");
    }
}
