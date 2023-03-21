package com.apk;

import android.widget.SeekBar;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.ComicReadMenuView;
import java.util.List;
/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class o20 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f3356do;

    public o20(ComicReadMenuView comicReadMenuView) {
        this.f3356do = comicReadMenuView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        List<ComicChapterBean> list;
        ComicChapterBean comicChapterBean;
        if (!z || (list = this.f3356do.f10168super) == null || list.size() <= 0 || (comicChapterBean = this.f3356do.f10168super.get(i)) == null) {
            return;
        }
        String name = comicChapterBean.getName();
        this.f3356do.f10151break.mo1416public(name, (i + 1) + "/" + this.f3356do.f10168super.size());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        List<ComicChapterBean> list = this.f3356do.f10168super;
        if (list == null || list.size() <= 0) {
            return;
        }
        ComicReadMenuView comicReadMenuView = this.f3356do;
        ComicChapterBean comicChapterBean = comicReadMenuView.f10168super.get(comicReadMenuView.mChapterSeekBar.getProgress());
        if (comicChapterBean != null) {
            this.f3356do.f10151break.mo1424try(comicChapterBean.getOid());
        }
    }
}
