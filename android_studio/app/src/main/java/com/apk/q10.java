package com.apk;

import android.view.View;
import android.widget.AdapterView;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.activity.ComicReadActivity;
import com.manhua.ui.fragment.ComicDetailDirFragment;

/* compiled from: ComicDetailDirFragment.java */
/* loaded from: classes8.dex */
public class q10 implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicDetailDirFragment f3787do;

    public q10(ComicDetailDirFragment comicDetailDirFragment) {
        this.f3787do = comicDetailDirFragment;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ComicChapterBean comicChapterBean = this.f3787do.f9912if.f1147do.get(i);
        if (comicChapterBean.isGroup()) {
            return;
        }
        ComicReadActivity.H(this.f3787do.getSupportActivity(), this.f3787do.f9910do, comicChapterBean.getOid(), null);
    }
}
