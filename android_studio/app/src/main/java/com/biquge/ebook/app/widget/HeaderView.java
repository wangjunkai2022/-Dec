package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.apk.sr0;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class HeaderView extends sr0 {

    /* renamed from: if  reason: not valid java name */
    public TitleIndicatorView f8072if;
    @BindView(R.id.activity_public_title_txt)
    public TextView mTitleTxt;
    @BindView(R.id.activity_public_toolbar)
    public Toolbar mToolbar;

    public HeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R.layout.view_header_layout, this);
        ButterKnife.bind(this);
    }

    public TitleIndicatorView getTitleIndicatorView() {
        if (this.f8072if == null) {
            this.f8072if = (TitleIndicatorView) ((ViewStub) findViewById(R.id.title_indicator_view)).inflate();
        }
        return this.f8072if;
    }

    public Toolbar getToolbar() {
        return this.mToolbar;
    }

    public void setTitile(String str) {
        this.mTitleTxt.setText(str);
    }
}
