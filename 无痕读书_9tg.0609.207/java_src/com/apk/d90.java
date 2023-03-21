package com.apk;

import android.text.TextUtils;
import com.tr.comment.sdk.commons.widget.TrEmojiLayout;
/* compiled from: TrEmojiLayout.java */
/* loaded from: classes7.dex */
public class d90 implements s90<ga0> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ TrEmojiLayout.Cdo f837do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ TrEmojiLayout f838if;

    public d90(TrEmojiLayout trEmojiLayout, TrEmojiLayout.Cdo cdo) {
        this.f838if = trEmojiLayout;
        this.f837do = cdo;
    }

    @Override // com.apk.s90
    /* renamed from: do  reason: not valid java name */
    public void mo414do(r80 r80Var, ga0 ga0Var, int i) {
        ga0 ga0Var2 = ga0Var;
        if (i == this.f837do.getItemCount() - 1) {
            TrEmojiLayout.m3693do(this.f838if, "/DEL");
            return;
        }
        String m955do = ga0Var2.m955do();
        if (TextUtils.isEmpty(m955do)) {
            return;
        }
        TrEmojiLayout.m3693do(this.f838if, m955do);
    }
}
