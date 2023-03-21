package com.apk;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.biquge.ebook.app.ui.activity.UserServiceWebviewActivity;
import kimi.wuhends.ebooks.R;
/* compiled from: CustomClickableSpan.java */
/* loaded from: classes8.dex */
public class tc extends ClickableSpan {

    /* renamed from: do  reason: not valid java name */
    public Context f4674do;

    /* renamed from: if  reason: not valid java name */
    public int f4675if;

    public tc(Context context, int i) {
        this.f4674do = context;
        this.f4675if = i;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        String q;
        if (this.f4675if == 1) {
            q = ze.q(R.string.privacy_agreement_title);
        } else {
            q = ze.q(R.string.privacy_user_service_title);
        }
        UserServiceWebviewActivity.j(this.f4674do, q, this.f4675if);
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setColor(-65536);
        textPaint.setUnderlineText(false);
    }
}
