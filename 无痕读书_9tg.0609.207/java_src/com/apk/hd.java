package com.apk;

import android.text.TextUtils;
import android.view.View;
import com.biquge.ebook.app.ui.view.TopCommentLayout;
/* compiled from: TopCommentLayout.java */
/* loaded from: classes8.dex */
public class hd extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TopCommentLayout f1832do;

    public hd(TopCommentLayout topCommentLayout) {
        this.f1832do = topCommentLayout;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        try {
            if (TextUtils.isEmpty(this.f1832do.f7799new)) {
                return;
            }
            ze.s(this.f1832do.getContext(), this.f1832do.f7799new, this.f1832do.f7800try, this.f1832do.f7798if, this.f1832do.f7797for);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
