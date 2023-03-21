package com.apk;

import android.text.TextUtils;
import android.widget.EditText;
import com.biquge.ebook.app.ui.webread.view.WebContentView;

/* compiled from: WebContentView.java */
/* loaded from: classes8.dex */
public class oe implements uv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f3400do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ WebContentView f3401if;

    public oe(WebContentView webContentView, String str) {
        this.f3401if = webContentView;
        this.f3400do = str;
    }

    @Override // com.apk.uv
    public void onConfirm() {
        EditText editText = this.f3401if.f7912do;
        String m1006interface = editText != null ? Cgoto.m1006interface(editText) : null;
        if (TextUtils.isEmpty(m1006interface)) {
            m1006interface = this.f3400do;
        }
        WebContentView webContentView = this.f3401if;
        WebContentView.m3444try(webContentView, webContentView.getCurUrl(), m1006interface);
    }
}
