package com.apk;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.apk.Cstrictfp;
import com.swl.gg.ggs.SwlAdTextView;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: AdViewText.java */
/* loaded from: classes8.dex */
public class b extends Cstrictfp {

    /* renamed from: break  reason: not valid java name */
    public int f214break;

    /* renamed from: case  reason: not valid java name */
    public LinearLayout f215case;

    /* renamed from: catch  reason: not valid java name */
    public List<g> f216catch;

    /* renamed from: class  reason: not valid java name */
    public long f217class;

    /* renamed from: const  reason: not valid java name */
    public boolean f218const;

    /* renamed from: else  reason: not valid java name */
    public ImageView f219else;

    /* renamed from: final  reason: not valid java name */
    public int f220final;

    /* renamed from: goto  reason: not valid java name */
    public int f221goto;

    /* renamed from: new  reason: not valid java name */
    public Cstrictfp.Cdo f222new;

    /* renamed from: super  reason: not valid java name */
    public boolean f223super;

    /* renamed from: this  reason: not valid java name */
    public int f224this;

    /* renamed from: throw  reason: not valid java name */
    public SwlAdTextView f225throw;

    /* renamed from: try  reason: not valid java name */
    public Activity f226try;

    public b(@NonNull Context context) {
        super(context, null, 0);
        this.f214break = -1;
        LayoutInflater.from(getContext()).inflate(R.layout.adview_banner_layout, this);
        setVisibility(8);
        this.f215case = (LinearLayout) findViewById(R.id.adview_banner_layout);
        this.f219else = (ImageView) findViewById(R.id.adview_close_bt);
        DisplayMetrics displayMetrics = getContext().getApplicationContext().getResources().getDisplayMetrics();
        int min = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.f221goto = min;
        this.f224this = (int) (min / 6.2f);
    }

    /* renamed from: if  reason: not valid java name */
    public static void m138if(b bVar, View view) {
        ViewGroup viewGroup;
        if (bVar != null) {
            try {
                if (bVar.f215case.getChildCount() > 0) {
                    bVar.f215case.removeAllViews();
                }
                if (view != null && view.getParent() != null && (viewGroup = (ViewGroup) view.getParent()) != null && viewGroup.getChildCount() > 0) {
                    viewGroup.removeAllViews();
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
                layoutParams.gravity = 17;
                bVar.f215case.addView(view, layoutParams);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        throw null;
    }

    @Override // com.apk.Cstrictfp
    /* renamed from: do  reason: not valid java name */
    public void mo139do() {
        int size;
        if (this.f217class > 0 && this.f4591for) {
            if (this.f222new == null) {
                this.f222new = new Cstrictfp.Cdo(this);
            }
            this.f222new.removeMessages(102);
            this.f222new.sendEmptyMessageDelayed(102, this.f217class);
        }
        if (this.f218const) {
            return;
        }
        try {
            if (this.f223super) {
                size = Cfinally.m797else().m825this(this.f216catch);
            } else {
                size = this.f220final % this.f216catch.size();
                this.f220final++;
            }
            g gVar = this.f216catch.get(size);
            String m899if = gVar.m899if();
            String m898do = gVar.m898do();
            if ("swl".equals(m899if)) {
                SwlAdTextView swlAdTextView = new SwlAdTextView(this.f226try, new a(this));
                this.f225throw = swlAdTextView;
                int i = this.f214break;
                if (i != -1) {
                    swlAdTextView.setTxtGravity(i);
                }
                this.f225throw.loadAd(m898do);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m140for() {
        setVisibility(8);
        removeAllViews();
        LinearLayout linearLayout = this.f215case;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
        Cstrictfp.Cdo cdo = this.f222new;
        if (cdo != null) {
            cdo.removeCallbacksAndMessages(null);
        }
        SwlAdTextView swlAdTextView = this.f225throw;
        if (swlAdTextView != null) {
            swlAdTextView.onDestroy();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f221goto, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f224this, 1073741824));
    }

    public void setTxtGravity(int i) {
        this.f214break = i;
    }
}
