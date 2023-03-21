package com.biquge.ebook.app.ui.webread.view;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.apk.h1;
import com.biquge.ebook.app.bean.ChapterBean;
import com.biquge.ebook.app.ui.book.NewBookReadActivity;
import com.biquge.ebook.app.ui.webread.entity.WebSiteBean;
import com.biquge.ebook.app.ui.webread.view.WebBookDirPopView;
import com.lxj.xpopup.impl.FullScreenPopupView;
import java.util.List;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WebBookDirPopView extends FullScreenPopupView {

    /* renamed from: break  reason: not valid java name */
    public final h1 f7893break;

    /* renamed from: else  reason: not valid java name */
    public WebBookDirLayout f7894else;

    /* renamed from: goto  reason: not valid java name */
    public final WebSiteBean f7895goto;

    /* renamed from: this  reason: not valid java name */
    public final String f7896this;

    /* renamed from: com.biquge.ebook.app.ui.webread.view.WebBookDirPopView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements h1 {
        public Cdo() {
        }

        @Override // com.apk.h1
        /* renamed from: do */
        public void mo1049do() {
            WebBookDirPopView.this.dismiss();
        }

        @Override // com.apk.h1
        /* renamed from: for */
        public void mo1050for(ChapterBean chapterBean) {
            WebBookDirPopView.this.f7895goto.setReadChapterUrl(chapterBean.getUrl());
            NewBookReadActivity.c0((Activity) WebBookDirPopView.this.getContext(), WebBookDirPopView.this.f7895goto);
            WebBookDirPopView.this.postDelayed(new Runnable() { // from class: com.apk.be
                @Override // java.lang.Runnable
                public final void run() {
                    WebBookDirPopView.Cdo.this.m3436try();
                }
            }, 500L);
        }

        @Override // com.apk.h1
        /* renamed from: if */
        public void mo1051if(String str, int i) {
        }

        @Override // com.apk.h1
        /* renamed from: new */
        public void mo1052new(List<ChapterBean> list, String str) {
        }

        /* renamed from: try  reason: not valid java name */
        public /* synthetic */ void m3436try() {
            WebBookDirPopView.this.dismiss();
        }
    }

    public WebBookDirPopView(@NonNull Context context, WebSiteBean webSiteBean) {
        super(context);
        this.f7893break = new Cdo();
        this.f7895goto = webSiteBean;
        this.f7896this = null;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.popup_web_book_dir_layout;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        WebBookDirLayout webBookDirLayout = (WebBookDirLayout) findViewById(R.id.web_parsing_cate_layout);
        this.f7894else = webBookDirLayout;
        if (webBookDirLayout != null) {
            webBookDirLayout.m3434if(this.f7895goto, null, this.f7896this, this.f7893break);
        }
    }

    public WebBookDirPopView(@NonNull Context context, WebSiteBean webSiteBean, String str) {
        super(context);
        this.f7893break = new Cdo();
        this.f7895goto = webSiteBean;
        this.f7896this = str;
    }
}
