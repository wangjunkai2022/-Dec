package com.biquge.ebook.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.apk.Ccontinue;
import com.apk.b40;
import com.apk.e40;
import com.apk.hf;
import com.apk.w0;
import com.apk.ze;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class TitleIndicatorView extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public e40 f8256do;

    /* renamed from: for  reason: not valid java name */
    public Cif f8257for;

    /* renamed from: if  reason: not valid java name */
    public boolean f8258if;
    @BindView(R.id.fragment_home_indicator)
    public b40 mIndicator;
    @BindView(R.id.fragment_store_switch_left)
    public TextView mSwitchLeftLayout;
    @BindView(R.id.fragment_store_switch_middle)
    public TextView mSwitchMiddleLayout;
    @BindView(R.id.fragment_store_switch_right)
    public TextView mSwitchRightLayout;
    @BindView(R.id.fragment_home_title)
    public TextView mTitleTView;
    @BindView(R.id.fragment_store_switch_layout)
    public LinearLayout switchLayout;

    /* renamed from: com.biquge.ebook.app.widget.TitleIndicatorView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TitleIndicatorView.this.m3522do(w0.m2895throw(), false);
        }
    }

    /* renamed from: com.biquge.ebook.app.widget.TitleIndicatorView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cif {
        /* renamed from: do */
        void mo3308do(hf hfVar, boolean z);
    }

    public TitleIndicatorView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8258if = true;
        LayoutInflater.from(getContext()).inflate(R.layout.include_title_indicatorview, this);
        ButterKnife.bind(this);
        ze.u(getContext(), this.mIndicator, 50, 14);
        hf hfVar = hf.COMIC;
        hf hfVar2 = hf.BOOK;
        if (this.switchLayout == null || this.mTitleTView == null || this.mSwitchLeftLayout == null || this.mSwitchRightLayout == null) {
            return;
        }
        hf hfVar3 = Ccontinue.m379if().f729while;
        if (hfVar3 == hfVar2 || hfVar3 == hfVar) {
            this.mSwitchLeftLayout.setSelected(false);
            this.mSwitchMiddleLayout.setSelected(false);
            this.mSwitchRightLayout.setSelected(false);
        }
        if (hfVar3 == hfVar2) {
            this.switchLayout.setVisibility(8);
            this.mTitleTView.setVisibility(0);
        } else if (hfVar3 == hfVar) {
            this.switchLayout.setVisibility(8);
            this.mTitleTView.setVisibility(0);
        } else if (hfVar3 == hf.BOOK_COMIC) {
            this.mSwitchLeftLayout.setText(ze.q(R.string.ebook_txt));
            this.mSwitchRightLayout.setText(ze.q(R.string.comic_txt));
            this.mSwitchMiddleLayout.setVisibility(8);
        } else if (hfVar3 == hf.COMIC_BOOK) {
            this.mSwitchLeftLayout.setText(ze.q(R.string.comic_txt));
            this.mSwitchRightLayout.setText(ze.q(R.string.ebook_txt));
            this.mSwitchMiddleLayout.setVisibility(8);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m3522do(int i, boolean z) {
        hf hfVar = hf.COMIC;
        hf hfVar2 = hf.BOOK;
        e40 e40Var = this.f8256do;
        if (e40Var == null || this.mSwitchLeftLayout == null || this.mSwitchRightLayout == null) {
            return;
        }
        String str = null;
        if (i == 0) {
            e40Var.m537if(0, false);
            this.mSwitchLeftLayout.setSelected(true);
            this.mSwitchMiddleLayout.setSelected(false);
            this.mSwitchRightLayout.setSelected(false);
            str = this.mSwitchLeftLayout.getText().toString();
        } else if (i == 1) {
            e40Var.m537if(1, false);
            if (this.mSwitchMiddleLayout.getVisibility() == 0) {
                this.mSwitchLeftLayout.setSelected(false);
                this.mSwitchMiddleLayout.setSelected(true);
                this.mSwitchRightLayout.setSelected(false);
                str = this.mSwitchMiddleLayout.getText().toString();
            } else {
                this.mSwitchLeftLayout.setSelected(false);
                this.mSwitchMiddleLayout.setSelected(false);
                this.mSwitchRightLayout.setSelected(true);
                str = this.mSwitchRightLayout.getText().toString();
            }
        } else if (i == 2) {
            e40Var.m537if(2, false);
            this.mSwitchLeftLayout.setSelected(false);
            this.mSwitchMiddleLayout.setSelected(false);
            this.mSwitchRightLayout.setSelected(true);
            str = this.mSwitchRightLayout.getText().toString();
        }
        if (this.f8257for != null) {
            hf hfVar3 = Ccontinue.m379if().f729while;
            if (hfVar3 != hfVar2 && hfVar3 != hfVar) {
                if (ze.q(R.string.ebook_txt).equals(str)) {
                    hfVar = hfVar2;
                } else if (!ze.q(R.string.comic_txt).equals(str)) {
                    hfVar = hfVar3;
                }
                this.f8257for.mo3308do(hfVar, z);
                return;
            }
            this.f8257for.mo3308do(hfVar3, z);
        }
    }

    public b40 getIndicator() {
        return this.mIndicator;
    }

    public int getTabCurrentItem() {
        e40 e40Var = this.f8256do;
        if (e40Var != null) {
            return e40Var.f998do.getCurrentItem();
        }
        return 0;
    }

    public hf getTabModule() {
        hf hfVar = hf.COMIC;
        hf hfVar2 = hf.BOOK;
        hf hfVar3 = Ccontinue.m379if().f729while;
        if (hfVar3 != hfVar2 && hfVar3 != hfVar) {
            String str = null;
            if (this.mSwitchLeftLayout.isSelected()) {
                str = this.mSwitchLeftLayout.getText().toString();
            } else if (this.mSwitchMiddleLayout.isSelected()) {
                str = this.mSwitchMiddleLayout.getText().toString();
            } else if (this.mSwitchRightLayout.isSelected()) {
                str = this.mSwitchRightLayout.getText().toString();
            }
            if (ze.q(R.string.ebook_txt).equals(str)) {
                return hfVar2;
            }
            if (ze.q(R.string.comic_txt).equals(str)) {
                return hfVar;
            }
        }
        return hfVar3;
    }

    /* renamed from: if  reason: not valid java name */
    public void m3523if(e40 e40Var, int i, boolean z) {
        this.f8256do = e40Var;
        TextView textView = this.mTitleTView;
        if (textView != null) {
            textView.setText(ze.q(i));
        }
        if (z) {
            hf hfVar = Ccontinue.m379if().f729while;
            if (hfVar != hf.BOOK && hfVar != hf.COMIC) {
                post(new Cdo());
            } else {
                m3522do(0, false);
            }
        }
    }

    @OnClick({R.id.fragment_store_switch_left, R.id.fragment_store_switch_middle, R.id.fragment_store_switch_right})
    public void menuClick(View view) {
        if (this.f8258if) {
            if (view.getId() == R.id.fragment_store_switch_left) {
                m3522do(0, true);
            } else if (view.getId() == R.id.fragment_store_switch_middle) {
                m3522do(1, true);
            } else if (view.getId() == R.id.fragment_store_switch_right) {
                if (this.mSwitchMiddleLayout.getVisibility() == 0) {
                    m3522do(2, true);
                } else {
                    m3522do(1, true);
                }
            }
        }
    }

    public void setChangeTabListener(Cif cif) {
        this.f8257for = cif;
    }

    public void setEnable(boolean z) {
        this.f8258if = z;
    }
}
