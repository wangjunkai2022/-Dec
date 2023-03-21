package com.manhua.ui.widget.barrage;

import android.app.Activity;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.apk.ze;
import com.lxj.xpopup.core.BottomPopupView;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BarrageCommentsPopupView extends BottomPopupView implements View.OnClickListener {
    public static final String[] EDITTEXT_COLORS = {"#ffffff", "#F9739A", "#99cc00", "#ff4444", "#ffbb33", "#33b5e5"};
    public Activity mActivity;
    public EditText mContentEt;
    public OnCallBackBarrage mOnCallBackBarrage;
    public TextView mSendTv;
    public TextWatcher mTextWatcher;

    /* loaded from: classes8.dex */
    public interface OnCallBackBarrage {
        void onInputConntent(String str, String str2);
    }

    public BarrageCommentsPopupView(@NonNull Activity activity, OnCallBackBarrage onCallBackBarrage) {
        super(activity);
        this.mTextWatcher = new TextWatcher() { // from class: com.manhua.ui.widget.barrage.BarrageCommentsPopupView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                if (TextUtils.isEmpty((((Object) BarrageCommentsPopupView.this.mContentEt.getText()) + "").trim())) {
                    BarrageCommentsPopupView.this.mSendTv.setEnabled(false);
                    BarrageCommentsPopupView.this.mSendTv.setTextColor(-5000269);
                    return;
                }
                BarrageCommentsPopupView.this.mSendTv.setEnabled(true);
                BarrageCommentsPopupView.this.mSendTv.setTextColor(-14474461);
            }
        };
        this.mActivity = activity;
        this.mOnCallBackBarrage = onCallBackBarrage;
    }

    private void initView() {
        EditText editText = (EditText) findViewById(R.id.doodle_selectable_edit);
        this.mContentEt = editText;
        editText.addTextChangedListener(this.mTextWatcher);
        this.mContentEt.setTag(EDITTEXT_COLORS[0]);
        TextView textView = (TextView) findViewById(R.id.doodle_text_enter_btn);
        this.mSendTv = textView;
        textView.setEnabled(false);
        this.mSendTv.setTextColor(-5000269);
        this.mSendTv.setOnClickListener(this);
        ImageView imageView = (ImageView) findViewById(R.id.stroke_color_white);
        imageView.setSelected(true);
        ImageView imageView2 = (ImageView) findViewById(R.id.stroke_color_pink);
        ImageView imageView3 = (ImageView) findViewById(R.id.stroke_color_green);
        ImageView imageView4 = (ImageView) findViewById(R.id.stroke_color_red);
        ImageView imageView5 = (ImageView) findViewById(R.id.stroke_color_orange);
        ImageView imageView6 = (ImageView) findViewById(R.id.stroke_color_blue);
        final ImageView[] imageViewArr = {imageView, imageView2, imageView3, imageView4, imageView5, imageView6};
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.manhua.ui.widget.barrage.BarrageCommentsPopupView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = 0;
                switch (view.getId()) {
                    case R.id.stroke_color_blue /* 2131297564 */:
                        i = 5;
                        break;
                    case R.id.stroke_color_green /* 2131297565 */:
                        i = 2;
                        break;
                    case R.id.stroke_color_orange /* 2131297566 */:
                        i = 4;
                        break;
                    case R.id.stroke_color_pink /* 2131297567 */:
                        i = 1;
                        break;
                    case R.id.stroke_color_red /* 2131297568 */:
                        i = 3;
                        break;
                }
                BarrageCommentsPopupView.selectView(i, imageViewArr);
                BarrageCommentsPopupView.this.mContentEt.setTag(BarrageCommentsPopupView.EDITTEXT_COLORS[i]);
            }
        };
        imageView.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView5.setOnClickListener(onClickListener);
        imageView6.setOnClickListener(onClickListener);
    }

    public static void selectView(int i, ImageView[] imageViewArr) {
        if (imageViewArr != null) {
            for (ImageView imageView : imageViewArr) {
                imageView.setSelected(false);
            }
            imageViewArr[i].setSelected(true);
        }
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        return R.layout.view_input_barrage_layout;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String m1006interface = Cgoto.m1006interface(this.mContentEt);
        String obj = this.mContentEt.getTag().toString();
        OnCallBackBarrage onCallBackBarrage = this.mOnCallBackBarrage;
        if (onCallBackBarrage != null) {
            onCallBackBarrage.onInputConntent(m1006interface, obj);
        }
        dismiss();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        initView();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onDismiss() {
        super.onDismiss();
        EditText editText = this.mContentEt;
        if (editText != null) {
            editText.removeTextChangedListener(this.mTextWatcher);
        }
        ze.m3170goto(this.mActivity);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onShow() {
        super.onShow();
    }
}
