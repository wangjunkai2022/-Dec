package com.apk;

import android.view.View;
import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.CreateComicGroupActivity;
import com.manhua.ui.fragment.ComicShelfFragment;
import java.util.ArrayList;
import java.util.List;
import kimi.wuhends.ebooks.R;

/* compiled from: ComicShelfFragment.java */
/* loaded from: classes8.dex */
public class b20 extends bg {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicShelfFragment f238do;

    public b20(ComicShelfFragment comicShelfFragment) {
        this.f238do = comicShelfFragment;
    }

    @Override // com.apk.bg
    public void onNoDoubleClick(View view) {
        ComicGroupAdapter comicGroupAdapter;
        if (view.getId() == R.id.edit_select_all_bt) {
            ComicGroupAdapter comicGroupAdapter2 = this.f238do.f10070try;
            if (comicGroupAdapter2 != null) {
                int m3611if = comicGroupAdapter2.m3611if(false);
                ComicShelfFragment comicShelfFragment = this.f238do;
                if (comicShelfFragment.f10069throw == null) {
                    comicShelfFragment.f10069throw = new yg(comicShelfFragment.getSupportActivity(), new b20(comicShelfFragment));
                }
                yg ygVar = this.f238do.f10069throw;
                if (ygVar != null) {
                    ygVar.m3066do(m3611if, m3611if);
                }
            }
        } else if (view.getId() == R.id.edit_delete_bt) {
            ComicShelfFragment comicShelfFragment2 = this.f238do;
            ComicGroupAdapter comicGroupAdapter3 = comicShelfFragment2.f10070try;
            if (comicGroupAdapter3 != null) {
                comicShelfFragment2.r(comicGroupAdapter3.m3609do());
            }
        } else if (view.getId() != R.id.edit_group_bt || (comicGroupAdapter = this.f238do.f10070try) == null) {
        } else {
            List<ComicCollectBean> m3609do = comicGroupAdapter.m3609do();
            if (((ArrayList) m3609do).size() > 0) {
                ComicShelfFragment comicShelfFragment3 = this.f238do;
                CreateComicGroupActivity.m(comicShelfFragment3.getSupportActivity(), m3609do, "", comicShelfFragment3.f10056else, comicShelfFragment3.f10059goto);
            }
        }
    }
}
