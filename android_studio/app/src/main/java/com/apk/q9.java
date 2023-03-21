package com.apk;

import android.widget.SeekBar;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;

/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class q9 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f3822do;

    public q9(NewBookReadMenuView newBookReadMenuView) {
        this.f3822do = newBookReadMenuView;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        try {
            this.f3822do.f7000case.mo1589default(seekBar.getProgress());
            tt.f4763do.putInt("baidu_tt_speed", seekBar.getProgress());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
