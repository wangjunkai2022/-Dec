package com.biquge.ebook.app.widget;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.bg;
import com.apk.ca;
import com.apk.da;
import com.apk.ng;
import com.apk.tg;
import com.apk.tt;
import com.apk.ze;
import com.biquge.ebook.app.adapter.FailedMsgAdapter;
import com.biquge.ebook.app.bean.BookChapter;
import com.biquge.ebook.app.bean.ErrorConfBean;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.manhua.ui.widget.barrage.BarrageView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ReadContentLayout extends FrameLayout {

    /* renamed from: break  reason: not valid java name */
    public View.OnClickListener f8093break;

    /* renamed from: case  reason: not valid java name */
    public BarrageView f8094case;

    /* renamed from: catch  reason: not valid java name */
    public final bg f8095catch;

    /* renamed from: do  reason: not valid java name */
    public View f8096do;

    /* renamed from: else  reason: not valid java name */
    public BookChapter f8097else;

    /* renamed from: for  reason: not valid java name */
    public RecyclerView f8098for;

    /* renamed from: goto  reason: not valid java name */
    public String f8099goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f8100if;

    /* renamed from: new  reason: not valid java name */
    public ErrorConfBean f8101new;

    /* renamed from: this  reason: not valid java name */
    public View.OnTouchListener f8102this;

    /* renamed from: try  reason: not valid java name */
    public BookContentTextView f8103try;

    /* renamed from: com.biquge.ebook.app.widget.ReadContentLayout$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemChildClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ FailedMsgAdapter f8104do;

        public Cdo(FailedMsgAdapter failedMsgAdapter) {
            this.f8104do = failedMsgAdapter;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemChildClickListener
        public void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (this.f8104do != null) {
                FailedMsgAdapter.m3282do(ReadContentLayout.this.getContext(), this.f8104do.getItem(i));
            }
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ReadContentLayout$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            View.OnClickListener onClickListener;
            if (view.getId() != R.id.item_read_error_reload_bt || (onClickListener = ReadContentLayout.this.f8093break) == null) {
                return;
            }
            onClickListener.onClick(view);
        }
    }

    public ReadContentLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8095catch = new Cif();
        LayoutInflater.from(getContext()).inflate(R.layout.include_bookread_content_layout, this);
        this.f8103try = (BookContentTextView) findViewById(R.id.item_read_content_view);
        BarrageView barrageView = (BarrageView) findViewById(R.id.pv_comic_barrageview);
        this.f8094case = barrageView;
        barrageView.setHeight(500);
    }

    /* renamed from: do  reason: not valid java name */
    public void m3481do(BookChapter bookChapter, String str, boolean z) {
        this.f8097else = bookChapter;
        this.f8099goto = str;
        try {
            if (bookChapter.getValues() != null && bookChapter.getValues().size() > 0 && "LOAD_FAILED".equals(bookChapter.getValues().get(0))) {
                m3482if();
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        View view = this.f8096do;
        if (view != null && view.getVisibility() != 8) {
            this.f8096do.setVisibility(8);
        }
        BookContentTextView bookContentTextView = this.f8103try;
        if (bookContentTextView != null && bookContentTextView.getVisibility() != 0) {
            this.f8103try.setVisibility(0);
        }
        BookContentTextView bookContentTextView2 = this.f8103try;
        if (bookContentTextView2 != null) {
            bookContentTextView2.removeAllViews();
            try {
                if (TextUtils.isEmpty(str)) {
                    str = da.m419else().m443try(bookChapter.getNovelid(), bookChapter.getChapterId());
                }
                ng ngVar = new ng(bookContentTextView2.getContext());
                float f = bookContentTextView2.f7980do;
                int i = bookContentTextView2.f7981if;
                ngVar.f3222if = f;
                ngVar.f3214case = i;
                ngVar.m1880if(bookChapter, str);
                int contentHeight = ngVar.getContentHeight();
                bookContentTextView2.addView(ngVar);
                int i2 = (int) (ca.m315do().f545goto - contentHeight);
                if (z) {
                    try {
                        tg tgVar = new tg(bookContentTextView2.getContext());
                        if (tgVar.m2587do(i2)) {
                            bookContentTextView2.addView(tgVar);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public BarrageView getBarrageView() {
        return this.f8094case;
    }

    public BookChapter getBookChapter() {
        return this.f8097else;
    }

    public String getChapterName() {
        return this.f8099goto;
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3482if() {
        if (this.f8096do == null) {
            View inflate = ((ViewStub) findViewById(R.id.code_status_failed_layout)).inflate();
            this.f8096do = inflate;
            inflate.findViewById(R.id.item_read_error_reload_bt).setOnClickListener(this.f8095catch);
            this.f8100if = (TextView) this.f8096do.findViewById(R.id.error_conf_title_tv);
            RecyclerView recyclerView = (RecyclerView) this.f8096do.findViewById(R.id.error_conf_msg_rv);
            this.f8098for = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
            this.f8098for.setHasFixedSize(true);
            View.OnTouchListener onTouchListener = this.f8102this;
            if (onTouchListener != null) {
                this.f8098for.setOnTouchListener(onTouchListener);
            }
        }
        if (this.f8096do != null) {
            try {
                String m2620do = tt.m2620do("SP_ERROR_CONF_KEY", "");
                if (!TextUtils.isEmpty(m2620do) && this.f8101new == null) {
                    this.f8101new = (ErrorConfBean) ze.m3189throw(ErrorConfBean.class, m2620do);
                }
                if (this.f8101new != null) {
                    this.f8100if.setText(Html.fromHtml(this.f8101new.getM_title()));
                    if (da.m427native()) {
                        this.f8100if.setTextColor(ze.p(R.color.color_999999));
                    } else {
                        this.f8100if.setTextColor(ze.p(R.color.color_333333));
                    }
                    if (this.f8101new.getRows_tip() != null && this.f8101new.getRows_tip().size() > 0) {
                        this.f8098for.setVisibility(0);
                        FailedMsgAdapter failedMsgAdapter = new FailedMsgAdapter(this.f8101new.getRows_tip(), true);
                        this.f8098for.setAdapter(failedMsgAdapter);
                        failedMsgAdapter.setOnItemChildClickListener(new Cdo(failedMsgAdapter));
                    }
                }
            } catch (Exception unused) {
            }
            View view = this.f8096do;
            if (view != null && view.getVisibility() != 0) {
                this.f8096do.setVisibility(0);
            }
        }
        BookContentTextView bookContentTextView = this.f8103try;
        if (bookContentTextView == null || bookContentTextView.getVisibility() == 8) {
            return;
        }
        this.f8103try.setVisibility(8);
    }

    public void setReloadClickListener(View.OnClickListener onClickListener) {
        this.f8093break = onClickListener;
    }

    public void setTouchListener(View.OnTouchListener onTouchListener) {
        this.f8102this = onTouchListener;
    }
}
