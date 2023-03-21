package com.tr.comment.sdk.commons.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
import com.apk.c90;
import com.apk.fa0;
import com.apk.g90;
import com.apk.h90;
import com.apk.ha0;
import com.apk.i80;
import com.apk.i90;
import com.apk.j90;
import com.apk.k40;
import com.apk.k90;
import com.apk.kb0;
import com.apk.l90;
import com.apk.la0;
import com.apk.lb0;
import com.apk.m90;
import com.apk.o80;
import com.apk.p80;
import com.apk.r80;
import com.apk.r90;
import com.apk.u80;
import com.apk.za0;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.commons.widget.TrStateView;
import com.tr.comment.sdk.view.TrCommentView;
import java.util.List;

/* loaded from: classes7.dex */
public class TrReplyLayout extends c90 implements View.OnClickListener, lb0, TrStateView.Cdo, o80 {

    /* renamed from: break  reason: not valid java name */
    public String f10365break;

    /* renamed from: case  reason: not valid java name */
    public String f10366case;

    /* renamed from: catch  reason: not valid java name */
    public String f10367catch;

    /* renamed from: class  reason: not valid java name */
    public String f10368class;

    /* renamed from: const  reason: not valid java name */
    public p80 f10369const;

    /* renamed from: do  reason: not valid java name */
    public View f10370do;

    /* renamed from: else  reason: not valid java name */
    public String f10371else;

    /* renamed from: final  reason: not valid java name */
    public int f10372final;

    /* renamed from: for  reason: not valid java name */
    public RecyclerView f10373for;

    /* renamed from: goto  reason: not valid java name */
    public String f10374goto;

    /* renamed from: if  reason: not valid java name */
    public LinearLayout f10375if;

    /* renamed from: import  reason: not valid java name */
    public i80 f10376import;

    /* renamed from: native  reason: not valid java name */
    public kb0 f10377native;

    /* renamed from: new  reason: not valid java name */
    public TrStateView f10378new;

    /* renamed from: public  reason: not valid java name */
    public FrameLayout.LayoutParams f10379public;

    /* renamed from: super  reason: not valid java name */
    public int f10380super;

    /* renamed from: this  reason: not valid java name */
    public String f10381this;

    /* renamed from: throw  reason: not valid java name */
    public int f10382throw;

    /* renamed from: try  reason: not valid java name */
    public FragmentActivity f10383try;

    /* renamed from: while  reason: not valid java name */
    public int f10384while;

