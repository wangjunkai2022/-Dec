package com.apk;

import android.view.View;
/* compiled from: BaseAdProvider.java */
/* loaded from: classes7.dex */
public abstract class e70 {

    /* renamed from: do  reason: not valid java name */
    public boolean f1023do;

    public void a(String str, z60 z60Var) {
        Cgoto.m997extends("激励视频_", str, "_onReward");
        if (z60Var != null) {
            z60Var.mo525try();
        }
    }

    /* renamed from: abstract  reason: not valid java name */
    public void m542abstract(String str) {
        Cgoto.m997extends("开屏_", str, "_startReq");
    }

    public void b(String str) {
        Cgoto.m997extends("信息流_", str, "_startReq");
    }

    /* renamed from: break  reason: not valid java name */
    public void m543break(String str, x60 x60Var) {
        Cgoto.m997extends("Banner_", str, "_onClicked");
        if (x60Var != null) {
            x60Var.onAdClick();
        }
    }

    public void c(String str, z60 z60Var) {
        Cgoto.m997extends("激励视频_", str, "_onCached");
        if (z60Var != null) {
            z60Var.onVideoCached();
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m544case(View view, String str, x60 x60Var) {
        Cgoto.m997extends("Banner_", str, "_onLoaded");
        if (x60Var != null) {
            x60Var.mo165new(view);
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public void m545catch(String str, z60 z60Var) {
        if (z60Var != null) {
            z60Var.onAdClick();
        }
        Cgoto.m997extends("激励视频_", str, "_onClicked");
    }

    /* renamed from: class  reason: not valid java name */
    public void m546class(String str, a70 a70Var) {
        y60 y60Var;
        Cgoto.m997extends("开屏_", str, "_onClicked");
        if (a70Var == null || (y60Var = e60.this.f1013for) == null) {
            return;
        }
        y60Var.onAdClick();
    }

    /* renamed from: const  reason: not valid java name */
    public void m547const(int i, String str, String str2, x60 x60Var) {
        k40.m1463this("信息流_" + str2 + "_Failed：" + str);
        if (x60Var != null) {
            x60Var.mo159if(i, str);
        }
    }

    /* renamed from: continue  reason: not valid java name */
    public void m548continue(String str, v60 v60Var) {
        Cgoto.m997extends("全屏视频_", str, "_onLoaded");
        if (v60Var != null) {
            v60Var.onAdLoaded();
        }
    }

    public void d(String str) {
        Cgoto.m997extends("激励视频_", str, "_onComplete");
    }

    /* renamed from: default  reason: not valid java name */
    public void m549default(String str) {
        Cgoto.m997extends("全屏视频_", str, "_onComplete");
    }

    /* renamed from: do  reason: not valid java name */
    public void m550do(int i, String str, String str2, v60 v60Var) {
        k40.m1463this("全屏视频_" + str2 + "_onFailed：" + str);
        if (v60Var != null) {
            v60Var.mo159if(i, str);
        }
    }

    /* renamed from: else  reason: not valid java name */
    public void mo551else(String str) {
        k40.m1463this(str + "在时间内未完成cache，直接先show，避免loading太久：8000");
    }

    /* renamed from: extends  reason: not valid java name */
    public void m552extends(String str, w60 w60Var) {
        Cgoto.m997extends("插屏_", str, "_onLoaded");
        if (w60Var != null) {
            w60Var.mo449for();
        }
    }

    /* renamed from: final  reason: not valid java name */
    public void m553final(View view, String str, x60 x60Var) {
        Cgoto.m997extends("信息流_", str, "_onLoaded");
        if (x60Var != null) {
            x60Var.mo165new(view);
        }
    }

    /* renamed from: finally  reason: not valid java name */
    public void m554finally(String str, z60 z60Var) {
        Cgoto.m997extends("激励视频_", str, "_onLoaded");
        if (z60Var != null) {
            z60Var.onAdLoaded();
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m555for(int i, String str, String str2, x60 x60Var) {
        k40.m1463this("Banner_" + str2 + "_Failed：" + str);
        if (x60Var != null) {
            x60Var.mo159if(i, str);
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public void m556goto(String str, v60 v60Var) {
        Cgoto.m997extends("全屏视频_", str, "_onCached");
        if (v60Var != null) {
            v60Var.onVideoCached();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m557if(int i, String str, String str2, w60 w60Var) {
        k40.m1463this("插屏_" + str2 + "_onFailed：" + str);
        if (w60Var != null) {
            w60Var.mo159if(i, str);
        }
    }

    /* renamed from: implements  reason: not valid java name */
    public void m558implements(String str, x60 x60Var) {
        Cgoto.m997extends("信息流_", str, "_onClosed");
        if (x60Var != null) {
            x60Var.mo1184goto();
        }
    }

    /* renamed from: import  reason: not valid java name */
    public void m559import(String str, z60 z60Var) {
        Cgoto.m997extends("激励视频_", str, "_onClosed");
        if (z60Var != null) {
            z60Var.onAdClose();
        }
    }

    /* renamed from: instanceof  reason: not valid java name */
    public void m560instanceof(String str) {
        Cgoto.m997extends("全屏视频_", str, "_startReq");
    }

    /* renamed from: interface  reason: not valid java name */
    public void m561interface(String str) {
        Cgoto.m997extends("插屏_", str, "_startReq");
    }

    /* renamed from: native  reason: not valid java name */
    public void m562native(String str, a70 a70Var) {
        y60 y60Var;
        Cgoto.m997extends("开屏_", str, "_onDismiss");
        if (a70Var == null || (y60Var = e60.this.f1013for) == null) {
            return;
        }
        y60Var.onAdDismiss();
    }

    /* renamed from: new  reason: not valid java name */
    public void m563new(int i, String str, String str2, z60 z60Var) {
        k40.m1463this("激励视频_" + str2 + "_onFailed：" + str);
        if (z60Var != null) {
            z60Var.mo159if(i, str);
        }
    }

    /* renamed from: package  reason: not valid java name */
    public void m564package(String str, a70 a70Var) {
        y60 y60Var;
        Cgoto.m997extends("开屏_", str, "_onLoaded");
        if (a70Var == null || (y60Var = e60.this.f1013for) == null) {
            return;
        }
        y60Var.mo2250for();
    }

    /* renamed from: private  reason: not valid java name */
    public void m565private(String str) {
        Cgoto.m997extends("Banner_", str, "_startReq");
    }

    /* renamed from: protected  reason: not valid java name */
    public void m566protected(String str) {
        Cgoto.m997extends("激励视频_", str, "_startReq");
    }

    /* renamed from: public  reason: not valid java name */
    public void m567public(String str, b70 b70Var) {
        k40.m1463this(str + "广告加载外部超时");
        if (b70Var != null) {
            b70Var.mo159if(83003, "广告加载外部超时");
        }
    }

    /* renamed from: return  reason: not valid java name */
    public void m568return(String str, v60 v60Var) {
        Cgoto.m997extends("全屏视频_", str, "_onClosed");
        if (v60Var != null) {
            v60Var.onAdClose();
        }
    }

    /* renamed from: static  reason: not valid java name */
    public void m569static(String str, w60 w60Var) {
        if (this.f1023do) {
            return;
        }
        this.f1023do = true;
        Cgoto.m997extends("插屏_", str, "_onExpose");
        if (w60Var != null) {
            w60Var.mo448do();
        }
    }

    /* renamed from: strictfp  reason: not valid java name */
    public void m570strictfp(String str, x60 x60Var) {
        Cgoto.m997extends("信息流_", str, "_onClicked");
        if (x60Var != null) {
            x60Var.onAdClick();
        }
    }

    /* renamed from: super  reason: not valid java name */
    public void m571super(String str, v60 v60Var) {
        Cgoto.m997extends("全屏视频_", str, "_onClicked");
        if (v60Var != null) {
            v60Var.onAdClick();
        }
    }

    /* renamed from: switch  reason: not valid java name */
    public void m572switch(String str, x60 x60Var) {
        if (this.f1023do) {
            return;
        }
        this.f1023do = true;
        Cgoto.m997extends("Banner_", str, "_onExpose");
        if (x60Var != null) {
            x60Var.mo164do();
        }
    }

    /* renamed from: synchronized  reason: not valid java name */
    public void m573synchronized(String str, x60 x60Var) {
        if (this.f1023do) {
            return;
        }
        this.f1023do = true;
        Cgoto.m997extends("信息流_", str, "_onExpose");
        if (x60Var != null) {
            x60Var.mo164do();
        }
    }

    /* renamed from: this  reason: not valid java name */
    public void m574this(String str, w60 w60Var) {
        Cgoto.m997extends("插屏_", str, "_onClicked");
        if (w60Var != null) {
            w60Var.onAdClick();
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public void m575throw(String str, w60 w60Var) {
        Cgoto.m997extends("插屏_", str, "_onClosed");
        if (w60Var != null) {
            w60Var.onAdClosed();
        }
    }

    /* renamed from: throws  reason: not valid java name */
    public void m576throws(String str, a70 a70Var) {
        y60 y60Var;
        if (this.f1023do) {
            return;
        }
        this.f1023do = true;
        Cgoto.m997extends("开屏_", str, "_onExposure");
        if (a70Var == null || (y60Var = e60.this.f1013for) == null) {
            return;
        }
        y60Var.mo2249do();
    }

    /* renamed from: transient  reason: not valid java name */
    public void m577transient(String str, v60 v60Var) {
        Cgoto.m997extends("全屏视频_", str, "_onShow");
        if (v60Var != null) {
            v60Var.onAdShow();
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m578try(int i, String str, String str2, a70 a70Var) {
        y60 y60Var;
        k40.m1463this("开屏_" + str2 + "_onFailed：" + str);
        if (a70Var == null || (y60Var = e60.this.f1013for) == null) {
            return;
        }
        y60Var.mo159if(i, str);
    }

    /* renamed from: volatile  reason: not valid java name */
    public void m579volatile(String str, z60 z60Var) {
        Cgoto.m997extends("激励视频_", str, "_onShow");
        if (z60Var != null) {
            z60Var.onAdShow();
        }
    }

    /* renamed from: while  reason: not valid java name */
    public void m580while(String str, x60 x60Var) {
        Cgoto.m997extends("Banner_", str, "_onClosed");
        if (x60Var != null) {
            x60Var.mo1184goto();
        }
    }
}
