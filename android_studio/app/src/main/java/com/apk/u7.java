package com.apk;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.biquge.ebook.app.ui.activity.ImportFileActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;

/* compiled from: ImportFileActivity.java */
/* loaded from: classes8.dex */
public class u7 extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ ImportFileActivity f4849do;

    /* compiled from: ImportFileActivity.java */
    /* renamed from: com.apk.u7$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f4850do;

        public Cdo(String str) {
            this.f4850do = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewActivity.i(u7.this.f4849do, null, this.f4850do);
        }
    }

    public u7(ImportFileActivity importFileActivity) {
        this.f4849do = importFileActivity;
    }

    @Override // com.apk.yv
    /* renamed from: new */
    public void mo398new(BasePopupView basePopupView) {
        TextView textView;
        String m2620do = tt.m2620do("SP_REQUEST_SD_PERMISSIONS_H5_KEY", null);
        if (TextUtils.isEmpty(m2620do) || (textView = (TextView) basePopupView.findViewById(R.id.tv_link)) == null) {
            return;
        }
        textView.getPaint().setFlags(8);
        textView.setVisibility(0);
        textView.setOnClickListener(new Cdo(m2620do));
    }
}
