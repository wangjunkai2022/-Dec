package com.apk;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.biquge.ebook.app.ui.activity.SelectFileActivity;
import com.biquge.ebook.app.ui.activity.WebViewActivity;
import com.lxj.xpopup.core.BasePopupView;
import kimi.wuhends.ebooks.R;

/* compiled from: SelectFileActivity.java */
/* loaded from: classes8.dex */
public class j8 extends yv {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ SelectFileActivity f2293do;

    /* compiled from: SelectFileActivity.java */
    /* renamed from: com.apk.j8$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f2294do;

        public Cdo(String str) {
            this.f2294do = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewActivity.i(j8.this.f2293do, null, this.f2294do);
        }
    }

    public j8(SelectFileActivity selectFileActivity) {
        this.f2293do = selectFileActivity;
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
