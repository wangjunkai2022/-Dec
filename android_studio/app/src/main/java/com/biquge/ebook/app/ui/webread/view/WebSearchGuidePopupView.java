package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.apk.ze;
import com.biquge.ebook.app.ui.webread.entity.WebBook;
import com.lxj.xpopup.core.PositionPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class WebSearchGuidePopupView extends PositionPopupView implements View.OnClickListener {

    /* renamed from: if  reason: not valid java name */
    public final WebBook f7949if;

    public WebSearchGuidePopupView(@NonNull Context context, WebBook webBook) {
        super(context);
        this.f7949if = webBook;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.web_read_search_guide_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return eg.m614switch();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getPopupWidth() {
        return eg.m614switch();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        if (this.f7949if != null) {
            ((TextView) findViewById(R.id.webread_item_title_tv)).setText(this.f7949if.getName());
            ((TextView) findViewById(R.id.webread_item_author_tv)).setText(ze.r(R.string.xml_author_placeholder_txt, this.f7949if.getAuthor()));
            ((TextView) findViewById(R.id.webread_item_url_tv)).setText(this.f7949if.getUrl());
        }
        findViewById(R.id.guide_parent_view).setOnClickListener(this);
    }
}
