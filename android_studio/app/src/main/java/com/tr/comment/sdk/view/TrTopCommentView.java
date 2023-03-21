package com.tr.comment.sdk.view;

import android.content.Context;
import android.text.Html;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.c90;
import com.apk.fa0;
import com.apk.g90;
import com.apk.j80;
import com.apk.k40;
import com.apk.kb0;
import com.apk.lb0;
import com.apk.o80;
import com.apk.r80;
import com.apk.r90;
import com.apk.u;
import com.baidu.tts.client.SpeechSynthesizer;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.TrCommentSdk;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.bean.TrSortType;
import com.tr.comment.sdk.bean.TrSourceType;
import com.tr.comment.sdk.commons.widget.view.TrDayNightTextView;
import com.tr.comment.sdk.commons.widget.view.TrFullyLinearLayoutManager;
import java.util.List;

/* loaded from: classes7.dex */
public class TrTopCommentView extends c90 implements lb0, View.OnClickListener, o80 {

    /* renamed from: break  reason: not valid java name */
    public View f10475break;

    /* renamed from: case  reason: not valid java name */
    public String f10476case;

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f10477do;

    /* renamed from: else  reason: not valid java name */
    public String f10478else;

    /* renamed from: for  reason: not valid java name */
    public FragmentActivity f10479for;

    /* renamed from: goto  reason: not valid java name */
    public j80 f10480goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f10481if;

    /* renamed from: new  reason: not valid java name */
    public TrSourceType f10482new;

    /* renamed from: this  reason: not valid java name */
    public kb0 f10483this;

    /* renamed from: try  reason: not valid java name */
    public String f10484try;

