package com.biquge.ebook.app.ui.activity;

import butterknife.BindView;
import com.apk.f6;
import com.apk.ze;
import com.biquge.ebook.app.widget.clip.ClipViewLayout;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ClipImageActivity extends f6 {
    @BindView(R.id.clipViewLayout1)
    public ClipViewLayout clipViewLayout;

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_clip_image;
    }

    @Override // com.apk.f6
    public void initData() {
        this.clipViewLayout.setImageSrc(getIntent().getData());
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.clip_image_actionbar, ze.q(R.string.setinfo_headicon_txt));
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x00af, code lost:
        if (r1 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b1, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b5, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c9, code lost:
        if (r1 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cc, code lost:
        r1.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @butterknife.OnClick({kimi.wuhends.ebooks.R.id.btn_cancel, kimi.wuhends.ebooks.R.id.bt_ok})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void menuClick(android.view.View r14) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.biquge.ebook.app.ui.activity.ClipImageActivity.menuClick(android.view.View):void");
    }
}
