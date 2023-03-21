package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.bg;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebLoadingView extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public Cif f7940case;

    /* renamed from: do  reason: not valid java name */
    public FrameLayout f7941do;

    /* renamed from: for  reason: not valid java name */
    public TextView f7942for;

    /* renamed from: if  reason: not valid java name */
    public View f7943if;

    /* renamed from: new  reason: not valid java name */
    public LinearLayout f7944new;

    /* renamed from: try  reason: not valid java name */
    public TextView f7945try;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebLoadingView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            WebLoadingView.this.m3451do();
            Cif cif = WebLoadingView.this.f7940case;
            if (cif != null) {
                cif.mo779do();
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebLoadingView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo779do();
    }

    public WebLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(getContext()).inflate(R.layout.web_code_status_view, this);
        this.f7941do = (FrameLayout) findViewById(R.id.code_status_parent_layout);
        this.f7944new = (LinearLayout) findViewById(R.id.code_status_loading_layout);
        this.f7945try = (TextView) findViewById(R.id.code_status_loading_tv);
        setOnClickListener(null);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3451do() {
        View view = this.f7943if;
        if (view != null && view.getVisibility() != 8) {
            this.f7943if.setVisibility(8);
        }
        if (this.f7944new.getVisibility() != 0) {
            this.f7944new.setVisibility(0);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3452if() {
        if (this.f7944new.getVisibility() != 8) {
            this.f7944new.setVisibility(8);
        }
        if (getVisibility() != 8) {
            setVisibility(8);
        }
    }

    public void setBgColor(int i) {
        this.f7941do.setBackgroundColor(i);
    }

    public void setError(String str) {
        if (this.f7943if == null) {
            View inflate = ((ViewStub) findViewById(R.id.code_status_failed_layout)).inflate();
            this.f7943if = inflate;
            this.f7942for = (TextView) inflate.findViewById(R.id.web_error_title_tv);
        }
        View view = this.f7943if;
        if (view != null) {
            view.findViewById(R.id.web_error_reload_bt).setOnClickListener(new Cdo());
            if (this.f7943if.getVisibility() != 0) {
                this.f7943if.setVisibility(0);
            }
        }
        if (this.f7942for != null && !TextUtils.isEmpty(str)) {
            this.f7942for.setText(str);
        }
        LinearLayout linearLayout = this.f7944new;
        if (linearLayout != null && linearLayout.getVisibility() != 8) {
            this.f7944new.setVisibility(8);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    public void setReloadListener(Cif cif) {
        this.f7940case = cif;
    }

    public void setText(String str) {
        if (this.f7945try == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f7945try.setText(str);
    }
}