    /* renamed from: com.tr.comment.sdk.view.TrTopCommentView$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TrCommentBean f10485do;

        public Cdo(TrCommentBean trCommentBean) {
            this.f10485do = trCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String clicktype = this.f10485do.getClicktype();
            String apk_pkg = this.f10485do.getApk_pkg();
            String target = this.f10485do.getTarget();
            if (k40.m1437break(TrTopCommentView.this.getContext(), apk_pkg)) {
                Context context = TrTopCommentView.this.getContext();
                try {
                    context.startActivity(context.getPackageManager().getLaunchIntentForPackage(apk_pkg));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            fa0.m759else(TrTopCommentView.this.getContext(), clicktype, target);
        }
    }

    /* renamed from: com.tr.comment.sdk.view.TrTopCommentView$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif implements r90<TrCommentBean> {
        public Cif(Cdo cdo) {
        }

        @Override // com.apk.r90
        /* renamed from: do */
        public void mo2255do(r80 r80Var, View view, TrCommentBean trCommentBean, int i) {
            TrCommentBean trCommentBean2 = trCommentBean;
            if (view.getId() == R$id.tr_sdk_item_jubao_btn) {
                g90 g90Var = new g90(TrTopCommentView.this.getContext());
                g90Var.m952if(trCommentBean2, TrTopCommentView.this);
                g90Var.m951do(TrTopCommentView.this.f10479for, g90Var, view);
                return;
            }
            Context context = TrTopCommentView.this.getContext();
            TrTopCommentView trTopCommentView = TrTopCommentView.this;
            TrCommentSdk.openCommentActivity(context, trTopCommentView.f10482new, trTopCommentView.f10476case, trTopCommentView.f10478else);
        }
    }

    public TrTopCommentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10479for = (FragmentActivity) context;
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_top_comment_layout, this);
        this.f10477do = (RecyclerView) findViewById(R$id.tr_sdk_top_comment_rv);
        TextView textView = (TextView) findViewById(R$id.tr_sdk_top_comment_more);
        this.f10481if = textView;
        textView.setOnClickListener(this);
        this.f10477do.setHasFixedSize(true);
        this.f10477do.setLayoutManager(new TrFullyLinearLayoutManager(getContext()));
        this.f10477do.setNestedScrollingEnabled(false);
        k40.m1449for(getContext(), this.f10477do);
        j80 j80Var = new j80(this.f10479for);
        this.f10480goto = j80Var;
        this.f10477do.setAdapter(j80Var);
        this.f10483this = new kb0(getContext(), this);
        Cif cif = new Cif(null);
        this.f10480goto.m160native(R$id.tr_sdk_item_like_layout, cif);
        this.f10480goto.m160native(R$id.tr_sdk_item_reply_layout, cif);
        this.f10480goto.m160native(R$id.tr_sdk_item_jubao_btn, cif);
    }

    @Override // com.apk.lb0
    /* renamed from: case */
    public void mo1620case(TrCommentBean trCommentBean) {
        if (this.f10475break == null) {
            View inflate = View.inflate(this.f10479for, R$layout.tr_sdk_official_top_msg_view, null);
            this.f10475break = inflate;
            this.f10480goto.m2397this(inflate);
            ImageView imageView = (ImageView) this.f10475break.findViewById(R$id.tr_sdk_item_avatar_iv);
            TextView textView = (TextView) this.f10475break.findViewById(R$id.tr_sdk_item_author_tv);
            TrDayNightTextView trDayNightTextView = (TrDayNightTextView) this.f10475break.findViewById(R$id.tr_sdk_item_content_tv);
            trDayNightTextView.setTextSize(2, 13.0f);
            if (TextUtils.isEmpty(trCommentBean.getUserFace())) {
                imageView.setImageResource(R$drawable.tr_sdk_face_official);
            } else {
                String userFace = trCommentBean.getUserFace();
                if (fa0.f1264do != null) {
                    u.m2646final(userFace, imageView);
                }
            }
            textView.setText(trCommentBean.getUserName());
            trDayNightTextView.setText(Html.fromHtml(trCommentBean.getContent()));
            trDayNightTextView.setOnClickListener(new Cdo(trCommentBean));
        }
    }

    @Override // com.apk.lb0
    /* renamed from: else */
    public void mo1621else(TrCommentBean trCommentBean, String str) {
    }

    @Override // com.apk.lb0
    /* renamed from: for */
    public void mo1622for() {
    }

    @Override // com.apk.lb0
    /* renamed from: goto */
    public void mo1623goto() {
    }

    @Override // com.apk.o80
    /* renamed from: if */
    public void mo1943if(TrCommentBean trCommentBean, String str) {
        kb0 kb0Var = this.f10483this;
        if (kb0Var != null) {
            kb0Var.m1473for(this.f10484try, this.f10476case, SpeechSynthesizer.REQUEST_DNS_OFF, trCommentBean, str);
        }
    }

    @Override // com.apk.lb0
    /* renamed from: new */
    public void mo1624new(String str) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.tr_sdk_top_comment_more) {
            TrCommentSdk.openCommentActivity(getContext(), this.f10482new, this.f10476case, this.f10478else);
        }
    }

    /* renamed from: this  reason: not valid java name */
    public void m3721this(@NonNull FragmentActivity fragmentActivity, TrSourceType trSourceType, @NonNull String str, @NonNull String str2) {
        this.f10479for = fragmentActivity;
        this.f10482new = trSourceType;
        String m762for = fa0.m762for(trSourceType);
        this.f10484try = m762for;
        this.f10476case = str;
        this.f10478else = str2;
        kb0 kb0Var = this.f10483this;
        if (kb0Var != null) {
            String name = TrSortType.HOT.getName();
            StringBuilder sb = new StringBuilder();
            sb.append(fa0.m777while());
            sb.append("/commentservice/comment/");
            sb.append(m762for);
            sb.append("/");
            sb.append(str);
            Cgoto.m993continue(sb, "/", SpeechSynthesizer.REQUEST_DNS_OFF, "/", name);
            sb.append("/index.html");
            kb0Var.m1472case(sb.toString(), 1, false);
        }
    }

    @Override // com.apk.lb0
    /* renamed from: try */
    public void mo1625try(List<TrCommentBean> list, int i, boolean z, boolean z2) {
        if (list != null) {
            if (list.size() >= 3) {
                this.f10481if.setVisibility(0);
            }
            try {
                if (this.f10475break != null && list.size() >= 3) {
                    list.remove(list.size() - 1);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            j80 j80Var = this.f10480goto;
            if (j80Var != null) {
                j80Var.m2385break(list);
            }
        }
    }
}
