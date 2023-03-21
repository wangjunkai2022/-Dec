package com.apk;

import android.view.View;
import android.widget.AdapterView;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicNovelDirActivity;
import com.manhua.ui.activity.ComicReadActivity;
/* compiled from: ComicNovelDirActivity.java */
/* loaded from: classes8.dex */
public class f10 implements AdapterView.OnItemClickListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicNovelDirActivity f1211do;

    public f10(ComicNovelDirActivity comicNovelDirActivity) {
        this.f1211do = comicNovelDirActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ComicNovelDirActivity comicNovelDirActivity;
        ComicCollectBean comicCollectBean;
        ComicChapterBean comicChapterBean = this.f1211do.f9764do.f1147do.get(i);
        if (comicChapterBean.isGroup() || (comicCollectBean = (comicNovelDirActivity = this.f1211do).f9766if) == null) {
            return;
        }
        ComicReadActivity.I(comicNovelDirActivity, comicCollectBean, comicChapterBean.getOid());
    }
}
