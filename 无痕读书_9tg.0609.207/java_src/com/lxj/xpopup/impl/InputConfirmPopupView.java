package com.lxj.xpopup.impl;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import com.apk.pw;
import com.apk.sv;
import com.apk.wv;
import com.apk.zu;
/* loaded from: classes8.dex */
public class InputConfirmPopupView extends ConfirmPopupView implements View.OnClickListener {

    /* renamed from: final  reason: not valid java name */
    public CharSequence f9589final;

    /* renamed from: super  reason: not valid java name */
    public sv f9590super;

    /* renamed from: throw  reason: not valid java name */
    public wv f9591throw;

    /* renamed from: com.lxj.xpopup.impl.InputConfirmPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BitmapDrawable m2095try = pw.m2095try(InputConfirmPopupView.this.getResources(), InputConfirmPopupView.this.f9572class.getMeasuredWidth(), Color.parseColor("#888888"));
            BitmapDrawable m2095try2 = pw.m2095try(InputConfirmPopupView.this.getResources(), InputConfirmPopupView.this.f9572class.getMeasuredWidth(), zu.f6262do);
            EditText editText = InputConfirmPopupView.this.f9572class;
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{16842908}, m2095try2);
            stateListDrawable.addState(new int[0], m2095try);
            editText.setBackgroundDrawable(stateListDrawable);
        }
    }

    public InputConfirmPopupView(@NonNull Context context, int i) {
        super(context, i);
    }

    @Override // com.lxj.xpopup.impl.ConfirmPopupView, com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        this.f9572class.setHintTextColor(Color.parseColor("#888888"));
        this.f9572class.setTextColor(Color.parseColor("#dddddd"));
    }

    @Override // com.lxj.xpopup.impl.ConfirmPopupView, com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        this.f9572class.setHintTextColor(Color.parseColor("#888888"));
        this.f9572class.setTextColor(Color.parseColor("#333333"));
    }

    public EditText getEditText() {
        return this.f9572class;
    }

    @Override // com.lxj.xpopup.impl.ConfirmPopupView, com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        this.f9572class.setVisibility(0);
        if (!TextUtils.isEmpty(this.f9580this)) {
            this.f9572class.setHint(this.f9580this);
        }
        if (!TextUtils.isEmpty(this.f9589final)) {
            this.f9572class.setText(this.f9589final);
            this.f9572class.setSelection(this.f9589final.length());
        }
        EditText editText = this.f9572class;
        int i = zu.f6262do;
        editText.post(new Cdo());
    }

    @Override // com.lxj.xpopup.impl.ConfirmPopupView, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f9581try) {
            sv svVar = this.f9590super;
            if (svVar != null) {
                svVar.onCancel();
            }
            dismiss();
        } else if (view == this.f9570case) {
            wv wvVar = this.f9591throw;
            if (wvVar != null) {
                wvVar.mo2944do(this.f9572class.getText().toString().trim());
            }
            if (this.popupInfo.f2930new.booleanValue()) {
                dismiss();
            }
        }
    }
}
