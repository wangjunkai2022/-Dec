package com.biquge.ebook.app.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewConfiguration;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.gd;

/* loaded from: classes8.dex */
public class SlideRecyclerView extends RecyclerView {

    /* renamed from: do  reason: not valid java name */
    public final int f7780do;

    /* renamed from: for  reason: not valid java name */
    public boolean f7781for;

    /* renamed from: if  reason: not valid java name */
    public Cdo f7782if;

    /* renamed from: new  reason: not valid java name */
    public boolean f7783new;

    /* renamed from: com.biquge.ebook.app.ui.view.SlideRecyclerView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public interface Cdo {
    }

    public SlideRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f7780do = ViewConfiguration.get(context).getScaledTouchSlop() / 2;
        addOnScrollListener(new gd(this));
    }

    public void setCallScrollDown(boolean z) {
    }

    public void setCallScrollUp(boolean z) {
        this.f7781for = z;
    }

    public void setSlideCallback(Cdo cdo) {
        this.f7782if = cdo;
    }
}
