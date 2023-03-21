package com.biquge.ebook.app.widget;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.apk.Ccontinue;
import com.apk.b1;
import com.apk.bg;
import com.apk.jg;
import com.apk.rg;
import com.apk.w;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.bean.NewShareDisBean;
import com.biquge.ebook.app.bean.WebConfBean;
import com.lxj.xpopup.core.BottomPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class LieBianBottomShareDlg extends BottomPopupView {

    /* renamed from: do  reason: not valid java name */
    public final Cif f8074do;

    /* renamed from: for  reason: not valid java name */
    public AppProgressBar f8075for;

    /* renamed from: if  reason: not valid java name */
    public ImageView f8076if;

    /* renamed from: new  reason: not valid java name */
    public final bg f8077new;

    /* renamed from: com.biquge.ebook.app.widget.LieBianBottomShareDlg$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            Cif cif;
            if (view.getId() == R.id.share_bottom_layout_openwx) {
                Cif cif2 = LieBianBottomShareDlg.this.f8074do;
                if (cif2 != null) {
                    w0.Cif cif3 = (w0.Cif) cif2;
                    if (!ze.G("com.tencent.mm")) {
                        w0.m2873do(cif3.f5222do, cif3.f5223if, 3);
                    } else {
                        w0.m2873do(cif3.f5222do, cif3.f5223if, 1);
                    }
                }
            } else if (view.getId() == R.id.share_bottom_layout_openwx_pyq) {
                Cif cif4 = LieBianBottomShareDlg.this.f8074do;
                if (cif4 != null) {
                    w0.Cif cif5 = (w0.Cif) cif4;
                    if (!ze.G("com.tencent.mm")) {
                        w0.m2873do(cif5.f5222do, cif5.f5223if, 3);
                    } else {
                        w0.m2873do(cif5.f5222do, cif5.f5223if, 2);
                    }
                }
            } else if (view.getId() == R.id.share_bottom_layout_copylink) {
                Cif cif6 = LieBianBottomShareDlg.this.f8074do;
                if (cif6 != null) {
                    w0.Cif cif7 = (w0.Cif) cif6;
                    w0.m2873do(cif7.f5222do, cif7.f5223if, 3);
                }
            } else if (view.getId() == R.id.share_bottom_layout_saveimg && (cif = LieBianBottomShareDlg.this.f8074do) != null) {
                w0.Cif cif8 = (w0.Cif) cif;
                w0.m2873do(cif8.f5222do, cif8.f5223if, 4);
            }
            LieBianBottomShareDlg.this.dismiss();
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.LieBianBottomShareDlg$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
    }

    public LieBianBottomShareDlg(@NonNull Context context, Cif cif) {
        super(context);
        this.f8077new = new Cdo();
        this.f8074do = cif;
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.bottom_share_dialog;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3477if(String str) {
        if (this.f8076if == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f8076if.setImageBitmap(jg.m1311do(str));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f8076if = (ImageView) findViewById(R.id.share_fragment_bottom_qrcode);
        this.f8075for = (AppProgressBar) findViewById(R.id.share_fragment_qrcode_loadingview);
        findViewById(R.id.share_bottom_layout_openwx).setOnClickListener(this.f8077new);
        findViewById(R.id.share_bottom_layout_openwx_pyq).setOnClickListener(this.f8077new);
        findViewById(R.id.share_bottom_layout_copylink).setOnClickListener(this.f8077new);
        findViewById(R.id.share_bottom_layout_saveimg).setOnClickListener(this.f8077new);
        findViewById(R.id.pop_cancel).setOnClickListener(this.f8077new);
        try {
            NewShareDisBean m382for = Ccontinue.m379if().m382for();
            if (m382for != null && !m382for.isOnlyCheckTime()) {
                String m2869class = w0.m2869class();
                if (!TextUtils.isEmpty(m2869class)) {
                    m3477if(w.m2840class(m2869class));
                } else {
                    new b1().m141do(new rg(this));
                }
            } else {
                WebConfBean m384new = Ccontinue.m379if().m384new();
                if (m384new != null && !TextUtils.isEmpty(m384new.getAz_xz_url2())) {
                    m3477if(m384new.getAz_xz_url2());
                } else {
                    m3477if(w.m2840class("1"));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
