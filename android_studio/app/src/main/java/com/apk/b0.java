package com.apk;

import android.content.Context;
import android.os.Build;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.BaiduTtsConfigBean;
import java.io.File;

/* compiled from: BaiDuVoiceUtils.java */
/* loaded from: classes8.dex */
public class b0 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ Context f227do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ boolean f228for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ e1 f229if;

    /* renamed from: new  reason: not valid java name */
    public final /* synthetic */ c0 f230new;

    public b0(c0 c0Var, Context context, e1 e1Var, boolean z) {
        this.f230new = c0Var;
        this.f227do = context;
        this.f229if = e1Var;
        this.f228for = z;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        if (!this.f230new.f475case) {
            try {
                File dir = AppContext.f6392case.getDir("jniLibs", 0);
                if (!new File(dir + File.separator + "BaiduPlugin").exists()) {
                    ze.m3188this(a6.m18else().m24this() + File.separator + "BaiduPlugin", dir + File.separator + "BaiduPlugin");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        c0 c0Var = this.f230new;
        if (!c0Var.f475case) {
            String str = Build.CPU_ABI;
            c0Var.f475case = true;
            c0.m295do(c0Var, str, "libBDSpeechDecoder_V1.so");
            c0.m295do(this.f230new, str, "libgnustl_shared.so");
            c0.m295do(this.f230new, str, "libbd_etts.so");
            c0.m295do(this.f230new, str, "libbdtts.so");
            if (!this.f230new.f475case) {
                BaiduTtsConfigBean baiduTtsConfigBean = Ccontinue.m379if().f713final;
                if (baiduTtsConfigBean == null) {
                    baiduTtsConfigBean = new BaiduTtsConfigBean();
                }
                if (!"WIFI_4G".equals(baiduTtsConfigBean.getYyonline())) {
                    baiduTtsConfigBean.setYyonline("WIFI_4G");
                    Ccontinue m379if = Ccontinue.m379if();
                    if (m379if != null) {
                        m379if.f713final = baiduTtsConfigBean;
                    } else {
                        throw null;
                    }
                }
            }
        }
        this.f230new.f478for = new f0(this.f227do, this.f229if);
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        if (eg.m600implements()) {
            this.f229if.mo534for(true, this.f228for);
        } else {
            this.f229if.mo534for(this.f230new.f475case, this.f228for);
        }
    }
}
