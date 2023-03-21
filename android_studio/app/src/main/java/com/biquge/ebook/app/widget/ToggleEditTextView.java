package com.biquge.ebook.app.widget;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.Cgoto;
import com.apk.bg;
import com.apk.ze;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class ToggleEditTextView extends FrameLayout implements TextWatcher, TextView.OnEditorActionListener {

    /* renamed from: case  reason: not valid java name */
    public Cif f8267case;

    /* renamed from: do  reason: not valid java name */
    public TextView f8268do;

    /* renamed from: for  reason: not valid java name */
    public String f8269for;

    /* renamed from: if  reason: not valid java name */
    public ClearEditText f8270if;

    /* renamed from: new  reason: not valid java name */
    public String f8271new;

    /* renamed from: try  reason: not valid java name */
    public bg f8272try;

    /* renamed from: com.biquge.ebook.app.widget.ToggleEditTextView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            ToggleEditTextView toggleEditTextView = ToggleEditTextView.this;
            Activity activity = (Activity) toggleEditTextView.getContext();
            if (toggleEditTextView.f8270if.getVisibility() != 0) {
                toggleEditTextView.f8270if.setVisibility(0);
            }
            if (toggleEditTextView.f8268do.getVisibility() != 8) {
                toggleEditTextView.f8268do.setVisibility(8);
            }
            toggleEditTextView.f8270if.requestFocus();
            toggleEditTextView.f8270if.setFocusableInTouchMode(true);
            toggleEditTextView.f8270if.setFocusable(true);
            ze.L(activity);
            toggleEditTextView.f8270if.setSelection(toggleEditTextView.f8271new.length());
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.ToggleEditTextView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo3307do(String str);
    }

    public ToggleEditTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8272try = new Cdo();
        LayoutInflater.from(getContext()).inflate(R.layout.view_toggle_edit_text, this);
        this.f8268do = (TextView) findViewById(R.id.text_view);
        ClearEditText clearEditText = (ClearEditText) findViewById(R.id.edit_text);
        this.f8270if = clearEditText;
        clearEditText.addTextChangedListener(this);
        this.f8270if.setOnEditorActionListener(this);
        setOnClickListener(this.f8272try);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: do  reason: not valid java name */
    public boolean m3524do() {
        return this.f8270if.getVisibility() == 0;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3525if(Activity activity) {
        if (this.f8268do.getVisibility() != 0) {
            this.f8268do.setVisibility(0);
        }
        if (this.f8270if.getVisibility() != 8) {
            this.f8270if.setVisibility(8);
        }
        ze.m3170goto(activity);
        if (TextUtils.isEmpty(this.f8271new)) {
            setText(this.f8269for);
        }
        Cif cif = this.f8267case;
        if (cif != null) {
            cif.mo3307do(this.f8271new);
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        m3525if((Activity) getContext());
        return true;
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        String m1022transient = Cgoto.m1022transient(this.f8270if);
        this.f8271new = m1022transient;
        this.f8268do.setText(m1022transient);
        if (TextUtils.isEmpty(this.f8271new)) {
            return;
        }
        this.f8269for = this.f8271new;
    }

    public void setOnEditFinishListener(Cif cif) {
        this.f8267case = cif;
    }

    public void setText(String str) {
        this.f8268do.setText(str);
        this.f8270if.setText(str);
        this.f8271new = str;
        this.f8269for = str;
    }
}
