package com.apk;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.apk.Cimport;
import com.apk.d;
import com.apk.h2;
import com.apk.u20;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.BookMark;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.bean.ReadFootprint;
import com.biquge.ebook.app.bean.ReadPostion;
import com.biquge.ebook.app.ui.book.adapter.BookRecyclerViewAdapter;
import com.biquge.ebook.app.ui.book.simulation.PageView;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.widget.BookPageTextView;
import com.biquge.ebook.app.widget.BookTitleTextView;
import com.biquge.ebook.app.widget.ReadContentLayout;
import com.hjq.toast.ToastUtils;
import com.manhua.ui.widget.ComicReaderViewpager;
import com.manhua.ui.widget.PageRecyclerView;
import com.manhua.ui.widget.barrage.BarrageBean;
import com.manhua.ui.widget.barrage.BarrageDataUtils;
import com.manhua.ui.widget.barrage.BarrageView;
import com.swl.gg.sdk.TrAdSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.concurrent.ThreadPoolExecutor;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
import org.litepal.LitePal;

/* compiled from: BookReadPresenter.java */
/* loaded from: classes8.dex */
public class h2 extends qz<l2> implements u20.Cfor, u20.Cdo {

    /* renamed from: a  reason: collision with root package name */
    public String f11101a;

    /* renamed from: abstract  reason: not valid java name */
    public LinearLayout.LayoutParams f1670abstract;
    public final gg<String, String> b;

    /* renamed from: break  reason: not valid java name */
    public ComicReaderViewpager f1671break;
    public final View.OnClickListener c;

    /* renamed from: case  reason: not valid java name */
    public String f1672case;

    /* renamed from: catch  reason: not valid java name */
    public v9 f1673catch;

    /* renamed from: class  reason: not valid java name */
    public PageRecyclerView f1674class;

    /* renamed from: const  reason: not valid java name */
    public BookRecyclerViewAdapter f1675const;

    /* renamed from: continue  reason: not valid java name */
    public LinearLayout.LayoutParams f1676continue;
    public final Cimport.Ctry d;

    /* renamed from: default  reason: not valid java name */
    public ReadPostion f1677default;
    public boolean e;

    /* renamed from: else  reason: not valid java name */
    public String f1678else;

    /* renamed from: extends  reason: not valid java name */
    public boolean f1679extends;
    public boolean f;

    /* renamed from: final  reason: not valid java name */
    public BookTitleTextView f1680final;

    /* renamed from: finally  reason: not valid java name */
    public final k1 f1681finally;

    /* renamed from: for  reason: not valid java name */
    public Book f1682for;
    public boolean g;

    /* renamed from: goto  reason: not valid java name */
    public int f1683goto;
    public Cbreak h;
    public Cthis i;

    /* renamed from: implements  reason: not valid java name */
    public BookChapter f1684implements;

    /* renamed from: import  reason: not valid java name */
    public float f1685import;

    /* renamed from: instanceof  reason: not valid java name */
    public final Map<String, String> f1686instanceof;

    /* renamed from: interface  reason: not valid java name */
    public int f1687interface;
    public final BarrageDataUtils.OnBarrageListener j;
    public boolean k;
    public boolean l;
    public View.OnTouchListener m;
    public final pz n;

    /* renamed from: native  reason: not valid java name */
    public float f1688native;

    /* renamed from: new  reason: not valid java name */
    public CollectBook f1689new;
    public PageView o;
    public BookChapter p;

    /* renamed from: package  reason: not valid java name */
    public int f1690package;

    /* renamed from: private  reason: not valid java name */
    public int f1691private;

    /* renamed from: protected  reason: not valid java name */
    public Map<String, String> f1692protected;

    /* renamed from: public  reason: not valid java name */
    public boolean f1693public;
    public BookChapter q;
    public int r;

    /* renamed from: return  reason: not valid java name */
    public boolean f1694return;
    public LayoutInflater s;

    /* renamed from: static  reason: not valid java name */
    public boolean f1695static;

    /* renamed from: strictfp  reason: not valid java name */
    public Map<String, String> f1696strictfp;

    /* renamed from: super  reason: not valid java name */
    public BookPageTextView f1697super;

    /* renamed from: switch  reason: not valid java name */
    public Handler f1698switch;

    /* renamed from: synchronized  reason: not valid java name */
    public boolean f1699synchronized;
    public TextView t;

    /* renamed from: this  reason: not valid java name */
    public final g2 f1700this;

    /* renamed from: throw  reason: not valid java name */
    public final Cimport f1701throw;

    /* renamed from: throws  reason: not valid java name */
    public int f1702throws;

    /* renamed from: transient  reason: not valid java name */
    public int f1703transient;

    /* renamed from: try  reason: not valid java name */
    public WebSiteBean f1704try;
    public boolean u;
    public boolean v;

    /* renamed from: volatile  reason: not valid java name */
    public int f1705volatile;
    public boolean w;

