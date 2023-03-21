package com.biquge.ebook.app.ui.webread.view;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.eg;
import com.apk.h1;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.lxj.xpopup.core.DrawerPopupView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebBookReadDirPopView extends DrawerPopupView implements View.OnClickListener {

    /* renamed from: break  reason: not valid java name */
    public final WebSiteBean f7898break;

    /* renamed from: catch  reason: not valid java name */
    public final String f7899catch;

    /* renamed from: class  reason: not valid java name */
    public final h1 f7900class;

    /* renamed from: this  reason: not valid java name */
    public WebBookDirLayout f7901this;

    public WebBookReadDirPopView(@NonNull Context context, WebSiteBean webSiteBean, String str, h1 h1Var) {
        super(context);
        this.f7898break = webSiteBean;
        this.f7899catch = str;
        this.f7900class = h1Var;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_web_book_read_dir_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        return (int) (eg.m614switch() * 0.9d);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        WebBookDirLayout webBookDirLayout;
        if (view.getId() != R.id.dirs_location || (webBookDirLayout = this.f7901this) == null) {
            return;
        }
        webBookDirLayout.m3435new(this.f7899catch);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7901this = (WebBookDirLayout) findViewById(R.id.web_parsing_cate_layout);
        findViewById(R.id.dirs_location).setOnClickListener(this);
        WebBookDirLayout webBookDirLayout = this.f7901this;
        if (webBookDirLayout != null) {
            webBookDirLayout.m3434if(this.f7898break, this.f7899catch, null, this.f7900class);
        }
    }
}
