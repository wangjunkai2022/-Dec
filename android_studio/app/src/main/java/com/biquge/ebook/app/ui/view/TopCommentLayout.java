package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import com.apk.hd;
import com.apk.ze;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.comment.sdk.view.TrTopCommentView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class TopCommentLayout extends LinearLayout {

    /* renamed from: do  reason: not valid java name */
    public TrTopCommentView f7796do;

    /* renamed from: for  reason: not valid java name */
    public boolean f7797for;

    /* renamed from: if  reason: not valid java name */
    public boolean f7798if;

    /* renamed from: new  reason: not valid java name */
    public String f7799new;

    /* renamed from: try  reason: not valid java name */
    public String f7800try;

    public TopCommentLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(context).inflate(R.layout.view_comment_top_layout, this);
        setOrientation(1);
        this.f7796do = (TrTopCommentView) findViewById(R.id.comment_sdk_layout);
        findViewById(R.id.comment_more_btn).setOnClickListener(new hd(this));
    }

    /* renamed from: do  reason: not valid java name */
    public void m3422do(FragmentActivity fragmentActivity, boolean z, boolean z2, String str, String str2) {
        this.f7798if = z;
        this.f7797for = z2;
        this.f7799new = ze.m3187synchronized(z2, str);
        this.f7800try = str2;
        TrTopCommentView trTopCommentView = this.f7796do;
        if (trTopCommentView != null) {
            trTopCommentView.m3721this(fragmentActivity, z ? TrSourceType.Novel : TrSourceType.Cartoon, this.f7799new, this.f7800try);
        }
    }
}