    /* renamed from: com.tr.comment.sdk.commons.widget.TrReplyLayout$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements r90<TrCommentBean> {
        public Cdo(h90 h90Var) {
        }

        @Override // com.apk.r90
        /* renamed from: do */
        public void mo2255do(r80 r80Var, View view, TrCommentBean trCommentBean, int i) {
            TrCommentBean trCommentBean2 = trCommentBean;
            if (view.getId() == R$id.tr_sdk_item_reply_layout) {
                p80 p80Var = TrReplyLayout.this.f10369const;
                if (p80Var != null) {
                    TrCommentView trCommentView = (TrCommentView) p80Var;
                    if (trCommentBean2 != null) {
                        trCommentView.f10448extends = trCommentBean2;
                        if (trCommentView.f10468while) {
                            trCommentView.m3720throw(trCommentBean2);
                            return;
                        }
                        EditText editText = trCommentView.f10452goto;
                        if (editText != null) {
                            editText.setHint(k40.m1438case(R$string.tr_sdk_comment_reply_user_txt, trCommentBean2.getUserName()));
                        }
                        za0 za0Var = trCommentView.f10446do;
                        if (za0Var != null) {
                            za0Var.m3153new();
                        }
                    }
                }
            } else if (view.getId() == R$id.tr_sdk_item_like_layout) {
                TrReplyLayout trReplyLayout = TrReplyLayout.this;
                kb0 kb0Var = trReplyLayout.f10377native;
                if (kb0Var != null) {
                    kb0Var.m1474new(trReplyLayout.f10366case, trReplyLayout.f10374goto, trReplyLayout.f10381this, trCommentBean2.getId());
                }
            } else if (view.getId() == R$id.tr_sdk_item_jubao_btn) {
                g90 g90Var = new g90(TrReplyLayout.this.getContext());
                g90Var.m952if(trCommentBean2, TrReplyLayout.this);
                g90Var.m951do(TrReplyLayout.this.f10383try, g90Var, view);
            }
        }
    }

    public TrReplyLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10383try = (FragmentActivity) context;
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_reply_layout, this);
        this.f10370do = findViewById(R$id.tr_sdk_reply_bg_view);
        this.f10375if = (LinearLayout) findViewById(R$id.tr_sdk_reply_list_layout);
        this.f10373for = (RecyclerView) findViewById(R$id.tr_sdk_reply_bg_rv);
        TrStateView trStateView = (TrStateView) findViewById(R$id.tr_sdk_comment_reply_state_layout);
        this.f10378new = trStateView;
        trStateView.setReloadClickListener(this);
        this.f10370do.setOnClickListener(this);
        this.f10375if.setOnClickListener(null);
        if (fa0.m760extends()) {
            this.f10375if.setBackgroundResource(R$drawable.tr_sdk_bg_bottom_dialog_night);
        }
        RecyclerView recyclerView = this.f10373for;
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        k40.m1449for(getContext(), recyclerView);
        i80 i80Var = new i80(this.f10383try, null, true);
        this.f10376import = i80Var;
        i80Var.m2399while(R$layout.tr_sdk_load_loading_layout);
        i80 i80Var2 = this.f10376import;
        int i = R$layout.tr_sdk_load_failed_layout;
        i80Var2.f4310this = i <= 0 ? null : LayoutInflater.from(i80Var2.f4305for).inflate(i, (ViewGroup) null);
        this.f10376import.f4307if = new i90(this);
        this.f10373for.setAdapter(this.f10376import);
        Cdo cdo = new Cdo(null);
        this.f10376import.m160native(R$id.tr_sdk_item_like_layout, cdo);
        this.f10376import.m160native(R$id.tr_sdk_item_reply_layout, cdo);
        this.f10376import.m160native(R$id.tr_sdk_item_jubao_btn, cdo);
        this.f10377native = new kb0(getContext(), this);
        this.f10375if.getViewTreeObserver().addOnGlobalLayoutListener(new h90(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListHeight(int i) {
        if (this.f10379public == null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f10375if.getLayoutParams();
            this.f10379public = layoutParams;
            layoutParams.width = -1;
        }
        FrameLayout.LayoutParams layoutParams2 = this.f10379public;
        layoutParams2.height = i;
        layoutParams2.gravity = 80;
        this.f10375if.setLayoutParams(layoutParams2);
    }

    private void setTopComment(TrCommentBean trCommentBean) {
        String m1467while;
        findViewById(R$id.tr_sdk_reply_top_comment_layout).setBackgroundResource(R$drawable.tr_sdk_shape_poster_bg);
        findViewById(R$id.tr_sdk_item_poster_view).setVisibility(0);
        findViewById(R$id.tr_sdk_item_reply_tv).setVisibility(8);
        ((ImageView) findViewById(R$id.tr_sdk_item_avatar_iv)).setImageResource(ha0.m1106do(trCommentBean.getUserFace()));
        ((TextView) findViewById(R$id.tr_sdk_item_author_tv)).setText(trCommentBean.getUserName());
        ((TextView) findViewById(R$id.tr_sdk_item_data_tv)).setText(trCommentBean.isUserAdd() ? k40.m1467while(R$string.tr_sdk_comment_reply_date_just) : k40.m1465throws(trCommentBean.getUpdateTime()));
        ((TrExpandTextView) findViewById(R$id.tr_sdk_item_content_tv)).setText(la0.m1617if(this.f10383try, trCommentBean.getContent()));
        TextView textView = (TextView) findViewById(R$id.tr_sdk_item_like_tv);
        if (trCommentBean.getCommendCount() > 0) {
            m1467while = trCommentBean.getCommendCount() + "";
        } else {
            m1467while = k40.m1467while(R$string.tr_sdk_comment_like_txt);
        }
        textView.setText(m1467while);
    }

    @Override // com.apk.lb0
    /* renamed from: case */
    public void mo1620case(TrCommentBean trCommentBean) {
    }

    /* renamed from: catch  reason: not valid java name */
    public void m3698catch() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f10370do, "alpha", 1.0f, 0.0f);
        ofFloat.setDuration(250L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.addListener(new l90(this));
        ofFloat.start();
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f10375if, "height", this.f10382throw, 0);
        ofInt.setRepeatCount(0);
        ofInt.setDuration(250L);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.addUpdateListener(new m90(this));
        ofInt.start();
    }

    /* renamed from: class  reason: not valid java name */
    public final void m3699class(boolean z) {
        if (this.f10377native != null) {
            if (!z) {
                mo1623goto();
                this.f10384while = 1;
            }
            kb0 kb0Var = this.f10377native;
            String str = this.f10366case;
            String str2 = this.f10374goto;
            String str3 = this.f10381this;
            String str4 = this.f10365break;
            String str5 = this.f10371else;
            int i = this.f10384while;
            if (kb0Var != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(fa0.m777while());
                sb.append("/commentservice/comment/");
                sb.append(str);
                sb.append("/");
                sb.append(str2);
                Cgoto.m993continue(sb, "/", str3, "/", str4);
                sb.append("/");
                sb.append(str5);
                sb.append("/");
                sb.append(i);
                sb.append(".html");
                kb0Var.m1472case(sb.toString(), i, z);
                return;
            }
            throw null;
        }
    }

    /* renamed from: const  reason: not valid java name */
    public void m3700const(FragmentActivity fragmentActivity, String str, String str2, String str3, String str4, TrCommentBean trCommentBean, p80 p80Var) {
        this.f10383try = fragmentActivity;
        this.f10366case = str;
        this.f10371else = str2;
        this.f10374goto = str3;
        this.f10381this = str4;
        this.f10365break = trCommentBean.getId();
        this.f10367catch = trCommentBean.getUserName();
        this.f10368class = trCommentBean.getContent();
        this.f10369const = p80Var;
        setTopComment(trCommentBean);
        setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f10370do, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(150L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.start();
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this.f10375if, "height", 0, this.f10382throw);
        ofInt.setRepeatCount(0);
        ofInt.setDuration(250L);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.addListener(new j90(this));
        ofInt.addUpdateListener(new k90(this));
        ofInt.start();
    }

    @Override // com.tr.comment.sdk.commons.widget.TrStateView.Cdo
    /* renamed from: do  reason: not valid java name */
    public void mo3701do() {
        m3699class(false);
    }

    @Override // com.apk.lb0
    /* renamed from: else */
    public void mo1621else(TrCommentBean trCommentBean, String str) {
        if (this.f10376import == null || TextUtils.isEmpty(this.f10365break) || !this.f10365break.equals(str)) {
            return;
        }
        this.f10376import.m2386case(trCommentBean, 0);
        RecyclerView recyclerView = this.f10373for;
        if (recyclerView != null) {
            recyclerView.scrollToPosition(0);
        }
        TrStateView trStateView = this.f10378new;
        if (trStateView != null) {
            trStateView.m3706try();
        }
    }

    @Override // com.apk.lb0
    /* renamed from: for */
    public void mo1622for() {
        TrStateView trStateView = this.f10378new;
        if (trStateView != null) {
            trStateView.m3706try();
        }
    }

    public String getParentContent() {
        return this.f10368class;
    }

    public String getParentId() {
        if (getVisibility() == 0) {
            return this.f10365break;
        }
        return null;
    }

    public String getParentUserName() {
        return this.f10367catch;
    }

    @Override // com.apk.lb0
    /* renamed from: goto */
    public void mo1623goto() {
        TrStateView trStateView = this.f10378new;
        if (trStateView != null) {
            trStateView.m3705new();
        }
    }

    @Override // com.apk.o80
    /* renamed from: if */
    public void mo1943if(TrCommentBean trCommentBean, String str) {
        kb0 kb0Var = this.f10377native;
        if (kb0Var != null) {
            kb0Var.m1473for(this.f10366case, this.f10374goto, this.f10381this, trCommentBean, str);
        }
    }

    @Override // com.apk.lb0
    /* renamed from: new */
    public void mo1624new(String str) {
        int itemCount;
        if (this.f10376import == null || TextUtils.isEmpty(str) || (itemCount = this.f10376import.getItemCount()) <= 0) {
            return;
        }
        for (int i = 0; i < itemCount; i++) {
            if (str.equals(this.f10376import.m2395new(i).getId())) {
                this.f10376import.m1186return(i);
                return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.tr_sdk_reply_bg_view) {
            m3698catch();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f10372final;
        if (i3 != 0) {
            i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        }
        int i4 = this.f10380super;
        if (i4 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // com.apk.lb0
    /* renamed from: try */
    public void mo1625try(List<TrCommentBean> list, int i, boolean z, boolean z2) {
        i80 i80Var;
        if (z2) {
            i80 i80Var2 = this.f10376import;
            if (i80Var2 != null) {
                if (list == null) {
                    i80Var2.m2398try(i80Var2.f4310this);
                    i80Var2.f4310this.setOnClickListener(new u80(i80Var2));
                } else {
                    this.f10384while = i + 1;
                    i80Var2.m2390else(list);
                }
            }
        } else if (list == null) {
            TrStateView trStateView = this.f10378new;
            if (trStateView != null) {
                trStateView.m3703for();
            }
        } else {
            if (list.size() == 0) {
                TrStateView trStateView2 = this.f10378new;
                if (trStateView2 != null) {
                    trStateView2.m3702do(k40.m1467while(R$string.tr_sdk_comment_reply_empty_txt));
                }
            } else {
                TrStateView trStateView3 = this.f10378new;
                if (trStateView3 != null) {
                    trStateView3.m3706try();
                }
            }
            this.f10384while = i + 1;
            i80 i80Var3 = this.f10376import;
            if (i80Var3 != null) {
                i80Var3.m2394import();
                this.f10376import.m2385break(list);
            }
        }
        if (z || (i80Var = this.f10376import) == null) {
            return;
        }
        i80Var.m2396super();
    }
}
