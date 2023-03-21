package com.apk;

import android.widget.SeekBar;
import com.manhua.data.bean.ComicChapterBean;
import com.manhua.ui.widget.ComicReadMenuView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ComicReadMenuView.java */
/* loaded from: classes8.dex */
public class p20 extends c1<Object> {

    /* renamed from: do  reason: not valid java name */
    public int f3564do;

    /* renamed from: for  reason: not valid java name */
    public final /* synthetic */ ComicReadMenuView f3565for;

    /* renamed from: if  reason: not valid java name */
    public int f3566if;

    public p20(ComicReadMenuView comicReadMenuView) {
        this.f3565for = comicReadMenuView;
    }

    @Override // com.apk.c1
    public Object doInBackground() {
        ComicChapterBean comicChapterBean;
        List<ComicChapterBean> list = this.f3565for.f10168super;
        if (list != null && list.size() > 0) {
            ArrayList arrayList = new ArrayList();
            for (ComicChapterBean comicChapterBean2 : this.f3565for.f10168super) {
                if (!comicChapterBean2.isGroup()) {
                    arrayList.add(comicChapterBean2);
                }
            }
            if (arrayList.size() > 0) {
                ComicReadMenuView comicReadMenuView = this.f3565for;
                comicReadMenuView.f10168super = arrayList;
                String str = comicReadMenuView.f10153catch.f1195try;
                this.f3564do = arrayList.size();
                for (int i = 0; i < this.f3564do; i++) {
                    if (i < this.f3565for.f10168super.size() && (comicChapterBean = this.f3565for.f10168super.get(i)) != null && comicChapterBean.getOid().equals(str)) {
                        this.f3566if = i;
                    }
                }
            }
        }
        return super.doInBackground();
    }

    @Override // com.apk.c1
    public void onPostExecute(Object obj) {
        super.onPostExecute(obj);
        SeekBar seekBar = this.f3565for.mChapterSeekBar;
        if (seekBar != null) {
            seekBar.setMax(this.f3564do - 1);
            this.f3565for.mChapterSeekBar.setProgress(this.f3566if);
        }
    }
}
