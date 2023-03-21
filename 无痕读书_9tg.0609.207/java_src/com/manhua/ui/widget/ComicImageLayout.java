package com.manhua.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.manhua.ui.widget.barrage.BarrageView;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class ComicImageLayout extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public ImageView f10136do;

    /* renamed from: for  reason: not valid java name */
    public ViewGroup.LayoutParams f10137for;

    /* renamed from: if  reason: not valid java name */
    public BarrageView f10138if;

    public ComicImageLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(getContext()).inflate(R.layout.view_comic_image_layout, this);
        this.f10136do = (ImageView) findViewById(R.id.pv_comic);
        this.f10138if = (BarrageView) findViewById(R.id.pv_comic_barrageview);
    }

    public BarrageView getDanmakuView() {
        return this.f10138if;
    }

    public ImageView getImageView() {
        return this.f10136do;
    }
}
