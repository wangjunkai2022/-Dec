package com.manhua.ui.widget;

import android.content.Context;
import android.text.Html;
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
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.da;
import com.apk.s20;
import com.apk.t20;
import com.apk.tt;
import com.apk.ze;
import com.biquge.ebook.app.adapter.FailedMsgAdapter;
import com.biquge.ebook.app.bean.ErrorConfBean;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class PublicLoadingView extends FrameLayout {

    /* renamed from: case  reason: not valid java name */
    public LinearLayout f10223case;

    /* renamed from: do  reason: not valid java name */
    public FrameLayout f10224do;

    /* renamed from: else  reason: not valid java name */
    public TextView f10225else;

    /* renamed from: for  reason: not valid java name */
    public TextView f10226for;

    /* renamed from: goto  reason: not valid java name */
    public Cdo f10227goto;

    /* renamed from: if  reason: not valid java name */
    public View f10228if;

    /* renamed from: new  reason: not valid java name */
    public RecyclerView f10229new;

    /* renamed from: try  reason: not valid java name */
    public ErrorConfBean f10230try;

    /* renamed from: com.manhua.ui.widget.PublicLoadingView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
        /* renamed from: do */
        void mo1847do();
    }

    public PublicLoadingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(getContext()).inflate(R.layout.code_status_view, this);
        this.f10224do = (FrameLayout) findViewById(R.id.code_status_parent_layout);
        this.f10223case = (LinearLayout) findViewById(R.id.code_status_loading_layout);
        this.f10225else = (TextView) findViewById(R.id.code_status_loading_tv);
        setOnClickListener(null);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3665do() {
        View view = this.f10228if;
        if (view != null && view.getVisibility() != 8) {
            this.f10228if.setVisibility(8);
        }
        if (this.f10223case.getVisibility() != 0) {
            this.f10223case.setVisibility(0);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m3666for() {
        if (this.f10223case.getVisibility() != 8) {
            this.f10223case.setVisibility(8);
        }
        if (getVisibility() != 8) {
            setVisibility(8);
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m3667if() {
        this.f10224do.setBackgroundColor(ze.p(R.color.color_transparent));
        View view = this.f10228if;
        if (view != null && view.getVisibility() != 8) {
            this.f10228if.setVisibility(8);
        }
        if (this.f10223case.getVisibility() != 0) {
            this.f10223case.setVisibility(0);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    public void setBgColor(int i) {
        this.f10224do.setBackgroundColor(i);
    }

    public void setError(String str) {
        if (this.f10228if == null) {
            View inflate = ((ViewStub) findViewById(R.id.code_status_failed_layout)).inflate();
            this.f10228if = inflate;
            this.f10226for = (TextView) inflate.findViewById(R.id.error_conf_title_tv);
            RecyclerView recyclerView = (RecyclerView) this.f10228if.findViewById(R.id.error_conf_msg_rv);
            this.f10229new = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f10229new.setHasFixedSize(true);
        }
        if (this.f10228if != null) {
            try {
                String m2620do = tt.m2620do("SP_ERROR_CONF_KEY", "");
                if (!TextUtils.isEmpty(m2620do) && this.f10230try == null) {
                    this.f10230try = (ErrorConfBean) ze.m3189throw(ErrorConfBean.class, m2620do);
                }
                if (this.f10230try != null) {
                    this.f10226for.setText(Html.fromHtml(this.f10230try.getM_title()));
                    if (da.m427native()) {
                        this.f10226for.setTextColor(ze.p(R.color.color_999999));
                    } else {
                        this.f10226for.setTextColor(ze.p(R.color.color_333333));
                    }
                    if (this.f10230try.getRows_tip() != null && this.f10230try.getRows_tip().size() > 0) {
                        this.f10229new.setVisibility(0);
                        FailedMsgAdapter failedMsgAdapter = new FailedMsgAdapter(this.f10230try.getRows_tip(), true);
                        this.f10229new.setAdapter(failedMsgAdapter);
                        failedMsgAdapter.setOnItemChildClickListener(new s20(this, failedMsgAdapter));
                    }
                }
            } catch (Exception unused) {
            }
            if (!TextUtils.isEmpty(str)) {
                ((TextView) this.f10228if.findViewById(R.id.error_conf_title_tv)).setText(str);
            }
            this.f10228if.findViewById(R.id.item_read_error_reload_bt).setOnClickListener(new t20(this));
            if (this.f10228if.getVisibility() != 0) {
                this.f10228if.setVisibility(0);
            }
        }
        LinearLayout linearLayout = this.f10223case;
        if (linearLayout != null && linearLayout.getVisibility() != 8) {
            this.f10223case.setVisibility(8);
        }
        if (getVisibility() != 0) {
            setVisibility(0);
        }
    }

    public void setReloadListener(Cdo cdo) {
        this.f10227goto = cdo;
    }

    public void setText(String str) {
        if (this.f10225else == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f10225else.setText(str);
    }
}
