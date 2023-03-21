package com.apk;

import android.text.Html;
import android.widget.TextView;
import com.codelibrary.R$id;
import com.lxj.xpopup.core.BasePopupView;
/* compiled from: DialogUtils.java */
/* loaded from: classes8.dex */
public final class ct extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ zs f752do;

    public ct(zs zsVar) {
        this.f752do = zsVar;
    }

    @Override // com.apk.yv
    /* renamed from: for  reason: not valid java name */
    public void mo397for(BasePopupView basePopupView) {
        et etVar = this.f752do.f6250this;
        if (etVar != null) {
            etVar.onDismiss();
        }
    }

    @Override // com.apk.yv
    /* renamed from: if */
    public void mo308if(BasePopupView basePopupView) {
        try {
            if (this.f752do.f6245final) {
                TextView textView = (TextView) basePopupView.findViewById(R$id.tv_content);
                String str = this.f752do.f6246for;
                if (str == null) {
                    str = "";
                }
                textView.setText(Html.fromHtml(str));
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.apk.yv
    /* renamed from: new  reason: not valid java name */
    public void mo398new(BasePopupView basePopupView) {
        gt gtVar = this.f752do.f6247goto;
        if (gtVar != null) {
            gtVar.mo1044do(basePopupView);
        }
    }
}
