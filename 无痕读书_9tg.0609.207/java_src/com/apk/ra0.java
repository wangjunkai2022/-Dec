package com.apk;

import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.apk.za0;
import com.tr.comment.sdk.R$string;
/* compiled from: SmartKeyboardManager.java */
/* loaded from: classes7.dex */
public class ra0 implements View.OnLayoutChangeListener {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ za0 f4021do;

    public ra0(za0 za0Var) {
        this.f4021do = za0Var;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        za0.Cif cif;
        za0.Cif cif2;
        if (view.getHeight() == Math.max(i4, i8) && this.f4021do.f6160new.getVisibility() != 0 && this.f4021do.f6154case.getVisibility() != 0 && (cif2 = this.f4021do.f6161this) != null) {
            pb0 pb0Var = (pb0) cif2;
            EditText editText = pb0Var.f3600do.f10452goto;
            if (editText != null && TextUtils.isEmpty(editText.getText().toString().trim())) {
                pb0Var.f3600do.f10452goto.setHint(k40.m1467while(R$string.tr_sdk_comment_input_msg_txt));
            }
            pb0Var.f3600do.f10448extends = null;
        }
        if (i8 - i4 != 0 && (cif = this.f4021do.f6161this) != null && ((pb0) cif) == null) {
            throw null;
        }
    }
}
