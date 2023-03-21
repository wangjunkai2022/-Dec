package com.apk;

import android.widget.SeekBar;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import java.util.List;
/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class s9 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f4314do;

    public s9(NewBookReadMenuView newBookReadMenuView) {
        this.f4314do = newBookReadMenuView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        List<ChapterBean> list;
        ChapterBean chapterBean;
        if (!z || (list = this.f4314do.f7005default) == null || list.size() <= 0 || (chapterBean = this.f4314do.f7005default.get(i)) == null) {
            return;
        }
        String name = chapterBean.getName();
        this.f4314do.f7000case.mo1603public(name, (i + 1) + "/" + this.f4314do.f7005default.size());
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        List<ChapterBean> list = this.f4314do.f7005default;
        if (list == null || list.size() <= 0) {
            return;
        }
        NewBookReadMenuView newBookReadMenuView = this.f4314do;
        ChapterBean chapterBean = newBookReadMenuView.f7005default.get(newBookReadMenuView.mChapterSeekBar.getProgress());
        if (chapterBean != null) {
            this.f4314do.f7000case.mo1609try(chapterBean.getOid());
        }
    }
}
