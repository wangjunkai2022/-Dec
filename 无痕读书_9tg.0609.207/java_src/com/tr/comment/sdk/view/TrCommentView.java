package com.tr.comment.sdk.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Ccontinue;
import com.apk.Cgoto;
import com.apk.bb0;
import com.apk.c90;
import com.apk.cb0;
import com.apk.fa0;
import com.apk.g80;
import com.apk.g90;
import com.apk.i80;
import com.apk.k40;
import com.apk.kb0;
import com.apk.la0;
import com.apk.lb0;
import com.apk.lv;
import com.apk.mb0;
import com.apk.o80;
import com.apk.oa0;
import com.apk.p80;
import com.apk.pa0;
import com.apk.pb0;
import com.apk.qb0;
import com.apk.r80;
import com.apk.r90;
import com.apk.rb0;
import com.apk.sb0;
import com.apk.tb0;
import com.apk.u;
import com.apk.u80;
import com.apk.w90;
import com.apk.yv;
import com.apk.za0;
import com.apk.zu;
import com.lxj.xpopup.core.BasePopupView;
import com.lxj.xpopup.core.CenterPopupView;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.R$styleable;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.bean.TrSortType;
import com.tr.comment.sdk.commons.widget.TrEmojiLayout;
import com.tr.comment.sdk.commons.widget.TrIdeaAddCommentPopupView;
import com.tr.comment.sdk.commons.widget.TrReplyLayout;
import com.tr.comment.sdk.commons.widget.TrSortChangeView;
import com.tr.comment.sdk.commons.widget.TrStateView;
import com.tr.comment.sdk.commons.widget.view.TrDayNightTextView;
import com.tr.comment.sdk.ggs.view.TrAdViewBangDan;
import com.tr.comment.sdk.ggs.view.TrAdViewBanner;
import com.tr.comment.sdk.view.TrCommentView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public class TrCommentView extends c90 implements View.OnClickListener, TextWatcher, lb0, TrStateView.Cdo, o80, p80 {

    /* renamed from: abstract  reason: not valid java name */
    public int f10439abstract;

    /* renamed from: break  reason: not valid java name */
    public String f10440break;

    /* renamed from: case  reason: not valid java name */
    public View f10441case;

    /* renamed from: catch  reason: not valid java name */
    public String f10442catch;

    /* renamed from: class  reason: not valid java name */
    public String f10443class;

    /* renamed from: const  reason: not valid java name */
    public int f10444const;

    /* renamed from: default  reason: not valid java name */
    public TrAdViewBangDan f10445default;

    /* renamed from: do  reason: not valid java name */
    public za0 f10446do;

    /* renamed from: else  reason: not valid java name */
    public ImageView f10447else;

    /* renamed from: extends  reason: not valid java name */
    public TrCommentBean f10448extends;

    /* renamed from: final  reason: not valid java name */
    public i80 f10449final;

    /* renamed from: finally  reason: not valid java name */
    public int f10450finally;

    /* renamed from: for  reason: not valid java name */
    public FrameLayout f10451for;

    /* renamed from: goto  reason: not valid java name */
    public EditText f10452goto;

    /* renamed from: if  reason: not valid java name */
    public FragmentActivity f10453if;

    /* renamed from: import  reason: not valid java name */
    public String f10454import;

    /* renamed from: native  reason: not valid java name */
    public int f10455native;

    /* renamed from: new  reason: not valid java name */
    public RecyclerView f10456new;

    /* renamed from: package  reason: not valid java name */
    public final ViewTreeObserver.OnGlobalLayoutListener f10457package;

    /* renamed from: private  reason: not valid java name */
    public View f10458private;

    /* renamed from: public  reason: not valid java name */
    public TextView f10459public;

    /* renamed from: return  reason: not valid java name */
    public TrSortChangeView f10460return;

    /* renamed from: static  reason: not valid java name */
    public boolean f10461static;

    /* renamed from: super  reason: not valid java name */
    public kb0 f10462super;

    /* renamed from: switch  reason: not valid java name */
    public FrameLayout f10463switch;

    /* renamed from: this  reason: not valid java name */
    public TrReplyLayout f10464this;

    /* renamed from: throw  reason: not valid java name */
    public TrSortType f10465throw;

    /* renamed from: throws  reason: not valid java name */
    public TrAdViewBanner f10466throws;

    /* renamed from: try  reason: not valid java name */
    public TrStateView f10467try;

    /* renamed from: while  reason: not valid java name */
    public boolean f10468while;

    /* renamed from: com.tr.comment.sdk.view.TrCommentView$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements g80 {
        public Cdo() {
        }

        @Override // com.apk.g80
        /* renamed from: do */
        public void mo948do(TrCommentBean trCommentBean, String str) {
            TrCommentView.this.mo1621else(trCommentBean, str);
        }
    }

    /* renamed from: com.tr.comment.sdk.view.TrCommentView$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cfor implements ViewTreeObserver.OnGlobalLayoutListener {
        public Cfor() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            int i;
            Rect rect = new Rect();
            TrCommentView.this.f10453if.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            int height = rect.height();
            TrCommentView trCommentView = TrCommentView.this;
            int i2 = trCommentView.f10450finally;
            if (i2 == 0) {
                trCommentView.f10450finally = height;
            } else if (i2 == height || (i = i2 - height) <= ((int) ((trCommentView.f10453if.getResources().getDisplayMetrics().density * 200.0f) + 0.5f))) {
            } else {
                mb0 mb0Var = (mb0) sb0.m2408do();
                SharedPreferences.Editor editor = mb0Var.f3001if;
                if (editor != null) {
                    editor.putInt("SP_SOFTKEY_HEIGHT", i);
                }
                mb0Var.m1689do();
            }
        }
    }

    /* renamed from: com.tr.comment.sdk.view.TrCommentView$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cif extends yv {
        public Cif() {
        }

        @Override // com.apk.yv
        /* renamed from: for */
        public void mo397for(BasePopupView basePopupView) {
            TrCommentView.this.f10448extends = null;
        }
    }

    /* renamed from: com.tr.comment.sdk.view.TrCommentView$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cnew implements View.OnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ TrCommentBean f10472do;

        public Cnew(TrCommentBean trCommentBean) {
            this.f10472do = trCommentBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String clicktype = this.f10472do.getClicktype();
            String apk_pkg = this.f10472do.getApk_pkg();
            String target = this.f10472do.getTarget();
            if (k40.m1437break(TrCommentView.this.getContext(), apk_pkg)) {
                Context context = TrCommentView.this.getContext();
                try {
                    context.startActivity(context.getPackageManager().getLaunchIntentForPackage(apk_pkg));
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
            fa0.m759else(TrCommentView.this.getContext(), clicktype, target);
        }
    }

    /* renamed from: com.tr.comment.sdk.view.TrCommentView$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Ctry implements r90<TrCommentBean> {
        public Ctry(pb0 pb0Var) {
        }

        @Override // com.apk.r90
        /* renamed from: do */
        public void mo2255do(r80 r80Var, View view, TrCommentBean trCommentBean, int i) {
            TrCommentBean trCommentBean2 = trCommentBean;
            if (view.getId() == R$id.tr_sdk_item_like_layout) {
                TrCommentView trCommentView = TrCommentView.this;
                kb0 kb0Var = trCommentView.f10462super;
                if (kb0Var != null) {
                    kb0Var.m1474new(trCommentView.f10440break, trCommentView.f10442catch, trCommentView.f10443class, trCommentBean2.getId());
                }
            } else if (view.getId() == R$id.tr_sdk_item_reply_layout) {
                TrCommentView trCommentView2 = TrCommentView.this;
                trCommentView2.f10464this.m3700const(trCommentView2.f10453if, trCommentView2.f10440break, trCommentView2.f10465throw.getName(), trCommentView2.f10442catch, trCommentView2.f10443class, trCommentBean2, trCommentView2);
            } else if (view.getId() == R$id.tr_sdk_item_jubao_btn) {
                g90 g90Var = new g90(TrCommentView.this.getContext());
                g90Var.m952if(trCommentBean2, TrCommentView.this);
                g90Var.m951do(TrCommentView.this.f10453if, g90Var, view);
            }
        }
    }

    public TrCommentView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f10465throw = TrSortType.HOT;
        this.f10450finally = 0;
        this.f10457package = new Cfor();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TrCommentView, 0, 0);
        if (obtainStyledAttributes != null) {
            this.f10468while = obtainStyledAttributes.getBoolean(R$styleable.TrCommentView_tr_comment_sdk_idea_type, false);
        }
        this.f10453if = (FragmentActivity) context;
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_commentview, this);
        this.f10451for = (FrameLayout) findViewById(R$id.tr_sdk_content_layout);
        TrStateView trStateView = (TrStateView) findViewById(R$id.tr_sdk_comment_state_layout);
        this.f10467try = trStateView;
        trStateView.setReloadClickListener(this);
        this.f10464this = (TrReplyLayout) findViewById(R$id.tr_sdk_comment_reply_layout);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.tr_sdk_comment_rv);
        this.f10456new = recyclerView;
        recyclerView.setHasFixedSize(true);
        this.f10456new.setLayoutManager(new LinearLayoutManager(getContext()));
        k40.m1449for(getContext(), this.f10456new);
        if (this.f10468while) {
            ((ViewStub) findViewById(R$id.tr_sdk_comment_idea_input_layout)).inflate().findViewById(R$id.tr_sdk_idea_bottom_layout).setOnClickListener(this);
        } else {
            View inflate = ((ViewStub) findViewById(R$id.tr_sdk_comment_facekeyboard_layout)).inflate();
            this.f10441case = inflate;
            inflate.setOnClickListener(null);
            ImageView imageView = (ImageView) this.f10441case.findViewById(R$id.tr_sdk_send_msg_btn);
            this.f10447else = imageView;
            imageView.setOnClickListener(this);
        }
        if (fa0.m760extends()) {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_night_bg));
        } else {
            setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_day_bg));
        }
        this.f10463switch = (FrameLayout) findViewById(R$id.tr_sdk_comment_topad_layout);
        getViewTreeObserver().addOnGlobalLayoutListener(this.f10457package);
        i80 i80Var = new i80(this.f10453if, null, true);
        this.f10449final = i80Var;
        i80Var.m2399while(R$layout.tr_sdk_load_loading_layout);
        i80 i80Var2 = this.f10449final;
        int i = R$layout.tr_sdk_load_failed_layout;
        i80Var2.f4310this = i <= 0 ? null : LayoutInflater.from(i80Var2.f4305for).inflate(i, (ViewGroup) null);
        this.f10449final.f4307if = new qb0(this);
        View inflate2 = LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_idea_header_view, (ViewGroup) null);
        this.f10459public = (TextView) inflate2.findViewById(R$id.tr_sdk_idea_header_tv);
        this.f10460return = (TrSortChangeView) inflate2.findViewById(R$id.tr_sdk_idea_header_sort_btn);
        this.f10449final.m2397this(inflate2);
        this.f10460return.setOnTrSortListenner(new rb0(this));
        this.f10460return.setSortType(this.f10465throw.getName());
        this.f10456new.setAdapter(this.f10449final);
        Ctry ctry = new Ctry(null);
        this.f10449final.m160native(R$id.tr_sdk_item_reply_layout, ctry);
        this.f10449final.m160native(R$id.tr_sdk_item_like_layout, ctry);
        this.f10449final.m160native(R$id.tr_sdk_item_jubao_btn, ctry);
        this.f10462super = new kb0(getContext(), this);
    }

    private void setDescendant(ViewGroup viewGroup) {
        if (viewGroup != null) {
            try {
                if (viewGroup.getDescendantFocusability() == 393216) {
                    viewGroup.setDescendantFocusability(131072);
                }
                if (viewGroup.getParent() == null || !(viewGroup.getParent() instanceof ViewGroup)) {
                    return;
                }
                setDescendant((ViewGroup) viewGroup.getParent());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: break  reason: not valid java name */
    public final void m3714break(List<TrCommentBean> list, boolean z) {
        int i;
        if (this.f10461static) {
            cb0 m325else = cb0.m325else();
            List<Integer> list2 = m325else.f575this;
            boolean z2 = false;
            if (list2 != null && list2.size() != 0 && (i = m325else.f570else) != 0) {
                if (!z) {
                    m325else.f572goto = 0;
                } else {
                    m325else.f572goto++;
                }
                if (m325else.f572goto % i == 0) {
                    z2 = true;
                }
            }
            if (!z2 || list.size() < cb0.m325else().f565case) {
                return;
            }
            cb0 m325else2 = cb0.m325else();
            int intValue = m325else2.f575this.get(m325else2.f564break % m325else2.f575this.size()).intValue();
            m325else2.f564break++;
            TrCommentBean trCommentBean = new TrCommentBean();
            trCommentBean.setItemType(intValue);
            int m2393goto = this.f10449final.m2393goto() + cb0.m325else().f565case;
            list.add(cb0.m325else().f565case, trCommentBean);
            if (intValue == 1) {
                cb0.m325else().m328if(this.f10453if, m2393goto);
            } else if (intValue == 2) {
                cb0.m325else().m329new(this.f10453if, m2393goto);
            }
        }
    }

    @Override // com.apk.lb0
    /* renamed from: case */
    public void mo1620case(TrCommentBean trCommentBean) {
        if (this.f10458private == null) {
            View inflate = View.inflate(this.f10453if, R$layout.tr_sdk_official_top_msg_view, null);
            this.f10458private = inflate;
            this.f10449final.m2397this(inflate);
            this.f10449final.notifyDataSetChanged();
            ImageView imageView = (ImageView) this.f10458private.findViewById(R$id.tr_sdk_item_avatar_iv);
            TextView textView = (TextView) this.f10458private.findViewById(R$id.tr_sdk_item_author_tv);
            TrDayNightTextView trDayNightTextView = (TrDayNightTextView) this.f10458private.findViewById(R$id.tr_sdk_item_content_tv);
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
            trDayNightTextView.setOnClickListener(new Cnew(trCommentBean));
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public boolean m3715catch(boolean z) {
        boolean z2;
        TrReplyLayout trReplyLayout;
        za0 za0Var = this.f10446do;
        boolean z3 = true;
        if (za0Var != null) {
            if (za0Var.f6160new.isShown()) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(za0Var.f6160new, "alpha", 1.0f, 0.0f);
                ofFloat.setDuration(150L);
                ofFloat.setInterpolator(new AccelerateInterpolator());
                ofFloat.addListener(new oa0(za0Var));
                ofFloat.start();
            } else if (za0Var.f6154case.isShown()) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(za0Var.f6154case, "alpha", 1.0f, 0.0f);
                ofFloat2.setDuration(150L);
                ofFloat2.setInterpolator(new AccelerateInterpolator());
                ofFloat2.addListener(new pa0(za0Var));
                ofFloat2.start();
            }
            z2 = true;
            if (!z || z2 || (trReplyLayout = this.f10464this) == null) {
                return z2;
            }
            if (trReplyLayout.getVisibility() == 0) {
                trReplyLayout.m3698catch();
            } else {
                z3 = false;
            }
            return z3;
        }
        z2 = false;
        return z ? z2 : z2;
    }

    /* renamed from: class  reason: not valid java name */
    public /* synthetic */ void m3716class() {
        setDescendant(this);
        this.f10452goto.setFocusable(true);
        this.f10452goto.setFocusableInTouchMode(true);
        this.f10452goto.setCursorVisible(true);
        this.f10452goto.requestFocus();
    }

    /* renamed from: const  reason: not valid java name */
    public void m3717const(@NonNull FragmentActivity fragmentActivity, @NonNull String str, @NonNull String str2, @NonNull String str3) {
        this.f10453if = fragmentActivity;
        this.f10440break = str;
        this.f10442catch = str2;
        this.f10443class = str3;
        if (!this.f10468while) {
            View view = this.f10441case;
            if (this.f10446do == null) {
                EditText editText = (EditText) view.findViewById(R$id.tr_sdk_face_text_et);
                this.f10452goto = editText;
                editText.addTextChangedListener(this);
                TrEmojiLayout trEmojiLayout = (TrEmojiLayout) view.findViewById(R$id.tr_sdk_ftil_keyboard);
                trEmojiLayout.f10337do = this.f10452goto;
                za0.Cdo cdo = new za0.Cdo(this.f10453if);
                cdo.f6168if = this.f10451for;
                cdo.f6166for = this.f10452goto;
                cdo.f6169new = trEmojiLayout;
                cdo.f6171try = (ImageView) view.findViewById(R$id.tr_sdk_face_text_emotion);
                cdo.f6163case = (FrameLayout) view.findViewById(R$id.tr_sdk_ftil_userface);
                cdo.f6165else = (ImageView) view.findViewById(R$id.tr_sdk_head_iv);
                cdo.f6170this = new pb0(this);
                cdo.f6167goto = (InputMethodManager) cdo.f6164do.getSystemService("input_method");
                cdo.f6164do.getWindow().setSoftInputMode(19);
                this.f10446do = new za0(cdo);
                this.f10452goto.post(new Runnable() { // from class: com.apk.ob0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TrCommentView.this.m3716class();
                    }
                });
            }
        }
        m3718final(false);
        if ((fa0.f1264do != null ? Ccontinue.m379if().f720public : null) != null) {
            cb0 m325else = cb0.m325else();
            JSONObject jSONObject = fa0.f1264do != null ? Ccontinue.m379if().f720public : null;
            if (m325else != null) {
                if (jSONObject != null && !m325else.f569do) {
                    m325else.f569do = true;
                    m325else.f573if = jSONObject.optJSONObject("top_banner");
                    m325else.f571for = jSONObject.optJSONObject("top_flowlist");
                    m325else.f574new = jSONObject.optJSONObject("item_flowlist");
                    m325else.f576try = jSONObject.optJSONObject("item_rect");
                    m325else.f565case = jSONObject.optInt("after_items");
                    m325else.f570else = jSONObject.optInt("by_page");
                    String optString = jSONObject.optString("rect_vs_list");
                    if (!TextUtils.isEmpty(optString)) {
                        m325else.f575this = new ArrayList();
                        String[] split = optString.split(":");
                        for (int i = 0; i < split.length; i++) {
                            if (i == 0) {
                                int parseInt = Integer.parseInt(split[i]);
                                for (int i2 = 0; i2 < parseInt; i2++) {
                                    m325else.f575this.add(2);
                                }
                            } else if (i == 1) {
                                int parseInt2 = Integer.parseInt(split[i]);
                                for (int i3 = 0; i3 < parseInt2; i3++) {
                                    m325else.f575this.add(1);
                                }
                            }
                        }
                    }
                }
            } else {
                throw null;
            }
        }
        if (cb0.m325else().f571for != null) {
            TrAdViewBangDan trAdViewBangDan = (TrAdViewBangDan) ((ViewStub) findViewById(R$id.tr_sdk_comment_top_bangdan)).inflate();
            this.f10445default = trAdViewBangDan;
            if (trAdViewBangDan != null) {
                trAdViewBangDan.setLoadSuccessVisible(true);
                if (cb0.m326try(cb0.m325else().f571for)) {
                    ImageView imageView = (ImageView) findViewById(R$id.tr_sdk_comment_ad_close_bt);
                    imageView.setOnClickListener(this);
                    this.f10445default.setCloseBtn(imageView);
                }
                TrAdViewBangDan trAdViewBangDan2 = this.f10445default;
                FragmentActivity fragmentActivity2 = this.f10453if;
                JSONObject jSONObject2 = cb0.m325else().f571for;
                if (trAdViewBangDan2 == null) {
                    throw null;
                }
                if (jSONObject2 == null) {
                    return;
                }
                trAdViewBangDan2.f10412if = fragmentActivity2;
                trAdViewBangDan2.f10410for = "top_flowlist";
                new bb0().m166do(new w90(trAdViewBangDan2, jSONObject2));
            }
        } else if (cb0.m325else().f573if != null) {
            TrAdViewBanner trAdViewBanner = (TrAdViewBanner) ((ViewStub) findViewById(R$id.tr_sdk_comment_top_banner)).inflate();
            this.f10466throws = trAdViewBanner;
            if (trAdViewBanner != null) {
                trAdViewBanner.setLoadSuccessVisible(true);
                if (cb0.m326try(cb0.m325else().f573if)) {
                    ImageView imageView2 = (ImageView) findViewById(R$id.tr_sdk_comment_ad_close_bt);
                    imageView2.setOnClickListener(this);
                    this.f10466throws.setCloseBtn(imageView2);
                }
                this.f10466throws.m3710for(this.f10453if, cb0.m325else().f573if, "top_banner");
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        FragmentActivity fragmentActivity;
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        RecyclerView recyclerView = this.f10456new;
        boolean z2 = false;
        if (recyclerView != null) {
            int[] iArr = new int[2];
            recyclerView.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int measuredWidth = recyclerView.getMeasuredWidth() + i;
            int measuredHeight = recyclerView.getMeasuredHeight() + i2;
            if (rawY >= i2 && rawY <= measuredHeight && rawX >= i && rawX <= measuredWidth) {
                z = true;
                if (z && motionEvent.getAction() == 0) {
                    fragmentActivity = this.f10453if;
                    if (fragmentActivity != null && fragmentActivity.getWindow() != null && fragmentActivity.getWindow().getDecorView() != null) {
                        z2 = fa0.m763goto(fragmentActivity.getWindow().getDecorView().getRootView());
                    }
                    if (!z2 || m3715catch(true)) {
                        fa0.m753case(this.f10453if);
                        return true;
                    }
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        }
        z = false;
        if (z) {
            fragmentActivity = this.f10453if;
            if (fragmentActivity != null) {
                z2 = fa0.m763goto(fragmentActivity.getWindow().getDecorView().getRootView());
            }
            if (!z2) {
            }
            fa0.m753case(this.f10453if);
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.tr.comment.sdk.commons.widget.TrStateView.Cdo
    /* renamed from: do */
    public void mo3701do() {
        m3718final(false);
    }

    @Override // com.apk.lb0
    /* renamed from: else */
    public void mo1621else(TrCommentBean trCommentBean, String str) {
        if (trCommentBean != null) {
            if (!TextUtils.isEmpty(str)) {
                if (this.f10464this.isShown()) {
                    this.f10464this.mo1621else(trCommentBean, str);
                }
            } else {
                i80 i80Var = this.f10449final;
                if (i80Var != null) {
                    i80Var.m2386case(trCommentBean, 0);
                    RecyclerView recyclerView = this.f10456new;
                    if (recyclerView != null) {
                        recyclerView.scrollToPosition(0);
                    }
                    TrStateView trStateView = this.f10467try;
                    if (trStateView != null) {
                        trStateView.m3706try();
                    }
                }
            }
            EditText editText = this.f10452goto;
            if (editText == null || this.f10453if == null) {
                return;
            }
            editText.setText("");
            fa0.m753case(this.f10453if);
        }
    }

    /* renamed from: final  reason: not valid java name */
    public final void m3718final(boolean z) {
        if (this.f10462super != null) {
            if (!z) {
                mo1623goto();
                this.f10444const = 1;
            }
            kb0 kb0Var = this.f10462super;
            String str = this.f10440break;
            String str2 = this.f10442catch;
            String str3 = this.f10443class;
            TrSortChangeView trSortChangeView = this.f10460return;
            String sortType = trSortChangeView != null ? trSortChangeView.getSortType() : this.f10465throw.getName();
            int i = this.f10444const;
            if (kb0Var == null) {
                throw null;
            }
            kb0Var.m1472case(fa0.m776try(str, str2, str3, sortType, i), i, z);
        }
    }

    @Override // com.apk.lb0
    /* renamed from: for */
    public void mo1622for() {
        TrStateView trStateView = this.f10467try;
        if (trStateView != null) {
            trStateView.m3706try();
        }
    }

    @Override // com.apk.lb0
    /* renamed from: goto */
    public void mo1623goto() {
        TrStateView trStateView = this.f10467try;
        if (trStateView != null) {
            View view = trStateView.f10393do;
            boolean z = false;
            if (view != null && view.getVisibility() == 0) {
                z = true;
            }
            if (z) {
                return;
            }
            this.f10467try.m3705new();
        }
    }

    @Override // com.apk.o80
    /* renamed from: if */
    public void mo1943if(TrCommentBean trCommentBean, String str) {
        kb0 kb0Var = this.f10462super;
        if (kb0Var != null) {
            kb0Var.m1473for(this.f10440break, this.f10442catch, this.f10443class, trCommentBean, str);
        }
    }

    @Override // com.apk.lb0
    /* renamed from: new */
    public void mo1624new(String str) {
        int itemCount;
        if (this.f10449final == null || TextUtils.isEmpty(str) || (itemCount = this.f10449final.getItemCount()) <= 0) {
            return;
        }
        for (int i = 0; i < itemCount; i++) {
            if (str.equals(this.f10449final.m2395new(i).getId())) {
                this.f10449final.m1186return(i);
                return;
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        kb0 kb0Var;
        if (tb0.m2586do()) {
            return;
        }
        if (view.getId() == R$id.tr_sdk_send_msg_btn) {
            View view2 = this.f10467try.f10393do;
            boolean z = false;
            if (view2 != null && view2.getVisibility() == 0) {
                z = true;
            }
            if (z) {
                return;
            }
            String m1006interface = Cgoto.m1006interface(this.f10452goto);
            if (TextUtils.isEmpty(m1006interface) || (kb0Var = this.f10462super) == null) {
                return;
            }
            kb0Var.m1475try(this.f10440break, this.f10442catch, this.f10443class, la0.m1616for(m1006interface, this.f10448extends), this.f10464this.getParentId());
        } else if (view.getId() == R$id.tr_sdk_idea_bottom_layout) {
            m3720throw(null);
        } else if (view.getId() == R$id.tr_sdk_comment_ad_close_bt) {
            this.f10463switch.setVisibility(8);
            TrAdViewBangDan trAdViewBangDan = this.f10445default;
            if (trAdViewBangDan != null) {
                trAdViewBangDan.m3708for();
                this.f10445default = null;
            }
            TrAdViewBanner trAdViewBanner = this.f10466throws;
            if (trAdViewBanner != null) {
                trAdViewBanner.m3711new();
                this.f10466throws = null;
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f10439abstract = i2;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        EditText editText;
        try {
            ImageView imageView = this.f10447else;
            if (imageView == null || (editText = this.f10452goto) == null) {
                return;
            }
            imageView.setSelected(editText.getText().toString().trim().length() > 0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setSortType(TrSortType trSortType) {
        this.f10465throw = trSortType;
        TrSortChangeView trSortChangeView = this.f10460return;
        if (trSortChangeView != null) {
            trSortChangeView.setSortType(trSortType.getName());
        }
    }

    /* renamed from: super  reason: not valid java name */
    public void m3719super(int i, String str) {
        i80 i80Var;
        this.f10454import = str;
        this.f10455native = i;
        if (this.f10459public != null) {
            if (i == 0 && (i80Var = this.f10449final) != null) {
                i = i80Var.m2393goto();
            }
            if (i > 0) {
                TextView textView = this.f10459public;
                int i2 = R$string.tr_sdk_idea_comment_count_txt;
                textView.setText(k40.m1438case(i2, i + ""));
            }
        }
    }

    /* renamed from: throw  reason: not valid java name */
    public final void m3720throw(TrCommentBean trCommentBean) {
        String str = this.f10454import;
        if (!TextUtils.isEmpty(this.f10464this.getParentId())) {
            if (trCommentBean != null) {
                str = k40.m1438case(R$string.tr_sdk_comment_idea_reply_user_txt, trCommentBean.getUserName(), la0.m1618new(" //@", trCommentBean.getContent()));
            } else {
                str = k40.m1438case(R$string.tr_sdk_comment_idea_reply_user_txt, this.f10464this.getParentUserName(), this.f10464this.getParentContent());
            }
        }
        String str2 = str;
        getContext();
        lv lvVar = new lv();
        lvVar.f2938super = Boolean.TRUE;
        lvVar.f2941throw = new Cif();
        TrIdeaAddCommentPopupView trIdeaAddCommentPopupView = new TrIdeaAddCommentPopupView(getContext(), this.f10440break, str2, trCommentBean, this.f10442catch, this.f10443class, this.f10464this.getParentId(), new Cdo());
        if (trIdeaAddCommentPopupView instanceof CenterPopupView) {
            lvVar.f2917continue = zu.f6266try;
        } else {
            lvVar.f2917continue = zu.f6266try;
        }
        trIdeaAddCommentPopupView.popupInfo = lvVar;
        trIdeaAddCommentPopupView.show();
    }

    @Override // com.apk.lb0
    /* renamed from: try */
    public void mo1625try(List<TrCommentBean> list, int i, boolean z, boolean z2) {
        if (z2) {
            if (list == null) {
                i80 i80Var = this.f10449final;
                i80Var.m2398try(i80Var.f4310this);
                i80Var.f4310this.setOnClickListener(new u80(i80Var));
            } else {
                this.f10444const = i + 1;
                m3714break(list, true);
                this.f10449final.m2390else(list);
            }
        } else if (list == null) {
            TrStateView trStateView = this.f10467try;
            if (trStateView != null) {
                trStateView.m3703for();
            }
        } else {
            if (list.size() == 0 && this.f10458private == null) {
                TrStateView trStateView2 = this.f10467try;
                if (trStateView2 != null) {
                    trStateView2.m3702do(null);
                }
            } else {
                m3714break(list, false);
                TrStateView trStateView3 = this.f10467try;
                if (trStateView3 != null) {
                    trStateView3.m3706try();
                }
            }
            this.f10444const = i + 1;
            this.f10449final.m2385break(list);
        }
        if (!z) {
            this.f10449final.m2396super();
        }
        if (TextUtils.isEmpty(this.f10454import) || this.f10459public == null || this.f10455native != 0) {
            return;
        }
        i80 i80Var2 = this.f10449final;
        if (i80Var2 != null) {
            this.f10455native = i80Var2.m2393goto();
        }
        this.f10459public.setText(k40.m1438case(R$string.tr_sdk_idea_comment_count_txt, Cgoto.m1019this(new StringBuilder(), this.f10455native, "")));
    }
}
