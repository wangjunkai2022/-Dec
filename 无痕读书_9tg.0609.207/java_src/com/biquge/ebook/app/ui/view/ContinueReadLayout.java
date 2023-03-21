package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.ze;
import com.biquge.ebook.app.bean.CollectBook;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.manhua.data.bean.ComicCollectBean;
import com.manhua.ui.activity.ComicReadActivity;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ContinueReadLayout extends FrameLayout {
    @BindView(R.id.home_continue_read_chapter)
    public TextView mContinueReadChapter;
    @BindView(R.id.home_continue_read_icon)
    public CoverImageView mContinueReadIcon;
    @BindView(R.id.home_continue_read_name)
    public TextView mContinueReadName;
    @BindView(R.id.home_continue_read_btn)
    public TextView mReadBtn;

    public ContinueReadLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R.layout.view_continue_read_layout, this);
        ButterKnife.bind(this);
    }

    private void setComicBook(ComicCollectBean comicCollectBean) {
        this.mContinueReadIcon.setComicCover(comicCollectBean);
        this.mContinueReadName.setText(comicCollectBean.getName());
        this.mContinueReadChapter.setText(ze.r(R.string.continue_read_chapter_txt, comicCollectBean.getReadChapterName()));
        setVisibility(0);
    }

    private void setNovelBook(CollectBook collectBook) {
        this.mContinueReadIcon.m3405do(collectBook, false);
        this.mContinueReadName.setText(collectBook.getName());
        this.mContinueReadChapter.setText(ze.r(R.string.continue_read_chapter_txt, collectBook.getReadChapterName()));
        setVisibility(0);
    }

    /* renamed from: case  reason: not valid java name */
    public void m3398case(View view) {
        setVisibility(8);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00af  */
    /* renamed from: do  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3399do(final android.app.Activity r15) {
        /*
            r14 = this;
            java.lang.String r0 = com.apk.kg.m1498if()
            java.lang.String r1 = "SP_HOME_CONTINUE_READ_ONLY_DAY_KEY"
            java.lang.String r2 = ""
            java.lang.String r3 = com.apk.tt.m2620do(r1, r2)
            boolean r3 = r0.equals(r3)
            if (r3 != 0) goto Ld9
            java.lang.String r3 = "saveTime desc"
            org.litepal.FluentQuery r4 = org.litepal.LitePal.order(r3)
            java.lang.String r5 = "readChapterId != ?"
            java.lang.String[] r6 = new java.lang.String[]{r5, r2}
            org.litepal.FluentQuery r4 = r4.where(r6)
            java.lang.Class<com.biquge.ebook.app.bean.CollectBook> r6 = com.biquge.ebook.app.bean.CollectBook.class
            java.util.List r4 = r4.find(r6)
            r6 = 0
            r7 = 0
            if (r4 == 0) goto L39
            int r8 = r4.size()
            if (r8 <= 0) goto L39
            java.lang.Object r4 = r4.get(r6)
            com.biquge.ebook.app.bean.CollectBook r4 = (com.biquge.ebook.app.bean.CollectBook) r4
            goto L3a
        L39:
            r4 = r7
        L3a:
            org.litepal.FluentQuery r3 = org.litepal.LitePal.order(r3)
            java.lang.String[] r2 = new java.lang.String[]{r5, r2}
            org.litepal.FluentQuery r2 = r3.where(r2)
            java.lang.Class<com.manhua.data.bean.ComicCollectBean> r3 = com.manhua.data.bean.ComicCollectBean.class
            java.util.List r2 = r2.find(r3)
            if (r2 == 0) goto L5b
            int r3 = r2.size()
            if (r3 <= 0) goto L5b
            java.lang.Object r2 = r2.get(r6)
            r7 = r2
            com.manhua.data.bean.ComicCollectBean r7 = (com.manhua.data.bean.ComicCollectBean) r7
        L5b:
            r2 = 0
            if (r4 == 0) goto L6b
            java.lang.String r5 = r4.getSaveTime()     // Catch: java.lang.Exception -> L68
            long r5 = java.lang.Long.parseLong(r5)     // Catch: java.lang.Exception -> L68
            goto L6c
        L68:
            r5 = move-exception
            r8 = r2
            goto L7b
        L6b:
            r5 = r2
        L6c:
            if (r7 == 0) goto L7f
            java.lang.String r8 = r7.getSaveTime()     // Catch: java.lang.Exception -> L77
            long r2 = java.lang.Long.parseLong(r8)     // Catch: java.lang.Exception -> L77
            goto L7f
        L77:
            r8 = move-exception
            r12 = r5
            r5 = r8
            r8 = r12
        L7b:
            r5.printStackTrace()
            r5 = r8
        L7f:
            r8 = 5000(0x1388, double:2.4703E-320)
            r10 = 2131296904(0x7f090288, float:1.8211738E38)
            int r11 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r11 <= 0) goto Laf
            r14.setNovelBook(r4)
            com.tencent.mmkv.MMKV r2 = com.apk.tt.f4763do
            r2.putString(r1, r0)
            android.widget.TextView r0 = r14.mReadBtn
            com.apk.gc r1 = new com.apk.gc
            r1.<init>()
            r0.setOnClickListener(r1)
            android.view.View r15 = r14.findViewById(r10)
            com.apk.jc r0 = new com.apk.jc
            r0.<init>()
            r15.setOnClickListener(r0)
            com.apk.lc r15 = new com.apk.lc
            r15.<init>()
            r14.postDelayed(r15, r8)
            goto Ld9
        Laf:
            int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r4 <= 0) goto Ld9
            r14.setComicBook(r7)
            com.tencent.mmkv.MMKV r2 = com.apk.tt.f4763do
            r2.putString(r1, r0)
            android.widget.TextView r0 = r14.mReadBtn
            com.apk.ic r1 = new com.apk.ic
            r1.<init>()
            r0.setOnClickListener(r1)
            android.view.View r15 = r14.findViewById(r10)
            com.apk.hc r0 = new com.apk.hc
            r0.<init>()
            r15.setOnClickListener(r0)
            com.apk.kc r15 = new com.apk.kc
            r15.<init>()
            r14.postDelayed(r15, r8)
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.view.ContinueReadLayout.m3399do(android.app.Activity):void");
    }

    /* renamed from: else  reason: not valid java name */
    public void m3400else() {
        setVisibility(8);
    }

    /* renamed from: for  reason: not valid java name */
    public void m3401for(View view) {
        setVisibility(8);
    }

    /* renamed from: if  reason: not valid java name */
    public void m3402if(ComicCollectBean comicCollectBean, Activity activity, View view) {
        if (comicCollectBean != null) {
            ComicReadActivity.J(activity, comicCollectBean.getCollectId());
            setVisibility(8);
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m3403new() {
        setVisibility(8);
    }

    /* renamed from: try  reason: not valid java name */
    public void m3404try(CollectBook collectBook, Activity activity, View view) {
        if (collectBook != null) {
            NewBookReadActivity.a0(activity, collectBook, null);
            setVisibility(8);
        }
    }
}
