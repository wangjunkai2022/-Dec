package com.apk;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.SeekBar;
import skin.support.appcompat.R$styleable;
/* compiled from: SkinCompatSeekBarHelper.java */
/* loaded from: classes7.dex */
public class hs0 extends as0 {

    /* renamed from: case  reason: not valid java name */
    public final SeekBar f1982case;

    /* renamed from: else  reason: not valid java name */
    public int f1983else;

    public hs0(SeekBar seekBar) {
        super(seekBar);
        this.f1983else = 0;
        this.f1982case = seekBar;
    }

    @Override // com.apk.as0
    /* renamed from: for */
    public void mo107for(AttributeSet attributeSet, int i) {
        super.mo107for(attributeSet, i);
        TypedArray obtainStyledAttributes = this.f1982case.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatSeekBar, i, 0);
        this.f1983else = obtainStyledAttributes.getResourceId(R$styleable.AppCompatSeekBar_android_thumb, 0);
        obtainStyledAttributes.recycle();
        mo108if();
    }

    @Override // com.apk.as0
    /* renamed from: if */
    public void mo108if() {
        super.mo108if();
        int m2617do = tr0.m2617do(this.f1983else);
        this.f1983else = m2617do;
        if (m2617do != 0) {
            SeekBar seekBar = this.f1982case;
            seekBar.setThumb(pq0.m2073do(seekBar.getContext(), this.f1983else));
        }
    }
}
