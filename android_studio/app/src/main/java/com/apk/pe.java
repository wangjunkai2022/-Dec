package com.apk;

import android.widget.EditText;
import com.biquge.ebook.app.ui.webread.view.WebContentView;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;

/* compiled from: WebContentView.java */
/* loaded from: classes8.dex */
public class pe extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3628do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ WebContentView f3629if;

    public pe(WebContentView webContentView, String str) {
        this.f3629if = webContentView;
        this.f3628do = str;
    }

    @Override // com.apk.yv
    /* renamed from: if */
    public void mo308if(BasePopupView basePopupView) {
        this.f3629if.f7912do = (EditText) basePopupView.findViewById(R.id.web_book_rename_et);
        this.f3629if.f7912do.setText(this.f3628do);
        this.f3629if.f7912do.setHint(this.f3628do);
        this.f3629if.f7912do.setSelection(this.f3628do.length());
    }
}
