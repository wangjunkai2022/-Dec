package com.biquge.ebook.app.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.da;
import com.apk.js0;
import com.apk.tr0;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class NightRecyclerView extends RecyclerView implements js0 {
    public NightRecyclerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m3480if();
    }

    @Override // com.apk.js0
    /* renamed from: do */
    public void mo101do() {
        m3480if();
    }

    /* renamed from: if  reason: not valid java name */
    public final void m3480if() {
        try {
            if (da.m438while()) {
                setBackgroundResource(tr0.m2617do(R.drawable.shape_bookgroup_bg_night));
            } else {
                setBackgroundResource(tr0.m2617do(R.drawable.shape_bookgroup_bg));
            }
        } catch (Resources.NotFoundException e) {
            e.printStackTrace();
        }
    }
}
