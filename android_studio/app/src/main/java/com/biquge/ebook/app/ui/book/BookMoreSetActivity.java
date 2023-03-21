package com.biquge.ebook.app.ui.book;

import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.apk.bg;
import com.apk.da;
import com.apk.f6;
import com.apk.mf;
import com.apk.tt;
import com.apk.u0;
import com.apk.ze;
import com.biquge.ebook.app.widget.SwitchButton;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BookMoreSetActivity extends f6 implements SwitchButton.Cnew {

    /* renamed from: break  reason: not valid java name */
    public bg f6889break = new Cdo();

    /* renamed from: case  reason: not valid java name */
    public SwitchButton f6890case;

    /* renamed from: do  reason: not valid java name */
    public TextView f6891do;

    /* renamed from: else  reason: not valid java name */
    public SwitchButton f6892else;

    /* renamed from: for  reason: not valid java name */
    public TextView f6893for;

    /* renamed from: goto  reason: not valid java name */
    public SwitchButton f6894goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f6895if;

    /* renamed from: new  reason: not valid java name */
    public TextView f6896new;

    /* renamed from: this  reason: not valid java name */
    public SwitchButton f6897this;

    /* renamed from: try  reason: not valid java name */
    public TextView f6898try;

    /* renamed from: com.biquge.ebook.app.ui.book.BookMoreSetActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends bg {
        public Cdo() {
        }

        @Override // com.apk.bg
        public void onNoDoubleClick(View view) {
            switch (view.getId()) {
                case R.id.activity_screen_close_mode_keep /* 2131296391 */:
                    if (BookMoreSetActivity.this.f6898try.isSelected()) {
                        return;
                    }
                    da.m429private(4);
                    BookMoreSetActivity.this.i();
                    return;
                case R.id.activity_screen_close_mode_one /* 2131296392 */:
                    if (BookMoreSetActivity.this.f6895if.isSelected()) {
                        return;
                    }
                    da.m429private(1);
                    BookMoreSetActivity.this.i();
                    return;
                case R.id.activity_screen_close_mode_system /* 2131296393 */:
                    if (BookMoreSetActivity.this.f6891do.isSelected()) {
                        return;
                    }
                    da.m429private(0);
                    BookMoreSetActivity.this.i();
                    return;
                case R.id.activity_screen_close_mode_three /* 2131296394 */:
                    if (BookMoreSetActivity.this.f6896new.isSelected()) {
                        return;
                    }
                    da.m429private(3);
                    BookMoreSetActivity.this.i();
                    return;
                case R.id.activity_screen_close_mode_two /* 2131296395 */:
                    if (BookMoreSetActivity.this.f6893for.isSelected()) {
                        return;
                    }
                    da.m429private(2);
                    BookMoreSetActivity.this.i();
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_book_more_set;
    }

    public final void i() {
        this.f6891do.setSelected(false);
        this.f6895if.setSelected(false);
        this.f6893for.setSelected(false);
        this.f6896new.setSelected(false);
        this.f6898try.setSelected(false);
        int m424goto = da.m424goto();
        if (m424goto == 0) {
            this.f6891do.setSelected(true);
        } else if (m424goto == 1) {
            this.f6895if.setSelected(true);
        } else if (m424goto == 2) {
            this.f6893for.setSelected(true);
        } else if (m424goto == 3) {
            this.f6896new.setSelected(true);
        } else if (m424goto != 4) {
        } else {
            this.f6898try.setSelected(true);
        }
    }

    @Override // com.apk.f6
    public void init(@Nullable Bundle bundle) {
        super.init(bundle);
        if (da.m430public()) {
            return;
        }
        setRequestedOrientation(0);
    }

    @Override // com.apk.f6
    public void initData() {
        this.f6890case.setChecked(da.m431return());
        this.f6894goto.setChecked(da.m416class());
        this.f6897this.setChecked(da.m417const());
        if (u0.m2663do().m2665if()) {
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.activity_immersion_read_layout);
            relativeLayout.setVisibility(0);
            relativeLayout.setOnClickListener(this.f6889break);
            this.f6892else.setChecked(da.m436throw());
        }
        i();
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.book_more_set_actionbar, ze.q(R.string.book_menu_more_set_txt).replaceAll(">", ""));
        this.f6891do = (TextView) findViewById(R.id.activity_screen_close_mode_system);
        this.f6895if = (TextView) findViewById(R.id.activity_screen_close_mode_one);
        this.f6893for = (TextView) findViewById(R.id.activity_screen_close_mode_two);
        this.f6896new = (TextView) findViewById(R.id.activity_screen_close_mode_three);
        this.f6898try = (TextView) findViewById(R.id.activity_screen_close_mode_keep);
        this.f6891do.setOnClickListener(this.f6889break);
        this.f6895if.setOnClickListener(this.f6889break);
        this.f6893for.setOnClickListener(this.f6889break);
        this.f6896new.setOnClickListener(this.f6889break);
        this.f6898try.setOnClickListener(this.f6889break);
        SwitchButton switchButton = (SwitchButton) findViewById(R.id.cb_volume_flip_page);
        this.f6890case = switchButton;
        switchButton.setOnCheckedChangeListener(this);
        SwitchButton switchButton2 = (SwitchButton) findViewById(R.id.cb_immersion_read);
        this.f6892else = switchButton2;
        switchButton2.setOnCheckedChangeListener(this);
        SwitchButton switchButton3 = (SwitchButton) findViewById(R.id.cb_fullscreen_click_next);
        this.f6894goto = switchButton3;
        switchButton3.setOnCheckedChangeListener(this);
        SwitchButton switchButton4 = (SwitchButton) findViewById(R.id.cb_fullscreen_mode);
        this.f6897this = switchButton4;
        switchButton4.setOnCheckedChangeListener(this);
    }

    @Override // com.apk.ne0
    public boolean isSwipeBackEnable() {
        return false;
    }

    @Override // com.biquge.ebook.app.widget.SwitchButton.Cnew
    public void onCheckedChanged(SwitchButton switchButton, boolean z) {
        int id = switchButton.getId();
        if (id == R.id.cb_chapter_comment) {
            throw null;
        }
        if (id != R.id.cb_volume_flip_page) {
            switch (id) {
                case R.id.cb_fullscreen_click_next /* 2131296568 */:
                    this.f6894goto.setSelected(!z);
                    tt.f4763do.putBoolean("SP_FULL_SCREEN_CLICK_NEXT_KEY", z);
                    return;
                case R.id.cb_fullscreen_mode /* 2131296569 */:
                    this.f6897this.setSelected(!z);
                    tt.f4763do.putBoolean("SP_FULL_SCREEN_MODE_KEY", z);
                    mf.m1712do("BOOKREAD_IMMERSION_READ", null);
                    return;
                case R.id.cb_immersion_read /* 2131296570 */:
                    this.f6892else.setSelected(!z);
                    tt.f4763do.putBoolean("SP_READ_IMMERSION_KEY", z);
                    mf.m1712do("BOOKREAD_IMMERSION_READ", null);
                    return;
                default:
                    return;
            }
        }
        this.f6890case.setSelected(!z);
        tt.f4763do.putBoolean("SP_BOOK_VOLUME_FLIP_PAGE_KEY", z);
    }
}
