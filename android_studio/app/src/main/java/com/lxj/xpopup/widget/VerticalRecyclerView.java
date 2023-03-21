package com.lxj.xpopup.widget;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.pw;
import com.codelibrary.R$color;

/* loaded from: classes8.dex */
public class VerticalRecyclerView extends RecyclerView {
    public VerticalRecyclerView(@NonNull Context context) {
        this(context, null);
    }

    public void setupDivider(Boolean bool) {
        SmartDivider smartDivider = new SmartDivider(getContext(), 1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(getResources().getColor(bool.booleanValue() ? R$color._xpopup_list_dark_divider : R$color._xpopup_list_divider));
        gradientDrawable.setSize(10, pw.m2086goto(getContext(), 0.4f));
        smartDivider.setDrawable(gradientDrawable);
        addItemDecoration(smartDivider);
    }

    public VerticalRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VerticalRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setLayoutManager(new LinearLayoutManager(getContext()));
    }
}
