package com.apk;

import com.apk.o0;
import com.manhua.ui.widget.ComicReadMenuView;
/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class i20 implements xv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ boolean f2035do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f2036if;

    /* compiled from: ComicReadMenuView.java */
    /* renamed from: com.apk.i20$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements o0.Celse {
        public Cdo() {
        }

        @Override // com.apk.o0.Celse
        /* renamed from: do  reason: not valid java name */
        public void mo1179do(boolean z) {
            if (z) {
                i20 i20Var = i20.this;
                if (i20Var.f2035do || mu.m1756case(i20Var.f2036if.f10156do, false)) {
                    return;
                }
                i20.this.f2036if.f10153catch.i();
            }
        }
    }

    public i20(ComicReadMenuView comicReadMenuView, boolean z) {
        this.f2036if = comicReadMenuView;
        this.f2035do = z;
    }

    @Override // com.apk.xv
    /* renamed from: do */
    public void mo15do(int i, String str) {
        String str2 = i == 0 ? null : this.f2036if.f10153catch.f1195try;
        o0 m1925else = o0.m1925else();
        ComicReadMenuView comicReadMenuView = this.f2036if;
        m1925else.m1935if(comicReadMenuView.f10156do, comicReadMenuView.getBookId(), this.f2036if.getBookName(), str2, true, new Cdo());
    }
}
