package com.apk;

import android.app.Activity;
import android.widget.LinearLayout;
import com.apk.Cbreak;
import com.apk.Cclass;
import com.swl.gg.ggs.SwlAdBesttopTwoView;
import com.swl.gg.ggs.SwlAdBesttopView;
import java.util.List;
import org.json.JSONObject;

/* compiled from: AdBestTopHelper.java */
/* renamed from: com.apk.class  reason: invalid class name */
/* loaded from: classes8.dex */
public class Cclass extends Cbreak {

    /* renamed from: break  reason: not valid java name */
    public LinearLayout f652break;

    /* renamed from: case  reason: not valid java name */
    public int f653case;

    /* renamed from: catch  reason: not valid java name */
    public boolean f654catch;

    /* renamed from: class  reason: not valid java name */
    public SwlAdBesttopView f655class;

    /* renamed from: const  reason: not valid java name */
    public SwlAdBesttopTwoView f656const;

    /* renamed from: else  reason: not valid java name */
    public List<g> f657else;

    /* renamed from: final  reason: not valid java name */
    public final n40 f658final = new Cdo();

    /* renamed from: for  reason: not valid java name */
    public long f659for;

    /* renamed from: goto  reason: not valid java name */
    public Activity f660goto;

    /* renamed from: if  reason: not valid java name */
    public Cbreak.Cdo f661if;

    /* renamed from: new  reason: not valid java name */
    public long f662new;

    /* renamed from: this  reason: not valid java name */
    public boolean f663this;

    /* renamed from: try  reason: not valid java name */
    public boolean f664try;

    /* compiled from: AdBestTopHelper.java */
    /* renamed from: com.apk.class$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements n40 {
        public Cdo() {
        }

        /* renamed from: do  reason: not valid java name */
        public /* synthetic */ void m361do() {
            Cclass.this.m358if();
        }

        /* renamed from: for  reason: not valid java name */
        public void m362for() {
            try {
                if (Cclass.this.f652break.getChildCount() > 0) {
                    Cclass.this.f652break.removeAllViews();
                }
                if (!Cclass.this.f654catch) {
                    Cclass.this.f652break.addView(Cclass.this.f655class);
                } else {
                    Cclass.this.f652break.addView(Cclass.this.f656const);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        /* renamed from: if  reason: not valid java name */
        public void m363if() {
            LinearLayout linearLayout = Cclass.this.f652break;
            if (linearLayout != null) {
                if (linearLayout.getChildCount() > 0) {
                    Cclass.this.f652break.removeAllViews();
                }
                Cclass.this.m360try();
                Cclass cclass = Cclass.this;
                if (cclass.f662new != 0) {
                    cclass.f652break.postDelayed(new Runnable() { // from class: com.apk.this
                        @Override // java.lang.Runnable
                        public final void run() {
                            Cclass.Cdo.this.m361do();
                        }
                    }, Cclass.this.f662new);
                }
            }
        }
    }

    @Override // com.apk.Cbreak
    /* renamed from: do */
    public void mo279do() {
        int size;
        Cbreak.Cdo cdo;
        if (this.f659for != 0 && (cdo = this.f661if) != null) {
            cdo.removeMessages(102);
            this.f661if.sendEmptyMessageDelayed(102, this.f659for);
        }
        if (this.f664try) {
            return;
        }
        try {
            if (this.f457do) {
                size = Cfinally.m797else().m825this(this.f657else);
            } else {
                size = this.f653case % this.f657else.size();
                this.f653case++;
            }
            g gVar = this.f657else.get(size);
            String m899if = gVar.m899if();
            String m898do = gVar.m898do();
            if ("swl".equals(m899if)) {
                m359new(m898do);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m357for(Activity activity, LinearLayout linearLayout, JSONObject jSONObject, boolean z) {
        this.f660goto = activity;
        this.f652break = linearLayout;
        this.f654catch = z;
        this.f664try = false;
        o.m1921for().m1922do(new Ccatch(this, jSONObject));
    }

    /* renamed from: if  reason: not valid java name */
    public void m358if() {
        this.f664try = false;
        mo279do();
    }

    /* renamed from: new  reason: not valid java name */
    public final void m359new(String str) {
        if (!this.f654catch) {
            try {
                if (this.f655class == null) {
                    SwlAdBesttopView swlAdBesttopView = new SwlAdBesttopView(this.f660goto);
                    this.f655class = swlAdBesttopView;
                    swlAdBesttopView.setAdViewListener(this.f658final);
                    this.f655class.setClose(this.f663this);
                }
                this.f655class.loadAd(str);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (this.f656const == null) {
            SwlAdBesttopTwoView swlAdBesttopTwoView = new SwlAdBesttopTwoView(this.f660goto);
            this.f656const = swlAdBesttopTwoView;
            swlAdBesttopTwoView.setAdViewListener(this.f658final);
            this.f656const.setClose(this.f663this);
        }
        this.f656const.loadAd(str);
    }

    /* renamed from: try  reason: not valid java name */
    public void m360try() {
        this.f664try = true;
        SwlAdBesttopView swlAdBesttopView = this.f655class;
        if (swlAdBesttopView != null) {
            swlAdBesttopView.destroy();
            this.f655class = null;
        }
        Cbreak.Cdo cdo = this.f661if;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
            this.f661if = null;
        }
    }
}