    /* renamed from: while  reason: not valid java name */
    public zg f1706while;
    public boolean x;
    public boolean y;
    public long z;

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$break  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cbreak extends AsyncTask<Void, Void, Void> {

        /* renamed from: do  reason: not valid java name */
        public final boolean f1707do;

        /* renamed from: if  reason: not valid java name */
        public final ChapterBean f1709if;

        public Cbreak(boolean z, ChapterBean chapterBean) {
            this.f1707do = z;
            this.f1709if = chapterBean;
        }

        /* renamed from: do  reason: not valid java name */
        public void m1090do(List list) {
            Object obj;
            int i;
            try {
                try {
                    if (list.size() > 0) {
                        if (h2.this.m1072implements()) {
                            h2.this.f1675const.addData(0, (Collection) list);
                            int size = list.size();
                            if (this.f1707do) {
                                h2.this.f1674class.scrollToPosition(size - 1);
                            }
                        } else {
                            h2.this.f1673catch.f5050try.addAll(0, list);
                            h2.this.f1673catch.notifyDataSetChanged();
                            int size2 = list.size();
                            if (this.f1707do && size2 - 1 >= 0) {
                                h2.this.f1671break.setCurrentItem(i);
                            }
                        }
                    }
                    h2.this.H(false);
                    h2.this.f1674class.setLoadUp(false);
                    obj = h2.this.f3970do;
                    if (obj == null) {
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    h2.this.H(false);
                    h2.this.f1674class.setLoadUp(false);
                    obj = h2.this.f3970do;
                    if (obj == null) {
                        return;
                    }
                }
                ((l2) obj).mo1590do(false, false);
            } catch (Throwable th) {
                h2.this.H(false);
                h2.this.f1674class.setLoadUp(false);
                GV gv = h2.this.f3970do;
                if (gv != 0) {
                    ((l2) gv).mo1590do(false, false);
                }
                throw th;
            }
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            ChapterBean m1053for;
            final ArrayList arrayList = new ArrayList();
            ChapterBean chapterBean = this.f1709if;
            String pid = chapterBean != null ? chapterBean.getPid() : "";
            if (h2.this.m1071goto(pid) && (m1053for = h2.m1053for(h2.this, pid)) != null) {
                if (!h2.this.m1088volatile(m1053for, false)) {
                    arrayList.addAll(h2.m1058try(h2.this, m1053for));
                } else if (n2.m1837super(h2.this.m1082super(), pid, m1053for.getUrl(), false, h2.this.m1070finally(), true)) {
                    arrayList.addAll(h2.m1058try(h2.this, m1053for));
                } else {
                    ((l2) h2.this.f3970do).mo1588const(ze.q(R.string.tips_loadfaild_reload_txt));
                }
            }
            Handler handler = h2.this.f1698switch;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.b2
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.Cbreak.this.m1090do(arrayList);
                    }
                });
                return null;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            GV gv = h2.this.f3970do;
            if (gv != 0) {
                ((l2) gv).mo1590do(true, false);
            }
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$case  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ccase implements View.OnClickListener {
        public Ccase() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.getId() == R.id.item_read_error_reload_bt) {
                ToastUtils.show((int) R.string.bookread_reload_txt);
                h2 h2Var = h2.this;
                h2Var.f1683goto = 0;
                h2Var.m1062catch();
                h2.this.w();
            }
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements pz {
        public Cdo() {
        }

        @Override // com.apk.pz
        /* renamed from: do */
        public void mo736do(View view, float f, float f2, boolean z) {
            if (h2.this != null) {
                if (!da.m430public()) {
                    double d = f;
                    if (d < 0.3d) {
                        ((l2) h2.this.f3970do).mo1584break();
                        return;
                    } else if (d > 0.7d) {
                        ((l2) h2.this.f3970do).mo1606this();
                        return;
                    } else {
                        ((l2) h2.this.f3970do).mo1607throw();
                        return;
                    }
                } else if (h2.this.m1072implements()) {
                    double d2 = f2;
                    if (d2 < 0.15d) {
                        ((l2) h2.this.f3970do).mo1584break();
                        return;
                    } else if (d2 > 0.7d) {
                        ((l2) h2.this.f3970do).mo1606this();
                        return;
                    } else {
                        ((l2) h2.this.f3970do).mo1607throw();
                        return;
                    }
                } else {
                    double d3 = f;
                    if (d3 < 0.3d) {
                        ((l2) h2.this.f3970do).mo1584break();
                        return;
                    } else if (d3 > 0.7d) {
                        ((l2) h2.this.f3970do).mo1606this();
                        return;
                    } else {
                        ((l2) h2.this.f3970do).mo1607throw();
                        return;
                    }
                }
            }
            throw null;
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$else  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Celse implements Cimport.Ctry {
        public Celse() {
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: do */
        public void mo732do() {
            if (h2.this.f1701throw.m1257try()) {
                h2 h2Var = h2.this;
                Cimport cimport = h2Var.f1701throw;
                if (cimport.f2182new) {
                    return;
                }
                cimport.m1251else(h2Var.f3971if);
            }
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: for */
        public void mo733for() {
            h2.this.g = false;
            h2.m1054new(2);
            if (h2.this.f1701throw.m1257try()) {
                h2 h2Var = h2.this;
                Cimport cimport = h2Var.f1701throw;
                if (cimport.f2182new) {
                    cimport.m1251else(h2Var.f3971if);
                }
            }
            GV gv = h2.this.f3970do;
            if (gv != 0) {
                ((l2) gv).mo1585case(false);
            }
        }

        @Override // com.apk.Cimport.Ctry
        /* renamed from: if */
        public void mo734if() {
            h2.m1054new(3);
        }

        @Override // com.apk.Cimport.Ctry
        public void start() {
            h2.this.g = true;
            h2.m1054new(1);
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements k1 {
        public Cfor() {
        }

        @Override // com.apk.k1
        /* renamed from: do */
        public void mo740do() {
            Handler handler = h2.this.f1698switch;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.t1
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.Cfor.this.m1091new();
                    }
                });
            }
        }

        @Override // com.apk.k1
        /* renamed from: for */
        public void mo741for() {
            Handler handler = h2.this.f1698switch;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.u1
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.Cfor.this.m1092try();
                    }
                });
            }
        }

        @Override // com.apk.k1
        /* renamed from: if */
        public void mo742if(String str) {
        }

        /* renamed from: new  reason: not valid java name */
        public /* synthetic */ void m1091new() {
            ((l2) h2.this.f3970do).mo1595if(true);
            if (f.m683catch() || !f.m682break()) {
                return;
            }
            h2.this.t();
        }

        /* renamed from: try  reason: not valid java name */
        public /* synthetic */ void m1092try() {
            ((l2) h2.this.f3970do).mo1599new(true);
            if (f.m683catch() || !f.m682break()) {
                return;
            }
            h2.this.t();
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$goto  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cgoto implements BarrageDataUtils.OnBarrageListener {
        public Cgoto() {
        }

        @Override // com.manhua.ui.widget.barrage.BarrageDataUtils.OnBarrageListener
        public void onAddBarrage(BarrageBean barrageBean, boolean z, String str) {
            BarrageView barrageView;
            BarrageView barrageView2;
            if (z && barrageBean != null && h2.this.m1077protected()) {
                h2 h2Var = h2.this;
                if (h2Var.m1072implements()) {
                    try {
                        int lastItem = h2Var.f1674class.getLastItem() + 2;
                        for (int firstItem = h2Var.f1674class.getFirstItem() - 2; firstItem < lastItem; firstItem++) {
                            BookChapter m1079return = h2Var.m1079return(firstItem);
                            if (m1079return != null && (barrageView = (BarrageView) h2Var.f1674class.findViewWithTag(n2.m1842throws(m1079return))) != null) {
                                barrageView.addData(h2.m1057throws(h2Var.f1672case), barrageBean);
                            }
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    try {
                        BookChapter m1078public = h2Var.m1078public();
                        if (m1078public != null && !h2.m1055package(m1078public) && (barrageView2 = (BarrageView) h2Var.f1671break.findViewWithTag(n2.m1842throws(m1078public))) != null) {
                            barrageView2.addData(h2.m1057throws(h2Var.f1672case), barrageBean);
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
            BookChapter m1078public = h2.this.m1078public();
            if (m1078public != null) {
                ((l2) h2.this.f3970do).mo1598native(BarrageDataUtils.getInstance().getBarrageCount(h2.m1057throws(m1078public.getChapterId())));
                h2.this.K();
            }
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends c1<Boolean> {

        /* renamed from: do  reason: not valid java name */
        public String f1716do;

        /* renamed from: for  reason: not valid java name */
        public final /* synthetic */ String f1717for;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ boolean f1718if;

        /* renamed from: new  reason: not valid java name */
        public final /* synthetic */ String f1719new;

        /* renamed from: try  reason: not valid java name */
        public final /* synthetic */ Context f1720try;

        public Cif(boolean z, String str, String str2, Context context) {
            this.f1718if = z;
            this.f1717for = str;
            this.f1719new = str2;
            this.f1720try = context;
        }

        @Override // com.apk.c1
        public Boolean doInBackground() {
            if (!this.f1718if) {
                HashMap m1007native = com.apk.Cgoto.m1007native("action", com.umeng.analytics.pro.d.O);
                m1007native.put("chapterid", this.f1717for);
                m1007native.put("bookid", this.f1719new);
                JSONObject m2953extends = x4.m2953extends(p0.m2009new() + "/BookAction.aspx", m1007native);
                if (m2953extends != null) {
                    String optString = m2953extends.optString("info");
                    this.f1716do = optString;
                    if (TextUtils.isEmpty(optString)) {
                        this.f1716do = ze.q(R.string.tips_couple_back_faild_txt);
                    }
                    JSONObject optJSONObject = m2953extends.optJSONObject("data");
                    if (optJSONObject != null && optJSONObject.optInt("result") == 1) {
                        return Boolean.TRUE;
                    }
                }
                return Boolean.FALSE;
            }
            long currentTimeMillis = System.currentTimeMillis();
            h2.this.m1062catch();
            try {
                n2.m1837super(h2.this.m1082super(), h2.this.f1672case, h2.this.m1080static().getUrl(), false, h2.this.m1070finally(), true);
                h2.this.f1700this.m936switch(h2.this.f1672case);
            } catch (Exception e) {
                e.printStackTrace();
            }
            h2.this.G();
            h2.this.B(0, false);
            this.f1716do = "错误提交成功，已为您自动刷新。如果当前没有得到解决，您可稍后再次点击报错反馈给我们，我们会第一时间处理。";
            try {
                if (System.currentTimeMillis() - currentTimeMillis < 1200) {
                    Thread.sleep(1200 - (System.currentTimeMillis() - currentTimeMillis));
                }
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            return Boolean.TRUE;
        }

        @Override // com.apk.c1
        public void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            super.onPostExecute(bool2);
            if (bool2.booleanValue()) {
                h2.this.z = System.currentTimeMillis();
                eg.j(this.f1720try, this.f1716do, null, false, false);
                return;
            }
            ToastUtils.show((CharSequence) ze.q(R.string.element_detail_failed_txt));
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$new  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cnew implements Runnable {
        public Cnew() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h2 h2Var = h2.this;
            h2Var.B(h2Var.f1683goto, true);
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$this  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cthis extends AsyncTask<Void, Void, Void> {

        /* renamed from: do  reason: not valid java name */
        public final boolean f1722do;

        /* renamed from: if  reason: not valid java name */
        public final ChapterBean f1724if;

        public Cthis(boolean z, ChapterBean chapterBean) {
            this.f1722do = z;
            this.f1724if = chapterBean;
        }

        /* renamed from: do  reason: not valid java name */
        public void m1093do(List list) {
            Object obj;
            int currentItem;
            int currentPosition;
            try {
                try {
                    if (list.size() > 0) {
                        if (h2.this.m1072implements()) {
                            h2.this.f1675const.addData((Collection) list);
                            if (this.f1722do && h2.this.f1675const.getItemCount() > (currentPosition = h2.this.f1674class.getCurrentPosition() + 1)) {
                                h2.this.f1674class.scrollToPosition(currentPosition);
                            }
                        } else {
                            h2.this.f1673catch.f5050try.addAll(list);
                            h2.this.f1673catch.notifyDataSetChanged();
                            if (this.f1722do && (currentItem = h2.this.f1671break.getCurrentItem() + 1) < h2.this.f1673catch.getCount()) {
                                h2.this.f1671break.setCurrentItem(currentItem);
                            }
                        }
                    }
                    h2.this.H(false);
                    h2.this.f1674class.setLoadMore(false);
                    obj = h2.this.f3970do;
                    if (obj == null) {
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    h2.this.H(false);
                    h2.this.f1674class.setLoadMore(false);
                    obj = h2.this.f3970do;
                    if (obj == null) {
                        return;
                    }
                }
                ((l2) obj).mo1590do(false, false);
            } catch (Throwable th) {
                h2.this.H(false);
                h2.this.f1674class.setLoadMore(false);
                GV gv = h2.this.f3970do;
                if (gv != 0) {
                    ((l2) gv).mo1590do(false, false);
                }
                throw th;
            }
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            ChapterBean m1053for;
            final ArrayList arrayList = new ArrayList();
            String nid = this.f1724if.getNid();
            if (h2.this.m1071goto(nid) && (m1053for = h2.m1053for(h2.this, nid)) != null) {
                if (!h2.this.m1088volatile(m1053for, false)) {
                    arrayList.addAll(h2.m1058try(h2.this, m1053for));
                } else if (n2.m1837super(h2.this.m1082super(), nid, m1053for.getUrl(), false, h2.this.m1070finally(), true)) {
                    arrayList.addAll(h2.m1058try(h2.this, m1053for));
                } else {
                    ((l2) h2.this.f3970do).mo1588const(ze.q(R.string.tips_loadfaild_reload_txt));
                }
            }
            Handler handler = h2.this.f1698switch;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.apk.a2
                    @Override // java.lang.Runnable
                    public final void run() {
                        h2.Cthis.this.m1093do(arrayList);
                    }
                });
                return null;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            super.onPreExecute();
            GV gv = h2.this.f3970do;
            if (gv != 0) {
                ((l2) gv).mo1590do(true, false);
            }
        }
    }

    /* compiled from: BookReadPresenter.java */
    /* renamed from: com.apk.h2$try  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Ctry implements Runnable {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ boolean f1725do;

        public Ctry(boolean z) {
            this.f1725do = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            final h2 h2Var;
            BookChapter bookChapter;
            boolean z;
            h2 h2Var2 = h2.this;
            ChapterBean m1076native = h2Var2.m1076native(h2Var2.m1082super(), h2Var2.f1672case);
            if (m1076native == null || (bookChapter = (h2Var = h2.this).f1684implements) == null) {
                return;
            }
            final int i = h2Var.f1703transient;
            boolean z2 = this.f1725do;
            boolean m1056private = h2.m1056private(bookChapter);
            String nid = m1076native.getNid();
            if ("-1".equals(nid) || g2.m921if(h2Var.m1082super(), nid) != null) {
                z = false;
            } else {
                h2Var.f1700this.m936switch(nid);
                z = true;
            }
            m1076native.isHasContent();
            boolean z3 = (h2Var.y || h2Var.e) ? true : true;
            if (m1056private || z || (!z3 && bookChapter.getReadPage() == 1)) {
                if (z2) {
                    h2Var.f1683goto = 999;
                    h2Var.w();
                    return;
                }
                h2Var.w();
            } else if (bookChapter.getReadPage() == bookChapter.getAllPage()) {
                h2Var.H(true);
                try {
                    BookChapter m1079return = h2Var.m1079return(i + 1);
                    if (m1079return != null) {
                        if (h2.m1056private(m1079return)) {
                            final ArrayList arrayList = new ArrayList();
                            ChapterBean m1073import = h2Var.m1073import(m1076native.getNid());
                            if (m1073import != null) {
                                if (!h2Var.m1088volatile(m1073import, false)) {
                                    arrayList.addAll(h2Var.m(m1073import, true));
                                } else if ("LOAD_CHAPTER_DEFAULT_CONTENT".equals(m1079return.getUrl())) {
                                    arrayList.add(h2Var.i(m1073import));
                                } else if (h2.m1056private(m1079return)) {
                                    arrayList.add(h2Var.j(m1073import));
                                } else {
                                    arrayList.add(h2Var.i(m1073import));
                                }
                            }
                            if (h2Var.f1698switch != null) {
                                h2Var.f1698switch.post(new Runnable() { // from class: com.apk.e2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        h2.this.f(i, arrayList);
                                    }
                                });
                            }
                        }
                    } else {
                        ChapterBean m1073import2 = h2Var.m1073import(m1076native.getNid());
                        if (m1073import2 != null) {
                            final ArrayList arrayList2 = new ArrayList();
                            if (!h2Var.m1088volatile(m1073import2, false)) {
                                arrayList2.addAll(h2Var.m(m1073import2, true));
                            } else {
                                arrayList2.add(h2Var.i(m1073import2));
                            }
                            if (h2Var.f1698switch != null) {
                                h2Var.f1698switch.post(new Runnable() { // from class: com.apk.s1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        h2.this.g(arrayList2);
                                    }
                                });
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                h2Var.H(false);
            } else if (h2Var.m1059abstract()) {
            } else {
                if (h2Var.m1072implements()) {
                    if (h2Var.f1674class.getCurrentPosition() != 0) {
                        return;
                    }
                } else if (h2Var.f1671break.getCurrentItem() != 0) {
                    return;
                }
                h2Var.H(true);
                final ArrayList arrayList3 = new ArrayList();
                ChapterBean m1073import3 = h2Var.m1073import(m1076native.getPid());
                if (m1073import3 != null && h2Var.m1071goto(m1073import3.getOid())) {
                    if (!h2Var.m1088volatile(m1073import3, false)) {
                        arrayList3.addAll(h2Var.m(m1073import3, true));
                    } else {
                        arrayList3.add(h2Var.i(m1073import3));
                    }
                }
                Handler handler = h2Var.f1698switch;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.apk.z1
                        @Override // java.lang.Runnable
                        public final void run() {
                            h2.this.h(arrayList3);
                        }
                    });
                }
            }
        }
    }

    public h2(Activity activity, Handler handler, l2 l2Var) {
        super(activity, l2Var);
        this.f1702throws = 0;
        this.f1681finally = new Cfor();
        this.f1696strictfp = new HashMap();
        this.f1705volatile = 0;
        this.f1686instanceof = new HashMap();
        this.b = new gg<>();
        this.c = new Ccase();
        this.d = new Celse();
        this.j = new Cgoto();
        this.n = new Cdo();
        this.f1698switch = handler;
        this.f1700this = new g2();
        this.f1701throw = new Cimport(hf.BOOK);
    }

    /* renamed from: for  reason: not valid java name */
    public static ChapterBean m1053for(h2 h2Var, String str) {
        return h2Var.m1076native(h2Var.m1082super(), str);
    }

    /* renamed from: new  reason: not valid java name */
    public static void m1054new(int i) {
        mf.m1712do("BOOKRE_CHAPTER_PAGE_AD_TYPE", Integer.valueOf(i));
    }

    /* renamed from: package  reason: not valid java name */
    public static boolean m1055package(BookChapter bookChapter) {
        if (bookChapter == null) {
            return false;
        }
        return bookChapter.getItemType() == 2 || bookChapter.getItemType() == 3;
    }

    /* renamed from: private  reason: not valid java name */
    public static boolean m1056private(BookChapter bookChapter) {
        try {
            if (m1055package(bookChapter)) {
                return false;
            }
            if (bookChapter.getValues() != null && !TextUtils.isEmpty(bookChapter.getChapterName()) && bookChapter.getValues().size() > 0) {
                return bookChapter.getValues().get(0).equals("LOAD_FAILED");
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public static String m1057throws(String str) {
        return !TextUtils.isEmpty(str) ? str.replace("LOAD_AD_CHAPTER_ID", "") : str;
    }

    /* renamed from: try  reason: not valid java name */
    public static List m1058try(h2 h2Var, ChapterBean chapterBean) {
        return h2Var.m(chapterBean, true);
    }

    public void A() {
        try {
            BookChapter m1078public = m1078public();
            String chapterName = m1078public != null ? m1078public.getChapterName() : "";
            int readPage = m1078public != null ? m1078public.getReadPage() : 0;
            if (this.f1682for != null) {
                n2.t(this.f1682for, this.f1672case, "", chapterName, readPage, true, true);
                v m2734do = v.m2734do();
                m1082super();
                m1089while();
                if (m2734do == null) {
                    throw null;
                }
            } else if (this.f1704try != null) {
                Book book = new Book();
                book.setId(this.f1704try.getNovelId());
                book.setName(this.f1704try.getTitle());
                book.setImg(this.f1704try.getImg());
                book.setAuthor(this.f1704try.getAuthor());
                book.setFirstChapterId(nd.m1863new(this.f1704try.getNovelId(), this.f1704try.getFirstChapterUrl()));
                book.setWebSite(true);
                book.setLastChapter(this.f1704try.getLastChapterName());
                book.setLastChapterId(this.f1704try.getLastChapterUrl());
                book.setChapterUrl(this.f1704try.getChapterUrl());
                book.setLastChapterId(this.f1704try.getLastChapterUrl());
                book.setLastChapter(this.f1704try.getLastChapterName());
                n2.t(book, this.f1672case, "", chapterName, readPage, true, true);
                nd.m1861import(this.f1704try.getNovelId(), this.f1704try);
                v m2734do2 = v.m2734do();
                m1082super();
                m1089while();
                if (m2734do2 == null) {
                    throw null;
                }
            }
            this.f1695static = n2.f(m1082super());
            ze.V();
            v m2734do3 = v.m2734do();
            m1082super();
            m1089while();
            if (m2734do3 == null) {
                throw null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void B(int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h2.B(int, boolean):void");
    }

    public void C(String str) {
        this.f1672case = str;
        this.f1683goto = 0;
        w();
        z();
    }

    public void D(boolean z) {
        this.e = z;
        Cimport cimport = this.f1701throw;
        if (cimport != null) {
            cimport.f2180import = z;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0271 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0163  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void E(int r13) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h2.E(int):void");
    }

    public final void F(View view) {
        if (view != null) {
            if (((l2) this.f3970do).mo1608transient()) {
                if (view.getHeight() != this.f1691private + this.f1690package) {
                    if (this.f1670abstract == null) {
                        this.f1670abstract = new LinearLayout.LayoutParams(-1, this.f1691private + this.f1690package);
                    }
                    view.setLayoutParams(this.f1670abstract);
                    view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), this.f1691private);
                }
            } else if (view.getHeight() != this.f1690package) {
                if (this.f1676continue == null) {
                    this.f1676continue = new LinearLayout.LayoutParams(-1, this.f1690package);
                }
                view.setLayoutParams(this.f1676continue);
                view.setPadding(view.getPaddingLeft(), 0, view.getPaddingRight(), 0);
            }
        }
    }

    public void G() {
        BookRecyclerViewAdapter bookRecyclerViewAdapter = this.f1675const;
        if (bookRecyclerViewAdapter != null && bookRecyclerViewAdapter == null) {
            throw null;
        }
    }

    public void H(boolean z) {
        ComicReaderViewpager comicReaderViewpager;
        if (m1072implements()) {
            PageRecyclerView pageRecyclerView = this.f1674class;
            if (pageRecyclerView != null) {
                pageRecyclerView.setScrollEnabled(!z);
            }
        } else if (this.g || (comicReaderViewpager = this.f1671break) == null) {
        } else {
            comicReaderViewpager.setCanScroll(!z);
        }
    }

    public void I() {
        v9 v9Var = this.f1673catch;
        if (v9Var != null) {
            v9Var.f5048this = ((l2) this.f3970do).mo1608transient();
        }
        if (this.f1690package == 0) {
            this.f1690package = eg.m587catch(30.0f);
            this.f1691private = Cfinally.m793case();
        }
        F(this.f1697super);
    }

    public void J(float f, float f2) {
        int m587catch = eg.m587catch(15.0f);
        int m587catch2 = eg.m587catch(30.0f);
        this.f1685import = f - (m587catch * 2);
        this.f1688native = f2 - (m587catch2 * 2);
        ca m315do = ca.m315do();
        float f3 = this.f1685import;
        float f4 = this.f1688native;
        m315do.f543else = f3;
        m315do.f545goto = f4;
    }

    public void K() {
        if (m1077protected()) {
            N(1);
        }
    }

    public synchronized boolean L() {
        final int currentItem;
        if (this.v) {
            return false;
        }
        try {
            currentItem = this.f1671break.getCurrentItem() + 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (currentItem > m1068extends()) {
            return false;
        }
        BookChapter m1079return = m1079return(currentItem);
        if (m1079return == null) {
            if (m1065continue(true)) {
                ((l2) this.f3970do).mo1597import();
                return false;
            }
            BookChapter m1078public = m1078public();
            if (m1078public != null && (m1078public.getAllPage() == 1 || m1078public.getReadPage() == m1078public.getAllPage())) {
                if (m1078public.getValues() == null || !"LOAD_FAILED".equals(m1078public.getValues().get(0).toString())) {
                    this.v = true;
                    n(true);
                    this.o.m3357do();
                    if (this.f1698switch != null) {
                        this.f1698switch.post(new Runnable() { // from class: com.apk.x1
                            @Override // java.lang.Runnable
                            public final void run() {
                                h2.this.e(currentItem);
                            }
                        });
                    }
                    return false;
                }
                return false;
            }
        }
        this.f1671break.setCurrentItem(currentItem);
        this.u = true;
        this.q = this.p;
        this.p = m1079return;
        this.o.m3357do();
        return true;
    }

    public synchronized boolean M() {
        int currentItem;
        try {
            currentItem = this.f1671break.getCurrentItem() - 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (currentItem >= 0 && currentItem < m1068extends()) {
            BookChapter m1079return = m1079return(currentItem);
            if (m1079return == null) {
                return false;
            }
            this.f1671break.setCurrentItem(currentItem);
            this.u = false;
            this.q = this.p;
            this.p = m1079return;
            this.o.m3357do();
            return true;
        }
        return false;
    }

    public final void N(int i) {
        BarrageView barrageView;
        gg<String, BarrageView> ggVar;
        if (m1072implements()) {
            try {
                int m1083switch = m1083switch() + 2;
                for (int m1083switch2 = m1083switch() - 2; m1083switch2 < m1083switch; m1083switch2++) {
                    BookChapter m1079return = m1079return(m1083switch2);
                    if (m1079return != null && !m1055package(m1079return) && (barrageView = (BarrageView) this.f1674class.findViewWithTag(n2.m1842throws(m1079return))) != null) {
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
            if (this.f1673catch != null) {
                if (i == 1) {
                    this.f1673catch.m2787try(n2.m1842throws(m1078public()));
                } else if (i == 2) {
                    gg<String, BarrageView> ggVar2 = this.f1673catch.f5037const;
                    if (ggVar2 != null) {
                        Iterator it = ((HashSet) ggVar2.entrySet()).iterator();
                        while (it.hasNext()) {
                            ((BarrageView) ((Map.Entry) it.next()).getValue()).destory();
                        }
                    }
                } else if (i == 3) {
                    this.f1673catch.m2786new(n2.m1842throws(m1078public()));
                } else if (i != 4) {
                    if (i == 5 && (ggVar = this.f1673catch.f5037const) != null) {
                        Iterator it2 = ((HashSet) ggVar.entrySet()).iterator();
                        while (it2.hasNext()) {
                            ((BarrageView) ((Map.Entry) it2.next()).getValue()).resume();
                        }
                    }
                } else {
                    gg<String, BarrageView> ggVar3 = this.f1673catch.f5037const;
                    if (ggVar3 != null) {
                        Iterator it3 = ((HashSet) ggVar3.entrySet()).iterator();
                        while (it3.hasNext()) {
                            ((BarrageView) ((Map.Entry) it3.next()).getValue()).pause();
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void a() {
        if (this.f1706while == null) {
            this.f1706while = new zg(this.f3971if);
        }
        if (this.f1706while.isShowing()) {
            return;
        }
        this.f1706while.m3196do(this.f1671break);
    }

    /* renamed from: abstract  reason: not valid java name */
    public boolean m1059abstract() {
        try {
            ChapterBean m1073import = m1073import(this.f1672case);
            if (m1073import != null && "-1".equals(m1073import.getPid())) {
                return this.f1683goto == 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public /* synthetic */ void b() {
        try {
            if (this.f1673catch != null && this.f1673catch.getCount() > 0) {
                this.f1673catch.m2784for();
            }
            if (this.f1675const == null || this.f1675const.getItemCount() <= 0) {
                return;
            }
            this.f1675const.m3356do();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: break  reason: not valid java name */
    public void m1060break(TextView textView) {
        Cimport cimport;
        if (textView == null || (cimport = this.f1701throw) == null) {
            return;
        }
        cimport.m1248break(textView, this.f1672case, this.d);
    }

    public /* synthetic */ void c() {
        ReadFootprint.addNovelFootprint(m1082super(), this.f1672case, this.f1683goto);
    }

    /* renamed from: case  reason: not valid java name */
    public void m1061case(String str, String str2, String str3, String str4, int i) {
        if (n2.h(str, str2, String.valueOf(i))) {
            n2.r(str, str2, String.valueOf(i));
            ToastUtils.show((int) R.string.book_remove_mark_success_txt);
            return;
        }
        BookMark bookMark = new BookMark();
        bookMark.setName(str3);
        bookMark.setChapterId(str2);
        bookMark.setReadPage(String.valueOf(i));
        bookMark.setContent(str4);
        bookMark.setNovelId(str);
        bookMark.setSaveTime(String.valueOf(System.currentTimeMillis()));
        bookMark.save();
        ToastUtils.show((int) R.string.book_add_mark_success_txt);
    }

    /* renamed from: catch  reason: not valid java name */
    public void m1062catch() {
        gg<String, List<Vector>> ggVar;
        g2 g2Var = this.f1700this;
        if (g2Var != null && (ggVar = g2Var.f1496do) != null) {
            ggVar.clear();
        }
        gg<String, Float> ggVar2 = ca.m315do().f548this;
        if (ggVar2 != null) {
            ggVar2.clear();
        }
    }

    /* renamed from: class  reason: not valid java name */
    public void m1063class(Context context, String str, String str2, boolean z) {
        if (System.currentTimeMillis() - this.z < 30000) {
            ToastUtils.show((int) R.string.tips_couple_back_txt);
            return;
        }
        b1 b1Var = new b1();
        b1Var.m143if(this.f3971if);
        b1Var.m141do(new Cif(z, str2, str, context));
    }

    /* renamed from: const  reason: not valid java name */
    public int m1064const() {
        return ze.m3174instanceof("auto_read_type", 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0042  */
    /* renamed from: continue  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean m1065continue(boolean r8) {
        /*
            r7 = this;
            r0 = 0
            java.lang.String r1 = r7.f1672case     // Catch: java.lang.Exception -> L73
            com.biquge.ebook.app.bean.ChapterBean r1 = r7.m1073import(r1)     // Catch: java.lang.Exception -> L73
            java.lang.String r2 = "-1"
            r3 = 1
            if (r1 == 0) goto L47
            java.lang.String r4 = r1.getNid()     // Catch: java.lang.Exception -> L73
            boolean r4 = r2.equals(r4)     // Catch: java.lang.Exception -> L73
            if (r4 == 0) goto L47
            if (r8 == 0) goto L45
            int r4 = r7.f1683goto     // Catch: java.lang.Exception -> L73
            com.apk.g2 r5 = r7.f1700this     // Catch: java.lang.Exception -> L73
            java.lang.String r1 = r1.getOid()     // Catch: java.lang.Exception -> L73
            if (r5 == 0) goto L43
            com.apk.gg<java.lang.String, java.util.List<java.util.Vector>> r6 = r5.f1496do     // Catch: java.lang.Exception -> L3b
            if (r6 == 0) goto L3f
            com.apk.gg<java.lang.String, java.util.List<java.util.Vector>> r5 = r5.f1496do     // Catch: java.lang.Exception -> L3b
            java.lang.String r6 = "1"
            java.lang.String r1 = com.apk.g2.m915do(r6, r1)     // Catch: java.lang.Exception -> L3b
            java.lang.Object r1 = r5.get(r1)     // Catch: java.lang.Exception -> L3b
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Exception -> L3b
            if (r1 == 0) goto L3f
            int r1 = r1.size()     // Catch: java.lang.Exception -> L3b
            goto L40
        L3b:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Exception -> L73
        L3f:
            r1 = 0
        L40:
            if (r4 != r1) goto L47
            goto L45
        L43:
            r8 = 0
            throw r8     // Catch: java.lang.Exception -> L73
        L45:
            r1 = 1
            goto L48
        L47:
            r1 = 0
        L48:
            if (r8 == 0) goto L78
            if (r1 != 0) goto L78
            com.biquge.ebook.app.bean.BookChapter r8 = r7.m1078public()     // Catch: java.lang.Exception -> L70
            java.lang.String r4 = r7.f1672case     // Catch: java.lang.Exception -> L70
            com.biquge.ebook.app.bean.ChapterBean r4 = r7.m1073import(r4)     // Catch: java.lang.Exception -> L70
            if (r8 == 0) goto L78
            if (r4 == 0) goto L78
            java.lang.String r4 = r4.getNid()     // Catch: java.lang.Exception -> L70
            boolean r2 = r2.equals(r4)     // Catch: java.lang.Exception -> L70
            if (r2 == 0) goto L77
            int r2 = r8.getReadPage()     // Catch: java.lang.Exception -> L70
            int r8 = r8.getAllPage()     // Catch: java.lang.Exception -> L70
            if (r2 != r8) goto L77
            r0 = 1
            goto L77
        L70:
            r8 = move-exception
            r0 = r1
            goto L74
        L73:
            r8 = move-exception
        L74:
            r8.printStackTrace()
        L77:
            r1 = r0
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h2.m1065continue(boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e1, code lost:
        if (com.apk.ze.m3179private("SP_SHOW_CHAPTER_CHANGE_SOURCE_POPUP_KEY", true) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00f3, code lost:
        if (com.apk.ze.m3179private("SP_SHOW_CHAPTER_RELOAD_POPUP_KEY", true) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0162, code lost:
        if (com.apk.ze.m3179private("SP_SHOW_CHAPTER_CHANGE_SOURCE_POPUP_KEY", true) != false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0164, code lost:
        ((com.apk.l2) r10.f3970do).mo1601private(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017a, code lost:
        if (com.apk.ze.m3179private("SP_SHOW_CHAPTER_RELOAD_POPUP_KEY", true) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x017c, code lost:
        ((com.apk.l2) r10.f3970do).mo1601private(false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(java.util.List r11, int r12) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h2.d(java.util.List, int):void");
    }

    /* renamed from: default  reason: not valid java name */
    public int m1066default() {
        return ze.m3174instanceof("read_page_animation", 0);
    }

    @Override // com.apk.u20.Cfor
    /* renamed from: do */
    public void mo707do() {
        this.l = true;
        if (m1077protected()) {
            BarrageDataUtils.getInstance().setScrollState(false);
        }
    }

    public /* synthetic */ void e(int i) {
        s(i);
        this.v = false;
    }

    /* renamed from: else  reason: not valid java name */
    public void m1067else(boolean z) {
        o.m1921for().m1924new().execute(new Ctry(z));
    }

    /* renamed from: extends  reason: not valid java name */
    public final int m1068extends() {
        v9 v9Var = this.f1673catch;
        if (v9Var != null) {
            return v9Var.getCount();
        }
        return 0;
    }

    public void f(int i, List list) {
        try {
            try {
                if (m1072implements()) {
                    this.f1675const.remove(i + 1);
                    this.f1675const.addData((Collection) list);
                } else {
                    this.f1673catch.f5050try.remove(i + 1);
                    this.f1673catch.f5050try.addAll(list);
                    this.f1673catch.notifyDataSetChanged();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            H(false);
        }
    }

    /* renamed from: final  reason: not valid java name */
    public String m1069final(BookChapter bookChapter) {
        if (bookChapter == null || this.f1700this == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (bookChapter.getReadPage() == 1) {
            sb.append(bookChapter.getChapterName());
        }
        Vector<String> values = bookChapter.getValues();
        if (values != null) {
            Iterator<String> it = values.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    if (next.equals("LOAD_FAILED")) {
                        next = next.replace("LOAD_FAILED", "");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                sb.append(next);
            }
        }
        return sb.toString();
    }

    /* renamed from: finally  reason: not valid java name */
    public final WebSiteBean m1070finally() {
        CollectBook collectBook;
        if (this.f1704try == null && (collectBook = this.f1689new) != null && collectBook.isWebSite()) {
            this.f1704try = nd.m1853class(m1082super());
        }
        return this.f1704try;
    }

    public void g(List list) {
        try {
            try {
                if (m1072implements()) {
                    this.f1675const.addData((Collection) list);
                } else {
                    this.f1673catch.f5050try.addAll(list);
                    this.f1673catch.notifyDataSetChanged();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            H(false);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public boolean m1071goto(String str) {
        if (this.f1694return) {
            return true;
        }
        return (TextUtils.isEmpty(str) || "-2".equals(str) || "-1".equals(str)) ? false : true;
    }

    public void h(List list) {
        try {
            try {
                if (list.size() > 0) {
                    if (m1072implements()) {
                        this.f1675const.addData(0, (Collection) list);
                        int size = list.size();
                        if (this.f1675const.getItemCount() > size) {
                            this.f1674class.scrollToPosition(size);
                        }
                    } else {
                        this.f1673catch.f5050try.addAll(0, list);
                        this.f1673catch.notifyDataSetChanged();
                        int size2 = list.size();
                        if (this.f1673catch.getCount() > size2) {
                            this.f1671break.setCurrentItem(size2);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            H(false);
        }
    }

    public final BookChapter i(ChapterBean chapterBean) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m1082super());
        bookChapter.setChapterId(chapterBean != null ? chapterBean.getOid() : "");
        bookChapter.setChapterName(chapterBean != null ? chapterBean.getName() : "");
        bookChapter.setValues(null);
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setNeed_share(chapterBean != null ? chapterBean.getNeed_share() : "");
        bookChapter.setUrl("LOAD_CHAPTER_DEFAULT_CONTENT");
        return bookChapter;
    }

    @Override // com.apk.u20.Cfor
    /* renamed from: if */
    public void mo713if() {
        this.l = false;
        if (m1077protected()) {
            BarrageDataUtils.getInstance().setScrollState(true);
            if (m1072implements()) {
                K();
            }
        }
    }

    /* renamed from: implements  reason: not valid java name */
    public final boolean m1072implements() {
        return m1066default() == 1;
    }

    /* renamed from: import  reason: not valid java name */
    public final ChapterBean m1073import(String str) {
        return m1076native(m1082super(), str);
    }

    /* renamed from: instanceof  reason: not valid java name */
    public final boolean m1074instanceof() {
        return this.f1704try != null;
    }

    /* renamed from: interface  reason: not valid java name */
    public boolean m1075interface(boolean z) {
        return m1088volatile(m1080static(), z);
    }

    public final BookChapter j(ChapterBean chapterBean) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m1082super());
        bookChapter.setChapterId(chapterBean != null ? chapterBean.getOid() : this.f1672case);
        bookChapter.setChapterName(chapterBean != null ? chapterBean.getName() : "");
        Vector<String> vector = new Vector<>();
        vector.add("LOAD_FAILED");
        bookChapter.setValues(vector);
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setNeed_share(chapterBean != null ? chapterBean.getNeed_share() : "");
        return bookChapter;
    }

    public final BookChapter k(String str, String str2) {
        BookChapter bookChapter = new BookChapter();
        bookChapter.setNovelid(m1082super());
        bookChapter.setChapterId("LOAD_AD_CHAPTER_ID" + str);
        bookChapter.setChapterName(str2);
        Vector<String> vector = new Vector<>();
        vector.add("LOAD_AD_CHAPTER_CONTENT");
        bookChapter.setValues(vector);
        bookChapter.setAllPage(1);
        bookChapter.setReadPage(1);
        bookChapter.setUrl("LOAD_AD_CHAPTER_CONTENT");
        bookChapter.setItemType(3);
        return bookChapter;
    }

    public final List<BookChapter> l(ChapterBean chapterBean) {
        return m(chapterBean, true);
    }

    public final List<BookChapter> m(ChapterBean chapterBean, boolean z) {
        BookChapter bookChapter;
        ArrayList arrayList = new ArrayList();
        if (chapterBean != null && !TextUtils.isEmpty(chapterBean.getName())) {
            String oid = chapterBean.getOid();
            String name = chapterBean.getName();
            if (da.m430public() && z && chapterBean.isHasContent() && !this.e && !this.y && !"-1".equals(oid) && !"-1".equals(chapterBean.getNid()) && this.f1701throw.m1255new(hf.BOOK)) {
                BookChapter bookChapter2 = new BookChapter();
                bookChapter2.setNovelid(m1082super());
                bookChapter2.setChapterId("LOAD_AD_CHAPTER_ID" + oid);
                bookChapter2.setChapterName(name);
                Vector<String> vector = new Vector<>();
                vector.add("LOAD_AD_CHAPTER_CONTENT");
                bookChapter2.setValues(vector);
                bookChapter2.setAllPage(1);
                bookChapter2.setReadPage(1);
                bookChapter2.setUrl("LOAD_AD_CHAPTER_CONTENT");
                bookChapter2.setItemType(2);
                arrayList.add(bookChapter2);
                this.f1687interface = 0;
                if (this.f1701throw.m1257try() && (bookChapter = this.f1684implements) != null && bookChapter.getReadPage() == this.f1684implements.getAllPage()) {
                    this.f1698switch.post(new Runnable() { // from class: com.apk.y1
                        @Override // java.lang.Runnable
                        public final void run() {
                            h2.this.a();
                        }
                    });
                }
            }
            List<Vector> m933for = this.f1700this.m933for(oid);
            if (m933for != null && m933for.size() != 0) {
                Vector vector2 = m933for.get(0);
                if (vector2 == null || vector2.size() == 0) {
                    try {
                        v(chapterBean.getNovelId(), oid, name, this.f1683goto);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            } else {
                try {
                    v(chapterBean.getNovelId(), oid, name, this.f1683goto);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            List<Vector> m933for2 = this.f1700this.m933for(oid);
            if (m933for2 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Vector vector3 : m933for2) {
                    if (vector3 != null && vector3.size() > 0) {
                        arrayList2.add(vector3);
                    }
                }
                int size = arrayList2.size();
                int i = 1;
                for (int i2 = 0; i2 < size; i2++) {
                    BookChapter bookChapter3 = new BookChapter();
                    bookChapter3.setNovelid(chapterBean.getNovelId());
                    bookChapter3.setChapterId(oid);
                    bookChapter3.setChapterName(name);
                    bookChapter3.setUrl(chapterBean.getUrl());
                    bookChapter3.setValues((Vector) arrayList2.get(i2));
                    bookChapter3.setAllPage(size);
                    bookChapter3.setReadPage(i);
                    bookChapter3.setNeed_share(chapterBean.getNeed_share());
                    arrayList.add(bookChapter3);
                    i++;
                }
                try {
                    if (da.m430public() && z && this.f1701throw.m1252for()) {
                        int size2 = arrayList.size();
                        int i3 = 0;
                        for (int i4 = 0; i4 < i3 + size2; i4++) {
                            BookChapter bookChapter4 = (BookChapter) arrayList.get(i4);
                            int i5 = this.f1687interface + 1;
                            this.f1687interface = i5;
                            if (i5 != 0 && i5 % this.f1701throw.f2178goto == 0) {
                                arrayList.add(i4, k(bookChapter4.getChapterId(), bookChapter4.getChapterName()));
                                i3++;
                            }
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } else {
                arrayList.add(i(chapterBean));
            }
        }
        return arrayList;
    }

    public synchronized void n(boolean z) {
        this.f1674class.setLoadMore(true);
        H(true);
        ChapterBean m1073import = m1073import(this.f1672case);
        if (m1073import != null) {
            Cthis cthis = new Cthis(z, m1073import);
            this.i = cthis;
            cthis.executeOnExecutor(o.m1921for().m1924new(), new Void[0]);
        } else {
            H(false);
            this.f1674class.setLoadMore(false);
        }
    }

    /* renamed from: native  reason: not valid java name */
    public final ChapterBean m1076native(String str, String str2) {
        boolean z = false;
        ChapterBean chapterBean = null;
        try {
            if (!TextUtils.isEmpty(str2) && str2.contains("LOAD_AD_CHAPTER_ID")) {
                str2 = str2.replace("LOAD_AD_CHAPTER_ID", "");
                z = true;
            }
            chapterBean = g2.m921if(str, str2);
            if (z) {
                chapterBean.setHasContent(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return chapterBean;
    }

    public synchronized void o(boolean z) {
        if (this.k) {
            this.k = false;
            return;
        }
        this.f1674class.setLoadUp(true);
        H(true);
        ChapterBean m1073import = m1073import(this.f1672case);
        if (m1073import != null) {
            Cbreak cbreak = new Cbreak(z, m1073import);
            this.h = cbreak;
            cbreak.executeOnExecutor(o.m1921for().m1924new(), new Void[0]);
        } else {
            H(false);
            this.f1674class.setLoadUp(false);
        }
    }

    public void p(boolean z) {
        try {
            if (this.g) {
                return;
            }
            int currentPosition = m1072implements() ? this.f1674class.getCurrentPosition() : this.f1671break.getCurrentItem();
            if (currentPosition == (m1072implements() ? this.f1675const.getItemCount() : this.f1673catch.getCount()) - 1) {
                if (m1065continue(true)) {
                    ((l2) this.f3970do).mo1597import();
                } else {
                    n(true);
                }
            } else if (m1072implements()) {
                z();
                if (z) {
                    this.f1674class.smoothScrollToPosition(currentPosition + 1);
                } else {
                    this.f1674class.scrollToPosition(currentPosition + 1);
                }
            } else {
                this.f1671break.setCurrentItem(currentPosition + 1, z);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: protected  reason: not valid java name */
    public boolean m1077protected() {
        if (!this.f1694return && m1081strictfp()) {
            return ze.m3179private("SP_READ_SHOW_DARRAGE_KEY", true);
        }
        return false;
    }

    /* renamed from: public  reason: not valid java name */
    public BookChapter m1078public() {
        if (m1072implements()) {
            PageRecyclerView pageRecyclerView = this.f1674class;
            if (pageRecyclerView != null) {
                return m1079return(pageRecyclerView.getCurrentPosition());
            }
            return null;
        }
        ComicReaderViewpager comicReaderViewpager = this.f1671break;
        if (comicReaderViewpager != null) {
            return m1079return(comicReaderViewpager.getCurrentItem());
        }
        return null;
    }

    public void q() {
        gg<String, BarrageView> ggVar;
        gg<String, List<Vector>> ggVar2;
        Cimport cimport = this.f1701throw;
        if (cimport != null) {
            cimport.m1249case();
        }
        g2 g2Var = this.f1700this;
        if (g2Var != null && (ggVar2 = g2Var.f1496do) != null) {
            ggVar2.clear();
        }
        Handler handler = this.f1698switch;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f1698switch = null;
        }
        Cthis cthis = this.i;
        if (cthis != null) {
            cthis.cancel(true);
            this.i = null;
        }
        Cbreak cbreak = this.h;
        if (cbreak != null) {
            cbreak.cancel(true);
            this.h = null;
        }
        v9 v9Var = this.f1673catch;
        if (v9Var != null && (ggVar = v9Var.f5037const) != null) {
            Iterator it = ((HashSet) ggVar.entrySet()).iterator();
            while (it.hasNext()) {
                ((BarrageView) ((Map.Entry) it.next()).getValue()).destory();
            }
            v9Var.f5037const.clear();
        }
        gg<String, String> ggVar3 = this.b;
        if (ggVar3 != null) {
            ggVar3.clear();
        }
    }

    public void r(ViewGroup viewGroup, boolean z) {
        BookChapter bookChapter;
        if (!z && (bookChapter = this.p) != null) {
            boolean z2 = false;
            if (da.m430public()) {
                viewGroup.setPadding(0, this.r, 0, 0);
            } else {
                viewGroup.setPadding(u0.m2663do().f4814for ? u0.m2663do().f4813do : 0, this.r, 0, 0);
            }
            if (this.s == null) {
                this.s = LayoutInflater.from(this.f3971if);
            }
            this.t = null;
            if (bookChapter.getItemType() == 2) {
                View inflate = this.s.inflate(R.layout.include_bookread_ad_page_layout, (ViewGroup) null);
                inflate.setTag("AD");
                TextView textView = (TextView) inflate.findViewById(R.id.item_read_ad_continue_view);
                this.t = textView;
                textView.setText(ze.r(R.string.app_ad_to_read_txt, ""));
                this.t.setTextColor(ca.m315do().f542do.getColor());
                this.t.setVisibility(0);
                inflate.findViewById(R.id.item_read_ad_tips_view).setVisibility(8);
                Cimport cimport = this.f1701throw;
                if (cimport != null && cimport.m1257try()) {
                    this.f1701throw.m1253goto(this.f3971if);
                    try {
                        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.item_read_ad_layout);
                        String str = this.f1701throw.f2177for;
                        if (TextUtils.isEmpty(str)) {
                            str = ze.q(R.string.read_reward_video_desc_txt);
                        }
                        TextView textView2 = new TextView(this.f3971if);
                        textView2.setTextSize(2, 17.0f);
                        textView2.setTextColor(ca.m315do().f542do.getColor());
                        textView2.setText(str);
                        linearLayout.removeAllViews();
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        int m587catch = eg.m587catch(15.0f);
                        layoutParams.leftMargin = m587catch;
                        layoutParams.rightMargin = m587catch;
                        linearLayout.addView(textView2, layoutParams);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                } else {
                    LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.item_read_ad_layout);
                    linearLayout2.setBackgroundColor(Color.parseColor("#08000000"));
                    linearLayout2.removeAllViews();
                    d.Cdo.f803do.m400do(this.f3971if, linearLayout2, false);
                }
                if (viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                viewGroup.addView(inflate, new ViewGroup.LayoutParams(-1, -1));
            } else if (bookChapter.getItemType() == 3) {
                View inflate2 = this.s.inflate(R.layout.include_bookread_ad_page_layout, (ViewGroup) null);
                inflate2.setTag("AD");
                inflate2.findViewById(R.id.item_read_ad_continue_view).setVisibility(8);
                inflate2.findViewById(R.id.item_read_ad_tips_view).setVisibility(0);
                LinearLayout linearLayout3 = (LinearLayout) inflate2.findViewById(R.id.item_read_ad_layout);
                linearLayout3.setBackgroundColor(Color.parseColor("#08000000"));
                linearLayout3.removeAllViews();
                d.Cdo.f803do.m400do(this.f3971if, linearLayout3, false);
                if (viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                viewGroup.addView(inflate2, new ViewGroup.LayoutParams(-1, -1));
            } else {
                View inflate3 = this.s.inflate(R.layout.item_read_list_simulation_content_layout, (ViewGroup) null);
                inflate3.setTag("TXT");
                ((BookTitleTextView) inflate3.findViewById(R.id.book_read_chapter_name_txt)).setText(bookChapter.getChapterName());
                if (this.f1693public) {
                    v9 v9Var = this.f1673catch;
                    if (v9Var != null ? v9Var.m2785if(bookChapter) : false) {
                        z2 = true;
                    }
                }
                ReadContentLayout readContentLayout = (ReadContentLayout) inflate3.findViewById(R.id.book_read_content_layout);
                readContentLayout.setTouchListener(this.m);
                readContentLayout.setReloadClickListener(this.c);
                readContentLayout.m3481do(bookChapter, bookChapter.getChapterName(), z2);
                BookPageTextView bookPageTextView = (BookPageTextView) inflate3.findViewById(R.id.book_read_slide_page_txt);
                bookPageTextView.m3468if(bookChapter.getReadPage(), bookChapter.getAllPage());
                F(bookPageTextView);
                if (viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                viewGroup.addView(inflate3, new ViewGroup.LayoutParams(-1, -1));
            }
        }
        this.o.invalidate();
    }

    /* renamed from: return  reason: not valid java name */
    public BookChapter m1079return(int i) {
        BookChapter m2783do;
        try {
            if (m1072implements()) {
                if (this.f1675const == null) {
                    return null;
                }
                m2783do = (BookChapter) this.f1675const.getItem(i);
            } else if (this.f1673catch == null) {
                return null;
            } else {
                m2783do = this.f1673catch.m2783do(i);
            }
            return m2783do;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void s(int i) {
        PageView pageView;
        h2 h2Var;
        if (i >= 0) {
            try {
                if (i >= m1068extends()) {
                    return;
                }
                this.p = m1078public();
                if (this.o == null || (h2Var = (pageView = this.o).f7175new) == null) {
                    return;
                }
                h2Var.r(pageView.getNextPage(), false);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: static  reason: not valid java name */
    public ChapterBean m1080static() {
        return m1073import(this.f1672case);
    }

    /* renamed from: strictfp  reason: not valid java name */
    public final boolean m1081strictfp() {
        return w0.m2890static() && !m1074instanceof();
    }

    /* renamed from: super  reason: not valid java name */
    public String m1082super() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f1682for;
        String id = book != null ? book.getId() : "";
        if (TextUtils.isEmpty(id) && (collectBook = this.f1689new) != null) {
            id = collectBook.getCollectId();
        }
        return (!TextUtils.isEmpty(id) || (webSiteBean = this.f1704try) == null) ? id : webSiteBean.getNovelId();
    }

    /* renamed from: switch  reason: not valid java name */
    public int m1083switch() {
        if (m1072implements()) {
            PageRecyclerView pageRecyclerView = this.f1674class;
            if (pageRecyclerView != null) {
                return pageRecyclerView.getCurrentPosition();
            }
            return 0;
        }
        ComicReaderViewpager comicReaderViewpager = this.f1671break;
        if (comicReaderViewpager != null) {
            return comicReaderViewpager.getCurrentItem();
        }
        return 0;
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m1084synchronized(List list, int i) {
        try {
            if (m1072implements()) {
                this.f1675const.setNewData(list);
                this.f1674class.setAdapter(this.f1675const);
                this.f1674class.scrollToPosition(i);
            } else {
                this.f1673catch.f5050try.clear();
                this.f1673catch.f5050try.addAll(list);
                this.f1671break.setAdapter(this.f1673catch);
                this.f1671break.setCurrentItem(i);
                if (m1066default() == 2) {
                    ((l2) this.f3970do).c();
                    s(i);
                }
            }
            E(i);
            ((l2) this.f3970do).mo1590do(false, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ((l2) this.f3970do).mo1590do(false, false);
    }

    public boolean t() {
        g m1805new = r0.m2199catch().m1805new();
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

    /* renamed from: this  reason: not valid java name */
    public void m1085this() {
        BookChapter bookChapter = this.f1684implements;
        if (bookChapter == null || bookChapter.getItemType() != 2) {
            return;
        }
        Cimport cimport = this.f1701throw;
        if (cimport != null && !cimport.m1254if(this.f1672case)) {
            ze.m3186switch(this.f1674class);
        }
        if (m1072implements()) {
            Cimport cimport2 = this.f1701throw;
            if (cimport2 != null && cimport2.m1257try()) {
                Cimport cimport3 = this.f1701throw;
                if (cimport3.f2191try && !cimport3.m1254if(this.f1672case)) {
                    GV gv = this.f3970do;
                    if (gv != 0) {
                        ((l2) gv).mo1585case(true);
                        return;
                    }
                    return;
                }
            }
            PageRecyclerView pageRecyclerView = this.f1674class;
            TextView textView = (TextView) pageRecyclerView.findViewWithTag(n2.m1842throws(m1078public()) + "ContinueReadTView");
            if (textView != null) {
                m1060break(textView);
                return;
            }
            return;
        }
        ComicReaderViewpager comicReaderViewpager = this.f1671break;
        TextView textView2 = (TextView) comicReaderViewpager.findViewWithTag(n2.m1842throws(m1078public()) + "ContinueReadTView");
        if (textView2 != null) {
            m1060break(textView2);
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public String m1086throw(BookChapter bookChapter) {
        Vector<String> values;
        String str = "";
        if (bookChapter == null || this.f1700this == null || (values = bookChapter.getValues()) == null) {
            return "";
        }
        Iterator<String> it = values.iterator();
        while (it.hasNext()) {
            String next = it.next();
            str = com.apk.Cgoto.m989case(str, next);
            if (next.length() > 20) {
                return com.apk.Cgoto.m989case(str, "...");
            }
        }
        return str;
    }

    /* renamed from: transient  reason: not valid java name */
    public boolean m1087transient() {
        return m1066default() == 2;
    }

    public void u() {
        try {
            if (this.g) {
                return;
            }
            if (m1072implements()) {
                z();
                int currentPosition = this.f1674class.getCurrentPosition();
                if (currentPosition > 0) {
                    this.f1674class.scrollToPosition(currentPosition - 1);
                } else if (!m1059abstract()) {
                    o(true);
                }
            } else {
                int currentItem = this.f1671break.getCurrentItem();
                if (currentItem > 0) {
                    this.f1671break.setCurrentItem(currentItem - 1, false);
                } else if (!m1059abstract()) {
                    o(true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void v(String str, String str2, String str3, int i) {
        ChapterBean m921if;
        try {
            this.f1683goto = i;
            if (TextUtils.isEmpty(str3) && (m921if = g2.m921if(str, str2)) != null) {
                str3 = m921if.getName();
            }
            this.f1700this.m937throw(str, str2, str3, this.f1685import, this.f1688native);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: volatile  reason: not valid java name */
    public boolean m1088volatile(ChapterBean chapterBean, boolean z) {
        if (this.f1694return) {
            return false;
        }
        if (chapterBean == null || TextUtils.isEmpty(chapterBean.getName()) || TextUtils.isEmpty(chapterBean.getNid())) {
            return true;
        }
        return (n2.k(chapterBean.getNovelId(), chapterBean.getOid()) ^ true) || (z ? chapterBean.isHasContent() ^ true : false);
    }

    public void w() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            o.m1921for().m1924new().execute(new Cnew());
        } else {
            B(this.f1683goto, true);
        }
    }

    /* renamed from: while  reason: not valid java name */
    public String m1089while() {
        WebSiteBean webSiteBean;
        CollectBook collectBook;
        Book book = this.f1682for;
        String name = book != null ? book.getName() : "";
        if (TextUtils.isEmpty(name) && (collectBook = this.f1689new) != null) {
            name = collectBook.getName();
        }
        return (!TextUtils.isEmpty(name) || (webSiteBean = this.f1704try) == null) ? name : webSiteBean.getTitle();
    }

    public void x() {
        try {
            if (this.f1673catch != null && this.f1673catch.getCount() > 0) {
                this.f1671break.setCurrentItem(m1083switch());
            }
            if (this.f1675const == null || this.f1675const.getItemCount() <= 0) {
                return;
            }
            this.f1674class.scrollToPosition(m1083switch());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void y() {
        int i;
        ArrayList arrayList = new ArrayList();
        ChapterBean m1073import = m1073import(this.f1672case);
        if (m1073import != null) {
            String pid = m1073import.getPid();
            if (m1071goto(pid)) {
                List<BookChapter> m = m(m1073import(pid), false);
                i = ((ArrayList) m).size();
                arrayList.addAll(m);
            } else {
                i = 0;
            }
            List<BookChapter> m2 = m(m1073import, false);
            ((ArrayList) m2).size();
            arrayList.addAll(m2);
            String nid = m1073import.getNid();
            if (m1071goto(nid)) {
                List<BookChapter> l = l(m1073import(nid));
                ((ArrayList) l).size();
                arrayList.addAll(l);
            }
            int i2 = this.f1683goto;
            if (i2 > 0) {
                i2--;
            }
            int i3 = i + i2;
            if (m1072implements()) {
                this.f1675const.setNewData(arrayList);
                this.f1674class.scrollToPosition(i3);
                return;
            }
            this.f1673catch.f5050try.clear();
            this.f1673catch.f5050try.addAll(arrayList);
            this.f1671break.setAdapter(this.f1673catch);
            this.f1671break.setCurrentItem(i3);
            if (m1066default() == 2) {
                ((l2) this.f3970do).c();
                s(i3);
            }
        }
    }

    public final void z() {
        this.f1702throws = 0;
        this.f1677default = null;
        u20 u20Var = this.f1674class.f10220if;
        if (u20Var != null) {
            u20Var.f4835super = 0;
        }
        final String m1082super = m1082super();
        o m1921for = o.m1921for();
        Runnable runnable = new Runnable() { // from class: com.apk.r1
            @Override // java.lang.Runnable
            public final void run() {
                LitePal.deleteAll(ReadPostion.class, "bookId = ?", m1082super);
            }
        };
        ThreadPoolExecutor threadPoolExecutor = m1921for.f3327do;
        if (threadPoolExecutor != null) {
            threadPoolExecutor.execute(runnable);
        }
    }
}
