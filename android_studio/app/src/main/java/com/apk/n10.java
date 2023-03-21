package com.apk;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.data.bean.ComicBean;
import com.manhua.ui.activity.ComicDetailActivity;
import com.manhua.ui.fragment.ComicDetailDataFragment;

/* compiled from: ComicDetailDataFragment.java */
/* loaded from: classes8.dex */
public class n10 implements BaseQuickAdapter.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicDetailDataFragment f3175do;

    public n10(ComicDetailDataFragment comicDetailDataFragment) {
        this.f3175do = comicDetailDataFragment;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
    public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        try {
            ComicBean.SameCategoryBooksNameBean item = this.f3175do.f9900try.getItem(i);
            if (item != null) {
                ComicBean comicBean = new ComicBean();
                comicBean.setId(item.getId());
                comicBean.setName(item.getName());
                comicBean.setImg(item.getImg());
                ComicDetailActivity.n(this.f3175do.getSupportActivity(), comicBean);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
