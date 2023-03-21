package com.tr.comment.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.Nullable;
import com.apk.cb0;
import com.apk.f60;
import com.apk.fa0;
import com.apk.h80;
import com.apk.v90;
import com.baidu.tts.client.SpeechSynthesizer;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.comment.sdk.commons.widget.TrTitleView;
import com.tr.comment.sdk.ggs.view.TrAdViewBangDan;
import com.tr.comment.sdk.ggs.view.TrAdViewBanner;
import com.tr.comment.sdk.ggs.view.TrAdViewRectangle;
import com.tr.comment.sdk.view.TrCommentView;
import java.util.Map;
/* loaded from: classes7.dex */
public class TrCommentActivity extends h80 implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public TrTitleView f10335do;

    /* renamed from: if  reason: not valid java name */
    public TrCommentView f10336if;

    public static void i(Context context, TrSourceType trSourceType, String str, String str2) {
        String m762for = fa0.m762for(trSourceType);
        Intent intent = new Intent(context, TrCommentActivity.class);
        intent.putExtra("COMMENT_EXTRA_SOURCETYPE", m762for);
        intent.putExtra("COMMENT_EXTRA_BOOKID", str);
        intent.putExtra("COMMENT_EXTRA_BOOKNAME", str2);
        context.startActivity(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        TrCommentView trCommentView = this.f10336if;
        if (trCommentView == null || trCommentView.m3715catch(false)) {
            return;
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.tr_sdk_comment_title_back) {
            finish();
        }
    }

    @Override // com.apk.h80, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.tr_sdk_activity_comment);
        this.f10335do = (TrTitleView) findViewById(R$id.tr_sdk_comment_titleview);
        this.f10336if = (TrCommentView) findViewById(R$id.tr_sdk_comment_view);
        findViewById(R$id.tr_sdk_comment_title_back).setOnClickListener(this);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("COMMENT_EXTRA_SOURCETYPE");
        String stringExtra2 = intent.getStringExtra("COMMENT_EXTRA_BOOKID");
        String stringExtra3 = intent.getStringExtra("COMMENT_EXTRA_BOOKNAME");
        if (!TextUtils.isEmpty(stringExtra3)) {
            this.f10335do.setTitle(stringExtra3);
        }
        TrCommentView trCommentView = this.f10336if;
        trCommentView.f10461static = true;
        trCommentView.f10463switch.setVisibility(0);
        trCommentView.findViewById(R$id.tr_sdk_comment_ad_close_bt).setOnClickListener(trCommentView);
        this.f10336if.m3717const(this, stringExtra, stringExtra2, SpeechSynthesizer.REQUEST_DNS_OFF);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        TrCommentView trCommentView = this.f10336if;
        if (trCommentView != null) {
            trCommentView.getViewTreeObserver().removeOnGlobalLayoutListener(trCommentView.f10457package);
            EditText editText = trCommentView.f10452goto;
            if (editText != null) {
                editText.removeTextChangedListener(trCommentView);
            }
            if (trCommentView.f10461static) {
                cb0 m325else = cb0.m325else();
                m325else.f572goto = 0;
                m325else.f564break = 0;
                TrAdViewBangDan trAdViewBangDan = m325else.f566catch;
                if (trAdViewBangDan != null) {
                    trAdViewBangDan.m3708for();
                    m325else.f566catch = null;
                }
                TrAdViewRectangle trAdViewRectangle = m325else.f568const;
                if (trAdViewRectangle != null) {
                    trAdViewRectangle.setVisibility(8);
                    trAdViewRectangle.removeAllViews();
                    v90.Cdo cdo = trAdViewRectangle.f10431do;
                    if (cdo != null) {
                        cdo.removeCallbacksAndMessages(null);
                    }
                    f60 f60Var = trAdViewRectangle.f10429break;
                    if (f60Var != null && f60Var.f1236case != null) {
                        f60Var.f1236case = null;
                    }
                    m325else.f568const = null;
                }
                Map<String, String> map = m325else.f567class;
                if (map != null) {
                    map.clear();
                    m325else.f567class = null;
                }
            }
            TrAdViewBanner trAdViewBanner = trCommentView.f10466throws;
            if (trAdViewBanner != null) {
                trAdViewBanner.m3711new();
            }
            TrAdViewBangDan trAdViewBangDan2 = trCommentView.f10445default;
            if (trAdViewBangDan2 != null) {
                trAdViewBangDan2.m3708for();
            }
        }
    }
}
