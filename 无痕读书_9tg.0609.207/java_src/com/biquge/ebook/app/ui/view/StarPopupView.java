package com.biquge.ebook.app.ui.view;

import android.app.Activity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.apk.bg;
import com.apk.f4;
import com.apk.u;
import com.apk.u5;
import com.apk.v0;
import com.apk.v3;
import com.apk.x4;
import com.apk.ze;
import com.baidu.tts.client.SpeechSynthesizer;
import com.biquge.ebook.app.bean.Book;
import com.biquge.ebook.app.ui.activity.LoginActivity;
import com.biquge.ebook.app.widget.StarBarView;
import com.lxj.xpopup.core.CenterPopupView;
import com.manhua.data.bean.ComicBean;
import java.util.HashMap;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class StarPopupView extends CenterPopupView {

    /* renamed from: case  reason: not valid java name */
    public boolean f7784case;

    /* renamed from: do  reason: not valid java name */
    public StarBarView f7785do;

    /* renamed from: else  reason: not valid java name */
    public v3 f7786else;

    /* renamed from: for  reason: not valid java name */
    public Activity f7787for;

    /* renamed from: goto  reason: not valid java name */
    public final bg f7788goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f7789if;

    /* renamed from: new  reason: not valid java name */
    public Book f7790new;

    /* renamed from: this  reason: not valid java name */
    public final u5 f7791this;

    /* renamed from: try  reason: not valid java name */
    public ComicBean f7792try;

    /* renamed from: com.biquge.ebook.app.ui.view.StarPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements StarBarView.Cdo {
        public Cdo() {
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.StarPopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends u5 {
        public Cfor() {
        }

        @Override // com.apk.u5
        /* renamed from: else */
        public void mo2675else() {
            StarPopupView.this.dismiss();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.view.StarPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends bg {
        public Cif() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            String m990catch;
            int id = view.getId();
            if (id == R.id.dialog_star_cancel) {
                StarPopupView.this.dismiss();
            } else if (id != R.id.dialog_star_ok) {
            } else {
                if (!v0.m2736try().m2741const()) {
                    LoginActivity.l(StarPopupView.this.getContext());
                    return;
                }
                int starMark = (int) (StarPopupView.this.f7785do.getStarMark() * 2.0f);
                if (starMark != 0) {
                    StarPopupView starPopupView = StarPopupView.this;
                    if (starPopupView.f7784case) {
                        m990catch = Cgoto.m988break(new StringBuilder(), "/BookAction.aspx");
                    } else {
                        m990catch = Cgoto.m990catch(new StringBuilder(), "/BookAction.aspx");
                    }
                    v3 v3Var = starPopupView.f7786else;
                    if (v3Var != null) {
                        String valueOf = String.valueOf(starMark);
                        HashMap m1007native = Cgoto.m1007native("action", "vote");
                        m1007native.put("score", String.valueOf(valueOf));
                        x4.m2951default(m990catch, m1007native, new f4(v3Var));
                    }
                }
            }
        }
    }

    public StarPopupView(@NonNull Activity activity, Book book) {
        super(activity);
        this.f7784case = true;
        this.f7788goto = new Cif();
        this.f7791this = new Cfor();
        this.f7787for = activity;
        this.f7790new = book;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.dialog_start_view;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        this.f7786else = new v3(this.f7787for, this.f7791this);
        TextView textView = (TextView) findViewById(R.id.dialog_star_title);
        ImageView imageView = (ImageView) findViewById(R.id.dialog_star_image);
        TextView textView2 = (TextView) findViewById(R.id.dialog_star_value);
        this.f7789if = textView2;
        textView2.setText(ze.r(R.string.book_detail_dialog_score_txt, SpeechSynthesizer.REQUEST_DNS_OFF));
        StarBarView starBarView = (StarBarView) findViewById(R.id.dialog_star_view);
        this.f7785do = starBarView;
        starBarView.setOnStarChangeListener(new Cdo());
        Book book = this.f7790new;
        if (book != null) {
            this.f7784case = true;
            textView.setText(book.getName());
            u.m2653public(this.f7790new.getImg(), imageView);
        }
        ComicBean comicBean = this.f7792try;
        if (comicBean != null) {
            this.f7784case = false;
            textView.setText(comicBean.getName());
            u.m2650import(this.f7792try.getImg(), imageView);
        }
        findViewById(R.id.dialog_star_ok).setOnClickListener(this.f7788goto);
        findViewById(R.id.dialog_star_cancel).setOnClickListener(this.f7788goto);
    }

    public StarPopupView(@NonNull Activity activity, ComicBean comicBean) {
        super(activity);
        this.f7784case = true;
        this.f7788goto = new Cif();
        this.f7791this = new Cfor();
        this.f7787for = activity;
        this.f7792try = comicBean;
    }
}
