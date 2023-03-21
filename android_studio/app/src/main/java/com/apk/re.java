package com.apk;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import kimi.wuhends.ebooks.R;

/* compiled from: WebErrorView.java */
/* loaded from: classes8.dex */
public class re extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public LinearLayout f4034do;

    /* renamed from: for  reason: not valid java name */
    public Cdo f4035for;

    /* renamed from: if  reason: not valid java name */
    public TextView f4036if;

    /* compiled from: WebErrorView.java */
    /* renamed from: com.apk.re$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public re(@NonNull Context context) {
        super(context, null);
        LayoutInflater.from(getContext()).inflate(R.layout.web_code_status_failed_view, this);
        this.f4034do = (LinearLayout) findViewById(R.id.web_error_layout);
        this.f4036if = (TextView) findViewById(R.id.web_error_title_tv);
        findViewById(R.id.web_error_reload_bt).setOnClickListener(new qe(this));
        setOnClickListener(null);
    }

    public void setError(String str) {
        if (this.f4036if != null && !TextUtils.isEmpty(str)) {
            this.f4036if.setText(str);
        }
        if (this.f4034do.getVisibility() != 0) {
            this.f4034do.setVisibility(0);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    public void setReloadListener(Cdo cdo) {
        this.f4035for = cdo;
    }
}
