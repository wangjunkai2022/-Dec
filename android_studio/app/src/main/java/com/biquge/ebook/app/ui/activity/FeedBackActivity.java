package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.b1;
import com.apk.bg;
import com.apk.f6;
import com.apk.hf;
import com.apk.r7;
import com.apk.tt;
import com.apk.v0;
import com.apk.w0;
import com.apk.ze;
import com.biquge.ebook.app.bean.User;
import com.google.android.flexbox.FlexboxLayout;
import com.hjq.toast.ToastUtils;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class FeedBackActivity extends f6 {

    /* renamed from: new  reason: not valid java name */
    public static final String[] f6632new = {"内容报错", "资源找书", "功能建议", "忘记密码", "其他"};
    @BindView(R.id.commit_tips_txt)
    public TextView commit_tips;

    /* renamed from: do  reason: not valid java name */
    public hf f6633do;

    /* renamed from: for  reason: not valid java name */
    public String f6634for = f6632new[0];

    /* renamed from: if  reason: not valid java name */
    public TextView[] f6635if;
    @BindView(R.id.input_et)
    public EditText input_et;
    @BindView(R.id.feedback_ans_flexbox_layout)
    public FlexboxLayout mAnsFlexboxLayout;
    @BindView(R.id.number_tips)
    public TextView number_tips;
    @BindView(R.id.parent_sv)
    public ScrollView parent_sv;
    @BindView(R.id.register_phone_et)
    public EditText register_phone_et;
    @BindView(R.id.register_weixin_qq_et)
    public EditText register_weixin_qq_et;

    /* renamed from: com.biquge.ebook.app.ui.activity.FeedBackActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ String f6636do;

        public Cdo(String str) {
            this.f6636do = str;
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            FeedBackActivity feedBackActivity = FeedBackActivity.this;
            feedBackActivity.f6634for = this.f6636do;
            feedBackActivity.j();
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.FeedBackActivity$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor implements TextWatcher {

        /* renamed from: do  reason: not valid java name */
        public int f6638do;

        /* renamed from: if  reason: not valid java name */
        public int f6640if = 0;

        /* renamed from: for  reason: not valid java name */
        public int f6639for = 0;

        public Cfor(int i) {
            this.f6638do = i;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (editable.length() > this.f6638do) {
                int length = editable.length() - this.f6638do;
                int i = (this.f6639for - length) + this.f6640if;
                editable.delete(i, length + i);
            }
            TextView textView = FeedBackActivity.this.number_tips;
            textView.setText(editable.length() + "/200");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f6640if = i;
            this.f6639for = i3;
        }
    }

    /* renamed from: com.biquge.ebook.app.ui.activity.FeedBackActivity$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements View.OnFocusChangeListener {
        public Cif() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                FeedBackActivity.this.parent_sv.scrollTo(0, 400);
            }
        }
    }

    public static void i(Context context, hf hfVar, String str, String str2) {
        Intent intent = new Intent(context, FeedBackActivity.class);
        if (hfVar == null) {
            hfVar = hf.BOOK;
        }
        intent.putExtra("SOURCE_TYPE", hfVar);
        intent.putExtra("ANS_TITLE_TYPE", str);
        intent.putExtra("CONTENT_TYPE", str2);
        context.startActivity(intent);
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.feed_back_layout;
    }

    @Override // com.apk.f6
    public int getToolBarMenuView() {
        return R.menu.toolbar_menu_public;
    }

    @Override // com.apk.f6
    public void initData() {
        super.initData();
        User m2743else = v0.m2736try().m2743else();
        if (m2743else != null) {
            String email = m2743else.getEmail();
            if (TextUtils.isEmpty(email)) {
                return;
            }
            this.register_phone_et.setText(email);
            this.register_phone_et.setSelection(email.length());
        }
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.activity_feedback_actionbar, ze.q(R.string.main_feedback_txt));
        LayoutInflater from = LayoutInflater.from(this);
        int length = f6632new.length;
        this.f6635if = new TextView[length];
        for (int i = 0; i < length; i++) {
            String str = f6632new[i];
            View inflate = from.inflate(R.layout.item_search_recommend_view, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R.id.item_search_recommend_name_txt);
            textView.setText(str);
            textView.setOnClickListener(new Cdo(str));
            if (i == 0) {
                textView.setSelected(true);
            }
            this.mAnsFlexboxLayout.addView(inflate);
            this.f6635if[i] = textView;
        }
        this.input_et.addTextChangedListener(new Cfor(200));
        this.input_et.setOnFocusChangeListener(new Cif());
        String m2620do = tt.m2620do("FEEDBACK_CLOND_GW_URL_KEY", "");
        if (!TextUtils.isEmpty(m2620do)) {
            this.commit_tips.setText(ze.r(R.string.feedback_gw_url_txt, m2620do));
            this.commit_tips.setVisibility(0);
        }
        Intent intent = getIntent();
        if (intent != null) {
            this.f6633do = (hf) intent.getSerializableExtra("SOURCE_TYPE");
            String stringExtra = intent.getStringExtra("ANS_TITLE_TYPE");
            String stringExtra2 = intent.getStringExtra("CONTENT_TYPE");
            this.f6634for = stringExtra;
            j();
            if (TextUtils.isEmpty(stringExtra2)) {
                return;
            }
            this.input_et.setText(stringExtra2);
            this.input_et.setSelection(stringExtra2.length());
        }
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    public final void j() {
        TextView[] textViewArr = this.f6635if;
        if (textViewArr != null) {
            for (TextView textView : textViewArr) {
                textView.setSelected(this.f6634for.equals(textView.getText().toString()));
            }
        }
    }

    @OnClick({R.id.commit_bt})
    public void menuClk(View view) {
        String obj = this.input_et.getText().toString();
        if (!TextUtils.isEmpty(obj) && obj.length() >= 6) {
            long a2 = ze.a("last_time", 0L);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - a2 <= 30000) {
                ToastUtils.show((CharSequence) "操作过于频繁，请稍后在提交");
                return;
            }
            tt.f4763do.putLong("last_time", currentTimeMillis);
            b1 b1Var = new b1();
            b1Var.m142for(this, false, null);
            b1Var.m141do(new r7(this, obj));
            return;
        }
        ToastUtils.show((CharSequence) "最少输入6个字符");
    }

    @Override // com.apk.f6
    public void onItemMenuSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.book_detail_to_book_shelf) {
            w0.m2877finally(this, ze.q(R.string.main_send_message_app_txt), this.input_et.getText().toString());
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.activity_public_toolbar_search).setVisible(false);
        MenuItem findItem = menu.findItem(R.id.book_detail_to_book_shelf);
        findItem.setTitle("邮件反馈");
        findItem.setIcon(0);
        findItem.setVisible(true);
        return super.onPrepareOptionsMenu(menu);
    }
}
