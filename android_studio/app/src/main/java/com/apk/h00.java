package com.apk;

/* compiled from: ComicReadPresenter.java */
/* loaded from: classes8.dex */
public class h00 implements Runnable {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ f00 f1668do;

    public h00(f00 f00Var) {
        this.f1668do = f00Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00aa, code lost:
        if (r1.f1170catch.getCurrentItem() == 0) goto L46;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r9 = this;
            com.apk.f00 r0 = r9.f1668do
            java.lang.String r1 = r0.f1195try
            com.manhua.data.bean.ComicChapterBean r0 = r0.m704const(r1)
            if (r0 == 0) goto Lb8
            com.apk.f00 r1 = r9.f1668do
            com.biquge.ebook.app.bean.BookChapter r2 = r1.f1187return
            if (r2 == 0) goto Lb8
            int r3 = r1.f1186public
            monitor-enter(r1)
            boolean r4 = r1.m721public(r2)     // Catch: java.lang.Throwable -> Lb5
            r5 = 0
            java.lang.String r6 = r0.getNid()     // Catch: java.lang.Throwable -> Lb5
            java.lang.String r7 = "-1"
            boolean r7 = r7.equals(r6)     // Catch: java.lang.Throwable -> Lb5
            r8 = 1
            if (r7 != 0) goto L39
            java.lang.String r7 = r1.m702catch()     // Catch: java.lang.Throwable -> Lb5
            com.manhua.data.bean.ComicChapterBean r7 = com.apk.e00.m528if(r7, r6)     // Catch: java.lang.Throwable -> Lb5
            if (r7 != 0) goto L39
            com.apk.e00 r5 = r1.f1168break     // Catch: java.lang.Throwable -> Lb5
            com.apk.gg<java.lang.String, java.util.List<java.lang.String>> r5 = r5.f978do     // Catch: java.lang.Throwable -> Lb5
            if (r5 == 0) goto L38
            r5.remove(r6)     // Catch: java.lang.Throwable -> Lb5
        L38:
            r5 = 1
        L39:
            if (r4 != 0) goto Lb0
            if (r5 != 0) goto Lb0
            boolean r4 = r0.isHasContent()     // Catch: java.lang.Throwable -> Lb5
            if (r4 != 0) goto L45
            goto Lb0
        L45:
            int r4 = r1.m715import()     // Catch: java.lang.Throwable -> Lb5
            if (r4 != 0) goto L81
            int r4 = r2.getReadPage()     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getAllPage()     // Catch: java.lang.Throwable -> Lb5
            if (r4 != r2) goto L68
            com.manhua.ui.widget.ComicReaderViewpager r2 = r1.f1170catch     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getCurrentItem()     // Catch: java.lang.Throwable -> Lb5
            com.apk.lz r4 = r1.f1171class     // Catch: java.lang.Throwable -> Lb5
            int r4 = r4.getCount()     // Catch: java.lang.Throwable -> Lb5
            int r4 = r4 - r8
            if (r2 == r4) goto L68
            r1.m708else(r0, r3)     // Catch: java.lang.Throwable -> Lb5
            goto Lb3
        L68:
            boolean r2 = r1.m722return()     // Catch: java.lang.Throwable -> Lb5
            if (r2 != 0) goto Lb3
            com.manhua.ui.widget.ComicReaderViewpager r2 = r1.f1170catch     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getCurrentItem()     // Catch: java.lang.Throwable -> Lb5
            com.apk.lz r3 = r1.f1171class     // Catch: java.lang.Throwable -> Lb5
            int r3 = r3.getCount()     // Catch: java.lang.Throwable -> Lb5
            int r3 = r3 - r8
            if (r2 != r3) goto Lb3
            r1.m701break(r0)     // Catch: java.lang.Throwable -> Lb5
            goto Lb3
        L81:
            int r4 = r2.getReadPage()     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getAllPage()     // Catch: java.lang.Throwable -> Lb5
            if (r4 != r2) goto L8f
            r1.m708else(r0, r3)     // Catch: java.lang.Throwable -> Lb5
            goto Lb3
        L8f:
            boolean r2 = r1.m722return()     // Catch: java.lang.Throwable -> Lb5
            if (r2 != 0) goto Lb3
            boolean r2 = r1.m709extends()     // Catch: java.lang.Throwable -> Lb5
            if (r2 == 0) goto La4
            com.manhua.ui.widget.ZoomRecyclerView r2 = r1.f1172const     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getCurrentPosition()     // Catch: java.lang.Throwable -> Lb5
            if (r2 != 0) goto Lb3
            goto Lac
        La4:
            com.manhua.ui.widget.ComicReaderViewpager r2 = r1.f1170catch     // Catch: java.lang.Throwable -> Lb5
            int r2 = r2.getCurrentItem()     // Catch: java.lang.Throwable -> Lb5
            if (r2 != 0) goto Lb3
        Lac:
            r1.m701break(r0)     // Catch: java.lang.Throwable -> Lb5
            goto Lb3
        Lb0:
            r1.h()     // Catch: java.lang.Throwable -> Lb5
        Lb3:
            monitor-exit(r1)
            goto Lb8
        Lb5:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        Lb8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.h00.run():void");
    }
}
