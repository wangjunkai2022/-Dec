package com.apk;

import android.content.Context;
import android.graphics.Color;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.view.View;
import com.biquge.ebook.app.ui.activity.BookDetailActivity;
import com.manhua.ui.activity.ComicDetailActivity;
/* compiled from: CustomColorSpan.java */
/* loaded from: classes8.dex */
public class uc extends ClickableSpan {

    /* renamed from: do  reason: not valid java name */
    public final Context f4867do;

    /* renamed from: for  reason: not valid java name */
    public final String f4868for;

    /* renamed from: if  reason: not valid java name */
    public final boolean f4869if;

    /* renamed from: new  reason: not valid java name */
    public final String f4870new;

    public uc(Context context, boolean z, String str, String str2) {
        this.f4867do = context;
        this.f4869if = z;
        this.f4868for = str;
        this.f4870new = str2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.f4869if) {
            if (TextUtils.isEmpty(this.f4868for)) {
                return;
            }
            BookDetailActivity.o(this.f4867do, n2.m1811catch(this.f4868for, this.f4870new, ""));
        } else if (TextUtils.isEmpty(this.f4868for)) {
        } else {
            ComicDetailActivity.n(this.f4867do, mu.m1765final(this.f4868for, this.f4870new, ""));
        }
    }

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setColor(Color.parseColor("#3498DB"));
        textPaint.setUnderlineText(false);
    }
}
