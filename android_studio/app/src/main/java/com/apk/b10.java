package com.apk;

import com.manhua.adapter.ComicGroupAdapter;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicGroupDetailActivity;
import java.util.List;
import org.litepal.LitePal;

/* compiled from: ComicGroupDetailActivity.java */
/* loaded from: classes8.dex */
public class b10 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicGroupDetailActivity f235do;

    public b10(ComicGroupDetailActivity comicGroupDetailActivity) {
        this.f235do = comicGroupDetailActivity;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        ComicGroupDetailActivity comicGroupDetailActivity = this.f235do;
        ComicCollectBean comicCollectBean = comicGroupDetailActivity.f9705do;
        if (comicCollectBean != null) {
            String groupId = comicCollectBean.getGroupId();
            List<ComicCollectBean> find = LitePal.order(mu.m1773interface()).where("groupId = ?", groupId).find(ComicCollectBean.class);
            for (ComicCollectBean comicCollectBean2 : find) {
                comicCollectBean2.setIsGroup(1);
                comicCollectBean2.setGroupId(groupId);
            }
            comicGroupDetailActivity.f9706else = find;
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        List<ComicCollectBean> list;
        super.onPostExecute(obj);
        ComicGroupDetailActivity comicGroupDetailActivity = this.f235do;
        if (comicGroupDetailActivity.f9704case != null && (list = comicGroupDetailActivity.f9706else) != null && list.size() > 0) {
            ComicGroupDetailActivity comicGroupDetailActivity2 = this.f235do;
            comicGroupDetailActivity2.f9704case.setNewData(comicGroupDetailActivity2.f9706else);
            ComicGroupDetailActivity comicGroupDetailActivity3 = this.f235do;
            if (comicGroupDetailActivity3.f9709if) {
                comicGroupDetailActivity3.s(true, -1);
            }
            ComicGroupDetailActivity comicGroupDetailActivity4 = this.f235do;
            ComicGroupAdapter comicGroupAdapter = comicGroupDetailActivity4.f9704case;
            if (comicGroupAdapter != null) {
                comicGroupAdapter.setOnItemClickListener(comicGroupDetailActivity4);
                comicGroupDetailActivity4.f9704case.setOnItemLongClickListener(comicGroupDetailActivity4);
                comicGroupDetailActivity4.f9704case.setOnItemChildClickListener(comicGroupDetailActivity4);
                comicGroupDetailActivity4.f9704case.setOnItemChildLongClickListener(comicGroupDetailActivity4);
            }
        }
        this.f235do.f9709if = false;
    }
}
