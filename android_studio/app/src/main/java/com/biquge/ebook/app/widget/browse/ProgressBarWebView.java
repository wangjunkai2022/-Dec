package com.biquge.ebook.app.widget.browse;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.apk.ih;
import com.apk.je;
import com.apk.jh;
import com.apk.kh;
import com.apk.lh;
import com.apk.mh;
import com.apk.nh;
import com.apk.o1;
import com.apk.oh;
import com.apk.ph;
import com.apk.re;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;

/* loaded from: classes8.dex */
public class ProgressBarWebView extends RelativeLayout {

    /* renamed from: break  reason: not valid java name */
    public boolean f8302break;

    /* renamed from: case  reason: not valid java name */
    public o1 f8303case;

    /* renamed from: do  reason: not valid java name */
    public kh f8304do;

    /* renamed from: else  reason: not valid java name */
    public Cif f8305else;

    /* renamed from: for  reason: not valid java name */
    public re f8306for;

    /* renamed from: goto  reason: not valid java name */
    public boolean f8307goto;

    /* renamed from: if  reason: not valid java name */
    public ph f8308if;

    /* renamed from: new  reason: not valid java name */
    public jh f8309new;

    /* renamed from: this  reason: not valid java name */
    public WeakReference<LoadingPopupView> f8310this;

    /* renamed from: try  reason: not valid java name */
    public boolean f8311try;

    /* renamed from: com.biquge.ebook.app.widget.browse.ProgressBarWebView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: continue */
        void mo3387continue(String str, String str2, String str3, long j, String str4, String str5);
    }

    /* renamed from: com.biquge.ebook.app.widget.browse.ProgressBarWebView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: for */
        void mo1476for(WebView webView, String str, Bitmap bitmap);

        /* renamed from: goto */
        void mo1477goto();

        /* renamed from: instanceof */
        void mo1478instanceof(WebView webView, String str);

        /* renamed from: interface */
        void mo1479interface(String str);

        /* renamed from: static */
        void mo1480static(WebView webView, String str);
    }

    public ProgressBarWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (this.f8304do == null) {
            this.f8304do = new kh(context, attributeSet);
        }
        if (this.f8308if == null) {
            this.f8308if = new ph(context.getApplicationContext());
        }
        if (this.f8306for == null) {
            this.f8306for = new re(context);
        }
        this.f8306for.setReloadListener(new lh(this));
        this.f8306for.setVisibility(8);
        this.f8308if.setWebChromeClient(new mh(this));
        nh nhVar = new nh(this);
        this.f8309new = nhVar;
        this.f8308if.setWebViewClient(nhVar);
        this.f8308if.setOnKeyListener(new oh(this));
        addView(this.f8308if, new ViewGroup.LayoutParams(-1, -1));
        addView(this.f8306for, new ViewGroup.LayoutParams(-1, -1));
        addView(this.f8304do);
    }

    /* renamed from: case  reason: not valid java name */
    public void m3532case() {
        re reVar = this.f8306for;
        if (reVar != null && reVar.f4034do.getVisibility() != 8) {
            reVar.f4034do.setVisibility(8);
        }
        kh khVar = this.f8304do;
        if (khVar != null) {
            khVar.setProgress(10);
            this.f8304do.setVisibility(0);
        }
        ph phVar = this.f8308if;
        if (phVar != null) {
            phVar.loadUrl(phVar.getUrl());
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3533do() {
        if (this.f8303case != null) {
            try {
                WebBackForwardList copyBackForwardList = getWebView().copyBackForwardList();
                if (copyBackForwardList != null) {
                    if (!TextUtils.isEmpty(copyBackForwardList.getItemAtIndex(copyBackForwardList.getCurrentIndex()).getUrl())) {
                        WebContentView.m3440do(((je) this.f8303case).f2311do);
                    } else {
                        o1 o1Var = this.f8303case;
                        getWebView().getUrl();
                        WebContentView.m3440do(((je) o1Var).f2311do);
                    }
                } else {
                    o1 o1Var2 = this.f8303case;
                    getWebView().getUrl();
                    WebContentView.m3440do(((je) o1Var2).f2311do);
                }
            } catch (Exception e) {
                e.printStackTrace();
                o1 o1Var3 = this.f8303case;
                getWebView().getUrl();
                WebContentView.m3440do(((je) o1Var3).f2311do);
            }
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3536new() {
        try {
            if (this.f8310this == null || this.f8310this.get() == null) {
                return;
            }
            this.f8310this.get().dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public kh getProgressBar() {
        return this.f8304do;
    }

    public ih getWebView() {
        return this.f8308if;
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m3535if() {
        if (this.f8308if.canGoBack()) {
            this.f8308if.goBack();
            m3533do();
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        try {
            super.onRestoreInstanceState(parcelable);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setDownloadListener(Cdo cdo) {
        if (cdo != null) {
            this.f8308if.setWebViewListener(cdo);
        }
    }

    public void setInterceptRequest(boolean z) {
        jh jhVar = this.f8309new;
        if (jhVar != null) {
            jhVar.f2328do = z;
        }
    }

    public void setWebViewBackForwardListener(o1 o1Var) {
        this.f8303case = o1Var;
    }

    public void setWebViewListener(Cif cif) {
        if (cif != null) {
            this.f8305else = cif;
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m3537try(String str) {
        ph phVar = this.f8308if;
        if (phVar != null) {
            phVar.loadUrl(str);
        }
    }
}
