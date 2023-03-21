package com.apk;

import android.text.TextUtils;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ChapterBean;
import java.util.List;
import java.util.Vector;
/* compiled from: BookReadPresenter.java */
/* loaded from: classes8.dex */
public class k2 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ h2 f2448do;

    public k2(h2 h2Var) {
        this.f2448do = h2Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        BookChapter m1078public;
        ChapterBean m1080static;
        ChapterBean m1053for;
        if (!eg.m600implements() || (m1078public = this.f2448do.m1078public()) == null || (m1080static = this.f2448do.m1080static()) == null) {
            return;
        }
        h2 h2Var = this.f2448do;
        boolean z = true;
        if (!(h2Var.y || h2Var.e ? m1078public.getReadPage() % 2 == 0 : m1078public.getReadPage() == 2) || (m1053for = h2.m1053for(this.f2448do, m1080static.getNid())) == null || this.f2448do.b.containsKey(m1053for.getOid())) {
            return;
        }
        this.f2448do.b.put(m1053for.getOid(), "");
        h2 h2Var2 = this.f2448do;
        if (h2Var2 != null) {
            if (h2Var2.f1700this != null) {
                String oid = m1053for.getOid();
                String name = m1053for.getName();
                if (!TextUtils.isEmpty(oid) && !"-2".equals(oid) && !"-1".equals(oid)) {
                    z = false;
                }
                if (z) {
                    return;
                }
                if (h2Var2.m1088volatile(h2Var2.m1076native(h2Var2.m1082super(), oid), false)) {
                    if (n2.m1837super(h2Var2.m1082super(), oid, m1053for.getUrl(), false, h2Var2.m1070finally(), true)) {
                        h2Var2.f1700this.m937throw(h2Var2.m1082super(), oid, name, h2Var2.f1685import, h2Var2.f1688native);
                        return;
                    }
                    return;
                }
                List<Vector> m933for = h2Var2.f1700this.m933for(oid);
                if (m933for == null || m933for.size() == 0) {
                    h2Var2.f1700this.m937throw(h2Var2.m1082super(), oid, name, h2Var2.f1685import, h2Var2.f1688native);
                    return;
                }
                return;
            }
            return;
        }
        throw null;
    }
}
