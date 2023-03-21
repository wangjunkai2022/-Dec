package com.biquge.ebook.app.widget;

import android.content.Context;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.tc;
import com.apk.ze;
import com.lxj.xpopup.core.CenterPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class SplashUserServiceDialog extends CenterPopupView implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public TextView f8146do;

    public SplashUserServiceDialog(@NonNull Context context) {
        super(context);
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.welcome_user_service_layout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.welcome_user_refused_btn) {
            this.f8146do.setVisibility(0);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        ((TextView) findViewById(R.id.welcome_user_title_tv)).setText(ze.r(R.string.welcome_user_service_title, ze.m3166extends()));
        TextView textView = (TextView) findViewById(R.id.welcome_user_desc_tv);
        String r = ze.r(R.string.welcome_user_service_desc, ze.m3166extends());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(r);
        spannableStringBuilder.setSpan(new tc(getContext(), 2), r.indexOf("《"), r.indexOf("》"), 17);
        spannableStringBuilder.setSpan(new tc(getContext(), 1), r.lastIndexOf("《"), r.lastIndexOf("》"), 17);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        textView.setText(spannableStringBuilder);
        this.f8146do = (TextView) findViewById(R.id.welcome_user_refused_tips_tv);
        findViewById(R.id.welcome_user_refused_btn).setOnClickListener(this);
    }
}
