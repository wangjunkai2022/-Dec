package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.g80;
import com.apk.kb0;
import com.apk.la0;
import com.apk.lb0;
import com.apk.tb0;
import com.lxj.xpopup.core.BottomPopupView;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.commons.widget.view.TrDayNightEditText;
import java.util.List;
/* loaded from: classes7.dex */
public class TrIdeaAddCommentPopupView extends BottomPopupView implements lb0, TextWatcher, View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public final String f10345break;

    /* renamed from: case  reason: not valid java name */
    public final String f10346case;

    /* renamed from: catch  reason: not valid java name */
    public final g80 f10347catch;

    /* renamed from: class  reason: not valid java name */
    public kb0 f10348class;

    /* renamed from: do  reason: not valid java name */
    public TrStateView f10349do;

    /* renamed from: else  reason: not valid java name */
    public final TrCommentBean f10350else;

    /* renamed from: for  reason: not valid java name */
    public TrDayNightEditText f10351for;

    /* renamed from: goto  reason: not valid java name */
    public final String f10352goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f10353if;

    /* renamed from: new  reason: not valid java name */
    public ImageView f10354new;

    /* renamed from: this  reason: not valid java name */
    public final String f10355this;

    /* renamed from: try  reason: not valid java name */
    public final String f10356try;

    public TrIdeaAddCommentPopupView(@NonNull Context context, @NonNull String str, @NonNull String str2, TrCommentBean trCommentBean, String str3, String str4, String str5, g80 g80Var) {
        super(context);
        this.f10356try = str;
        this.f10346case = str2;
        this.f10350else = trCommentBean;
        this.f10352goto = str3;
        this.f10355this = str4;
        this.f10345break = str5;
        this.f10347catch = g80Var;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // com.apk.lb0
    /* renamed from: case */
    public void mo1620case(TrCommentBean trCommentBean) {
    }

    @Override // com.apk.lb0
    /* renamed from: else */
    public void mo1621else(TrCommentBean trCommentBean, String str) {
        g80 g80Var = this.f10347catch;
        if (g80Var != null) {
            g80Var.mo948do(trCommentBean, str);
        }
        dismiss();
    }

    @Override // com.apk.lb0
    /* renamed from: for */
    public void mo1622for() {
        TrStateView trStateView = this.f10349do;
        if (trStateView != null) {
            trStateView.m3706try();
        }
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R$layout.tr_sdk_idea_popup_sen_comment_layout;
    }

    @Override // com.apk.lb0
    /* renamed from: goto */
    public void mo1623goto() {
        TrStateView trStateView = this.f10349do;
        if (trStateView != null) {
            trStateView.m3705new();
        }
    }

    @Override // com.apk.lb0
    /* renamed from: new */
    public void mo1624new(String str) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        kb0 kb0Var;
        if (!tb0.m2586do() && view.getId() == R$id.tr_sdk_send_msg_btn) {
            String trim = this.f10351for.getText().toString().trim();
            if (TextUtils.isEmpty(trim) || (kb0Var = this.f10348class) == null) {
                return;
            }
            kb0Var.m1475try(this.f10356try, this.f10352goto, this.f10355this, la0.m1616for(trim, this.f10350else), this.f10345break);
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f10349do = (TrStateView) findViewById(R$id.tr_sdk_idea_comment_loading);
        this.f10353if = (TextView) findViewById(R$id.tr_sdk_idea_title_tv);
        this.f10354new = (ImageView) findViewById(R$id.tr_sdk_send_msg_btn);
        TrDayNightEditText trDayNightEditText = (TrDayNightEditText) findViewById(R$id.tr_sdk_face_text_et);
        this.f10351for = trDayNightEditText;
        trDayNightEditText.addTextChangedListener(this);
        this.f10354new.setOnClickListener(this);
        this.f10348class = new kb0(getContext(), this);
        this.f10353if.setText(la0.m1617if(getContext(), this.f10346case));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        TrDayNightEditText trDayNightEditText = this.f10351for;
        if (trDayNightEditText != null) {
            trDayNightEditText.removeTextChangedListener(this);
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        TrDayNightEditText trDayNightEditText;
        try {
            ImageView imageView = this.f10354new;
            if (imageView == null || (trDayNightEditText = this.f10351for) == null) {
                return;
            }
            imageView.setSelected(trDayNightEditText.getText().toString().trim().length() > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.apk.lb0
    /* renamed from: try */
    public void mo1625try(List<TrCommentBean> list, int i, boolean z, boolean z2) {
    }
}
