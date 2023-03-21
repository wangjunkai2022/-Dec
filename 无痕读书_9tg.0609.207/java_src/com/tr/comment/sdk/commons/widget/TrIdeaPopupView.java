package com.tr.comment.sdk.commons.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.apk.fa0;
import com.apk.g80;
import com.lxj.xpopup.core.BottomPopupView;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.bean.TrSortType;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.comment.sdk.view.TrCommentView;
/* loaded from: classes7.dex */
public class TrIdeaPopupView extends BottomPopupView implements g80, View.OnClickListener {

    /* renamed from: case  reason: not valid java name */
    public final String f10357case;

    /* renamed from: do  reason: not valid java name */
    public final FragmentActivity f10358do;

    /* renamed from: else  reason: not valid java name */
    public final String f10359else;

    /* renamed from: for  reason: not valid java name */
    public final TrSortType f10360for;

    /* renamed from: goto  reason: not valid java name */
    public TrCommentView f10361goto;

    /* renamed from: if  reason: not valid java name */
    public final TrSourceType f10362if;

    /* renamed from: new  reason: not valid java name */
    public final String f10363new;

    /* renamed from: try  reason: not valid java name */
    public final int f10364try;

    public TrIdeaPopupView(@NonNull FragmentActivity fragmentActivity, TrSourceType trSourceType, TrSortType trSortType, String str, int i, String str2, String str3, int i2) {
        super(fragmentActivity);
        this.f10358do = fragmentActivity;
        this.f10362if = trSourceType;
        this.f10360for = trSortType;
        this.f10363new = str;
        this.f10364try = i;
        this.f10357case = str2;
        this.f10359else = str3 + "_" + i2;
    }

    @Override // com.apk.g80
    /* renamed from: do */
    public void mo948do(TrCommentBean trCommentBean, String str) {
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R$layout.tr_sdk_idea_popupview_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupHeight() {
        return (int) (TrCommentSdk.getAppContext().getResources().getDisplayMetrics().heightPixels * 0.9f);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.tr_sdk_comment_close_btn) {
            dismiss();
        }
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        if (fa0.m760extends()) {
            findViewById(R$id.tr_sdk_idea_popup_layout).setBackgroundResource(R$drawable.tr_sdk_bg_bottom_dialog_night);
        }
        TrCommentView trCommentView = (TrCommentView) findViewById(R$id.tr_sdk_comment_bottompopup_cv);
        this.f10361goto = trCommentView;
        trCommentView.mo1623goto();
        TrSortType trSortType = this.f10360for;
        if (trSortType != null) {
            this.f10361goto.setSortType(trSortType);
        }
        findViewById(R$id.tr_sdk_comment_close_btn).setOnClickListener(this);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onShow() {
        super.onShow();
        this.f10361goto.m3719super(this.f10364try, this.f10363new);
        this.f10361goto.m3717const(this.f10358do, fa0.m762for(this.f10362if), this.f10357case, this.f10359else);
    }
}
