package com.manhua.ui.widget.barrage;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;
import com.apk.tt;
import com.apk.ze;
import com.biquge.ebook.app.widget.SwitchButton;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class BarrageControlPopWindow extends PopupWindow {
    public static final String[] FONT_DIZE_KEYS = {"小号", "标准", "大号", "特大"};
    public static final float[] FONT_DIZE_VALUES = {-2.0f, 0.0f, 3.0f, 6.0f};
    public static final String[] SPEED_KEYS = {"慢", "正常", "快", "很快"};
    public static final float[] SPEED_VALUES = {-0.5f, 0.0f, 0.5f, 1.0f};
    public TextView mAlphaTView;
    public TextView mFontTView;
    public OnBarrageConfigListener mOnBarrageConfigListener;
    public TextView mSpeedTView;
    public int mAlphaProgress = 100;
    public int mSizeProgress = 1;
    public int mSpeedProgress = 1;

    /* loaded from: classes8.dex */
    public interface OnBarrageConfigListener {
        void alpha(int i, int i2);

        void dismiss();

        void fontSize(int i, float f);

        void open(boolean z);

        void speed(int i, float f);
    }

    public BarrageControlPopWindow(Activity activity, boolean z) {
        View inflate = LayoutInflater.from(activity).inflate(z ? R.layout.view_barrage_control_layout : R.layout.view_barrage_control_land_layout, (ViewGroup) null);
        setWidth(-1);
        setHeight(-2);
        setFocusable(true);
        setBackgroundDrawable(new ColorDrawable(0));
        setAnimationStyle(R.style.s8);
        setContentView(inflate);
        initView(inflate);
        setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.manhua.ui.widget.barrage.BarrageControlPopWindow.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                if (BarrageControlPopWindow.this.mOnBarrageConfigListener != null) {
                    BarrageControlPopWindow.this.mOnBarrageConfigListener.dismiss();
                }
            }
        });
    }

    private void initView(View view) {
        this.mAlphaProgress = ze.m3174instanceof("SP_BARRAGE_FONT_ALPHA_MARK_POSITION", this.mAlphaProgress);
        this.mSizeProgress = ze.m3174instanceof("SP_BARRAGE_FONT_SIZE_MARK_POSITION", this.mSizeProgress);
        this.mSpeedProgress = ze.m3174instanceof("SP_BARRAGE_FONT_SPEED_MARK_POSITION", this.mSpeedProgress);
        setAlphaView(view);
        setFontView(view);
        setSpeedView(view);
        SwitchButton switchButton = (SwitchButton) view.findViewById(R.id.cb_barrage_switch);
        switchButton.setOnCheckedChangeListener(new SwitchButton.Cnew() { // from class: com.manhua.ui.widget.barrage.BarrageControlPopWindow.2
            @Override // com.biquge.ebook.app.widget.SwitchButton.Cnew
            public void onCheckedChanged(SwitchButton switchButton2, boolean z) {
                tt.f4763do.putBoolean("SP_BARRAGE_SWITCH_KEY", z);
                if (BarrageControlPopWindow.this.mOnBarrageConfigListener != null) {
                    BarrageControlPopWindow.this.mOnBarrageConfigListener.open(z);
                }
            }
        });
        switchButton.setChecked(ze.m3179private("SP_BARRAGE_SWITCH_KEY", true));
    }

    private void setAlphaView(View view) {
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.view_barrage_alpha_seekbar);
        seekBar.setMax(100);
        seekBar.setProgress(this.mAlphaProgress);
        TextView textView = (TextView) view.findViewById(R.id.view_barrage_alpha_tv);
        this.mAlphaTView = textView;
        textView.setText(this.mAlphaProgress + "%");
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.manhua.ui.widget.barrage.BarrageControlPopWindow.3
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (z) {
                    BarrageControlPopWindow.this.mAlphaProgress = i;
                    TextView textView2 = BarrageControlPopWindow.this.mAlphaTView;
                    textView2.setText(BarrageControlPopWindow.this.mAlphaProgress + "%");
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                if (BarrageControlPopWindow.this.mOnBarrageConfigListener != null) {
                    BarrageControlPopWindow.this.mOnBarrageConfigListener.alpha(BarrageControlPopWindow.this.mAlphaProgress, (BarrageControlPopWindow.this.mAlphaProgress * 255) / 100);
                }
            }
        });
    }

    private void setFontView(View view) {
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.view_barrage_font_seekbar);
        seekBar.setMax(FONT_DIZE_KEYS.length - 1);
        seekBar.setProgress(this.mSizeProgress);
        TextView textView = (TextView) view.findViewById(R.id.view_barrage_font_tv);
        this.mFontTView = textView;
        textView.setText(FONT_DIZE_KEYS[this.mSizeProgress]);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.manhua.ui.widget.barrage.BarrageControlPopWindow.4
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (z) {
                    BarrageControlPopWindow.this.mSizeProgress = i;
                    BarrageControlPopWindow.this.mFontTView.setText(BarrageControlPopWindow.FONT_DIZE_KEYS[BarrageControlPopWindow.this.mSizeProgress]);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                if (BarrageControlPopWindow.this.mOnBarrageConfigListener != null) {
                    BarrageControlPopWindow.this.mOnBarrageConfigListener.fontSize(BarrageControlPopWindow.this.mSizeProgress, BarrageControlPopWindow.FONT_DIZE_VALUES[BarrageControlPopWindow.this.mSizeProgress]);
                }
            }
        });
    }

    private void setSpeedView(View view) {
        SeekBar seekBar = (SeekBar) view.findViewById(R.id.view_barrage_speed_seekbar);
        seekBar.setMax(SPEED_KEYS.length - 1);
        seekBar.setProgress(this.mSpeedProgress);
        TextView textView = (TextView) view.findViewById(R.id.view_barrage_speed_tv);
        this.mSpeedTView = textView;
        textView.setText(SPEED_KEYS[this.mSpeedProgress]);
        seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.manhua.ui.widget.barrage.BarrageControlPopWindow.5
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar2, int i, boolean z) {
                if (z) {
                    BarrageControlPopWindow.this.mSpeedProgress = i;
                    BarrageControlPopWindow.this.mSpeedTView.setText(BarrageControlPopWindow.SPEED_KEYS[BarrageControlPopWindow.this.mSpeedProgress]);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar2) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar2) {
                if (BarrageControlPopWindow.this.mOnBarrageConfigListener != null) {
                    BarrageControlPopWindow.this.mOnBarrageConfigListener.speed(BarrageControlPopWindow.this.mSpeedProgress, BarrageControlPopWindow.SPEED_VALUES[BarrageControlPopWindow.this.mSpeedProgress]);
                }
            }
        });
    }

    public void setOnBarrageConfigListener(OnBarrageConfigListener onBarrageConfigListener) {
        this.mOnBarrageConfigListener = onBarrageConfigListener;
    }
}
