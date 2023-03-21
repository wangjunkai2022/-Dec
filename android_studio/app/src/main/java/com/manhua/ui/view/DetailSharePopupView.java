package com.manhua.ui.view;

import android.app.Activity;
import android.view.View;
import androidx.annotation.NonNull;
import com.apk.hf;
import com.apk.v0;
import com.apk.v3;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.lxj.xpopup.core.BottomPopupView;
import com.manhua.data.bean.ComicBean;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DetailSharePopupView extends BottomPopupView implements View.OnClickListener {

    /* renamed from: do  reason: not valid java name */
    public final Activity f10131do;

    /* renamed from: for  reason: not valid java name */
    public ComicBean f10132for;

    /* renamed from: if  reason: not valid java name */
    public final View f10133if;

    /* renamed from: new  reason: not valid java name */
    public Book f10134new;

    /* renamed from: try  reason: not valid java name */
    public v3 f10135try;

    public DetailSharePopupView(@NonNull Activity activity, View view, ComicBean comicBean) {
        super(activity);
        this.f10131do = activity;
        this.f10132for = comicBean;
        this.f10133if = view;
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.comic_share_dialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.dialog_share_error /* 2131296722 */:
                if (this.f10134new != null || this.f10132for != null) {
                    Book book = this.f10134new;
                    if (book != null) {
                        w0.m2897try(getContext(), hf.BOOK, ze.r(R.string.problem_feedback_txt, book.getName()));
                        break;
                    } else {
                        w0.m2897try(getContext(), hf.COMIC, ze.r(R.string.problem_feedback_txt, this.f10132for.getName()));
                        break;
                    }
                } else {
                    return;
                }
                break;
            case R.id.dialog_share_recommend /* 2131296723 */:
                if (this.f10134new != null || this.f10132for != null) {
                    if (!v0.m2736try().m2741const()) {
                        LoginActivity.l(getContext());
                        break;
                    } else {
                        v3 v3Var = this.f10135try;
                        if (v3Var != null) {
                            Book book2 = this.f10134new;
                            if (book2 != null) {
                                v3Var.m2771super(true, book2.getId());
                                break;
                            } else {
                                v3Var.m2771super(false, this.f10132for.getId());
                                break;
                            }
                        }
                    }
                } else {
                    return;
                }
                break;
            case R.id.dialog_share_share /* 2131296724 */:
                if (this.f10134new != null || this.f10132for != null) {
                    Book book3 = this.f10134new;
                    if (book3 != null) {
                        w0.m2882interface(this.f10131do, this.f10133if, book3, null);
                        break;
                    } else {
                        w0.m2882interface(this.f10131do, this.f10133if, null, this.f10132for);
                        break;
                    }
                } else {
                    return;
                }
        }
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        findViewById(R.id.dialog_share_recommend).setOnClickListener(this);
        findViewById(R.id.dialog_share_share).setOnClickListener(this);
        findViewById(R.id.dialog_share_error).setOnClickListener(this);
        findViewById(R.id.pop_cancel_txt).setOnClickListener(this);
        this.f10135try = new v3(this.f10131do, null);
    }

    public DetailSharePopupView(@NonNull Activity activity, View view, Book book) {
        super(activity);
        this.f10131do = activity;
        this.f10134new = book;
        this.f10133if = view;
    }
}
