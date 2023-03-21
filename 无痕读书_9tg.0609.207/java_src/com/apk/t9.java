package com.apk;

import android.widget.SeekBar;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadMenuView;
import java.util.ArrayList;
/* compiled from: NewBookReadMenuView.java */
/* loaded from: classes8.dex */
public class t9 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public int f4667do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ NewBookReadMenuView f4668for;

    /* renamed from: if  reason: not valid java name */
    public int f4669if;

    public t9(NewBookReadMenuView newBookReadMenuView) {
        this.f4668for = newBookReadMenuView;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        ChapterBean chapterBean;
        try {
            if (this.f4668for.f7005default != null && this.f4668for.f7005default.size() > 0) {
                ArrayList arrayList = new ArrayList();
                for (ChapterBean chapterBean2 : this.f4668for.f7005default) {
                    if (!chapterBean2.isGroup()) {
                        arrayList.add(chapterBean2);
                    }
                }
                if (arrayList.size() > 0) {
                    this.f4668for.f7005default = arrayList;
                    String str = this.f4668for.f7007else.f1672case;
                    this.f4667do = this.f4668for.f7005default.size();
                    for (int i = 0; i < this.f4667do; i++) {
                        if (i < this.f4668for.f7005default.size() && (chapterBean = this.f4668for.f7005default.get(i)) != null && chapterBean.getOid().equals(str)) {
                            this.f4669if = i;
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        SeekBar seekBar = this.f4668for.mChapterSeekBar;
        if (seekBar != null) {
            seekBar.setMax(this.f4667do - 1);
            this.f4668for.mChapterSeekBar.setProgress(this.f4669if);
        }
    }
}
