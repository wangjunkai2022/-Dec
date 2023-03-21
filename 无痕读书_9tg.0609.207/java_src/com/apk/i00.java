package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.BookChapter;
import com.manhua.data.bean.ComicChapterBean;
import java.util.List;
/* compiled from: ComicReadPresenter.java */
/* loaded from: classes8.dex */
public class i00 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ f00 f2030do;

    public i00(f00 f00Var) {
        this.f2030do = f00Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        BookChapter m710final;
        if (!eg.m600implements() || (m710final = this.f2030do.m710final()) == null || this.f2030do.f1174default.containsKey(m710final.getChapterId()) || m710final.getReadPage() != 2) {
            return;
        }
        this.f2030do.f1174default.put(m710final.getChapterId(), "");
        ComicChapterBean m729throw = this.f2030do.m729throw();
        if (m729throw != null) {
            String nid = m729throw.getNid();
            if (f00.m693case(nid)) {
                f00 f00Var = this.f2030do;
                if (f00Var != null) {
                    if (TextUtils.isEmpty(nid) || f00Var.f1168break == null) {
                        return;
                    }
                    if (f00.m697throws(f00Var.m704const(nid), true)) {
                        if (mu.m1761default(f00Var.m702catch(), nid)) {
                            f00Var.f1168break.m532for(f00Var.m702catch(), nid);
                            return;
                        }
                        return;
                    }
                    List<String> m531do = f00Var.f1168break.m531do(nid);
                    if (m531do == null || m531do.size() == 0) {
                        f00Var.f1168break.m532for(f00Var.m702catch(), nid);
                        return;
                    }
                    return;
                }
                throw null;
            }
        }
    }
}
