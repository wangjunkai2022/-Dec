package com.lxj.xpopup.impl;

import android.content.Context;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.sv;
import com.apk.uv;
import com.apk.zu;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.CenterPopupView;
/* loaded from: classes8.dex */
public class ConfirmPopupView extends CenterPopupView implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public CharSequence f9569break;

    /* renamed from: case  reason: not valid java name */
    public TextView f9570case;

    /* renamed from: catch  reason: not valid java name */
    public CharSequence f9571catch;

    /* renamed from: class  reason: not valid java name */
    public EditText f9572class;

    /* renamed from: const  reason: not valid java name */
    public boolean f9573const;

    /* renamed from: do  reason: not valid java name */
    public sv f9574do;

    /* renamed from: else  reason: not valid java name */
    public CharSequence f9575else;

    /* renamed from: for  reason: not valid java name */
    public TextView f9576for;

    /* renamed from: goto  reason: not valid java name */
    public CharSequence f9577goto;

    /* renamed from: if  reason: not valid java name */
    public uv f9578if;

    /* renamed from: new  reason: not valid java name */
    public TextView f9579new;

    /* renamed from: this  reason: not valid java name */
    public CharSequence f9580this;

    /* renamed from: try  reason: not valid java name */
    public TextView f9581try;

    public ConfirmPopupView(@NonNull Context context, int i) {
        super(context);
        this.f9573const = false;
        this.bindLayoutId = i;
        addInnerContent();
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        this.f9576for.setTextColor(getResources().getColor(R$color._xpopup_white_color));
        this.f9579new.setTextColor(getResources().getColor(R$color._xpopup_white_color));
        this.f9581try.setTextColor(getResources().getColor(R$color._xpopup_white_color));
        this.f9570case.setTextColor(zu.f6262do);
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        this.f9576for.setTextColor(getResources().getColor(R$color._xpopup_title_color));
        this.f9579new.setTextColor(getResources().getColor(R$color._xpopup_content_color));
        this.f9581try.setTextColor(getResources().getColor(R$color._xpopup_cancel_color));
        this.f9570case.setTextColor(zu.f6262do);
    }

    public TextView getCancelTextView() {
        return (TextView) findViewById(R$id.tv_cancel);
    }

    public TextView getConfirmTextView() {
        return (TextView) findViewById(R$id.tv_confirm);
    }

    public TextView getContentTextView() {
        return (TextView) findViewById(R$id.tv_content);
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        int i = this.bindLayoutId;
        return i != 0 ? i : R$layout._xpopup_center_impl_confirm;
    }

    public TextView getTitleTextView() {
        return (TextView) findViewById(R$id.tv_title);
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        this.f9576for = (TextView) findViewById(R$id.tv_title);
        this.f9579new = (TextView) findViewById(R$id.tv_content);
        this.f9581try = (TextView) findViewById(R$id.tv_cancel);
        this.f9570case = (TextView) findViewById(R$id.tv_confirm);
        this.f9579new.setMovementMethod(LinkMovementMethod.getInstance());
        this.f9572class = (EditText) findViewById(R$id.et_input);
        this.f9581try.setOnClickListener(this);
        this.f9570case.setOnClickListener(this);
        if (!TextUtils.isEmpty(this.f9575else)) {
            this.f9576for.setText(this.f9575else);
        } else {
            this.f9576for.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f9577goto)) {
            this.f9579new.setText(this.f9577goto);
        } else {
            this.f9579new.setVisibility(8);
        }
        if (!TextUtils.isEmpty(this.f9569break)) {
            this.f9581try.setText(this.f9569break);
        }
        if (!TextUtils.isEmpty(this.f9571catch)) {
            this.f9570case.setText(this.f9571catch);
        }
        if (this.f9573const) {
            this.f9581try.setVisibility(8);
        }
        applyTheme();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f9581try) {
            sv svVar = this.f9574do;
            if (svVar != null) {
                svVar.onCancel();
            }
            dismiss();
        } else if (view == this.f9570case) {
            uv uvVar = this.f9578if;
            if (uvVar != null) {
                uvVar.onConfirm();
            }
            if (this.popupInfo.f2930new.booleanValue()) {
                dismiss();
            }
        }
    }
}
