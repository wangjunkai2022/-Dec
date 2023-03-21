package com.apk;

import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.biquge.ebook.app.ui.webread.ui.WebSiteSearchFragment;
import com.biquge.ebook.app.ui.webread.view.WebSearchResultLayout;
import java.util.ArrayList;
import java.util.List;
/* compiled from: WebSiteSearchFragment.java */
/* loaded from: classes8.dex */
public class ae extends c1<b6<WebBook>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ String f82do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ WebSiteSearchFragment f83for;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ int f84if;

    public ae(WebSiteSearchFragment webSiteSearchFragment, String str, int i) {
        this.f83for = webSiteSearchFragment;
        this.f82do = str;
        this.f84if = i;
    }

    /* renamed from: do  reason: not valid java name */
    public /* synthetic */ void m44do(b6 b6Var) {
        WebSiteSearchFragment webSiteSearchFragment = this.f83for;
        if (webSiteSearchFragment.f7842const) {
            if (webSiteSearchFragment.f7839case != null) {
                webSiteSearchFragment.f7850this += b6Var.m152do().size();
                this.f83for.f7838break.addAll(b6Var.m152do());
                WebSiteSearchFragment webSiteSearchFragment2 = this.f83for;
                ((WebSearchResultLayout.Cfor) webSiteSearchFragment2.f7839case).m3461do(webSiteSearchFragment2.f7848if, b6Var.m152do(), 1);
            }
        } else if (webSiteSearchFragment.f7839case != null) {
            webSiteSearchFragment.f7850this += b6Var.m152do().size();
            this.f83for.f7838break.addAll(b6Var.m152do());
            WebSiteSearchFragment webSiteSearchFragment3 = this.f83for;
            ((WebSearchResultLayout.Cfor) webSiteSearchFragment3.f7839case).m3461do(webSiteSearchFragment3.f7848if, b6Var.m152do(), 2);
        }
    }

    @Override // com.apk.c1
    public b6<WebBook> doInBackground() {
        return qd.m2116goto(this.f82do, null, this.f83for.f7844else, false);
    }

    @Override // com.apk.c1
    public void onPostExecute(b6<WebBook> b6Var) {
        List<WebBook> subList;
        WebSearchResultLayout.Ctry ctry;
        final b6<WebBook> b6Var2 = b6Var;
        super.onPostExecute(b6Var2);
        if (b6Var2 == null) {
            WebSiteSearchFragment webSiteSearchFragment = this.f83for;
            kd kdVar = webSiteSearchFragment.f7839case;
            if (kdVar != null) {
                ((WebSearchResultLayout.Cfor) kdVar).m3461do(webSiteSearchFragment.f7848if, null, 2);
                return;
            }
            return;
        }
        WebSiteSearchFragment webSiteSearchFragment2 = this.f83for;
        if (webSiteSearchFragment2.f7844else == 1) {
            kd kdVar2 = webSiteSearchFragment2.f7839case;
            if (kdVar2 != null && (ctry = WebSearchResultLayout.this.f7951case) != null) {
                ctry.setEnableLoadMore(false);
            }
            WebSiteSearchFragment webSiteSearchFragment3 = this.f83for;
            List<WebBook> m152do = b6Var2.m152do();
            if (webSiteSearchFragment3 != null) {
                int size = m152do.size();
                int i = size > 3 ? (size / 3) + 1 : 2;
                ArrayList arrayList = new ArrayList();
                int size2 = m152do.size() / i;
                int size3 = m152do.size() % i;
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    if (size3 > 0) {
                        subList = m152do.subList((i3 * size2) + i2, ((i3 + 1) * size2) + i2 + 1);
                        size3--;
                        i2++;
                    } else {
                        subList = m152do.subList((i3 * size2) + i2, ((i3 + 1) * size2) + i2);
                    }
                    arrayList.add(subList);
                }
                webSiteSearchFragment3.f7840catch = arrayList;
                webSiteSearchFragment3.getSupportActivity().post(webSiteSearchFragment3.f7845final);
                WebSiteSearchFragment webSiteSearchFragment4 = this.f83for;
                boolean z = b6Var2.f247if;
                webSiteSearchFragment4.f7842const = z;
                if (z) {
                    webSiteSearchFragment4.f7844else++;
                    return;
                }
                return;
            }
            throw null;
        }
        webSiteSearchFragment2.f7842const = b6Var2.f247if;
        webSiteSearchFragment2.getSupportActivity().post(new Runnable() { // from class: com.apk.vd
            @Override // java.lang.Runnable
            public final void run() {
                ae.this.m44do(b6Var2);
            }
        });
        this.f83for.f7844else++;
    }
}
