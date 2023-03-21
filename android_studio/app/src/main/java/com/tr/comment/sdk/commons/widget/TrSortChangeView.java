package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apk.fa0;
import com.apk.rb0;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.bean.TrSortType;

/* loaded from: classes7.dex */
public class TrSortChangeView extends FrameLayout implements View.OnClickListener {

    /* renamed from: try  reason: not valid java name */
    public static final String[] f10386try = {TrSortType.HOT.getName(), TrSortType.LAST.getName()};

    /* renamed from: do  reason: not valid java name */
    public TextView f10387do;

    /* renamed from: for  reason: not valid java name */
    public String f10388for;

    /* renamed from: if  reason: not valid java name */
    public TextView f10389if;

    /* renamed from: new  reason: not valid java name */
    public Cdo f10390new;

    /* renamed from: com.tr.comment.sdk.commons.widget.TrSortChangeView$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public interface Cdo {
    }

    public TrSortChangeView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_sort_layout, this);
        this.f10387do = (TextView) findViewById(R$id.tr_sdk_sort_type_hot);
        this.f10389if = (TextView) findViewById(R$id.tr_sdk_sort_type_last);
        this.f10387do.setSelected(true);
        this.f10387do.setOnClickListener(this);
        this.f10389if.setOnClickListener(this);
        this.f10388for = f10386try[0];
        if (fa0.m760extends()) {
            setBackgroundResource(R$drawable.tr_sdk_shape_reply_night);
        } else {
            setBackgroundResource(R$drawable.tr_sdk_shape_reply);
        }
    }

    public String getSortType() {
        return this.f10388for;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R$id.tr_sdk_sort_type_hot) {
            if (this.f10387do.isSelected()) {
                return;
            }
            this.f10387do.setSelected(true);
            this.f10389if.setSelected(false);
            this.f10388for = f10386try[0];
        } else if (view.getId() == R$id.tr_sdk_sort_type_last) {
            if (this.f10389if.isSelected()) {
                return;
            }
            this.f10389if.setSelected(true);
            this.f10387do.setSelected(false);
            this.f10388for = f10386try[1];
        }
        Cdo cdo = this.f10390new;
        if (cdo != null) {
            getSortType();
            ((rb0) cdo).f4023do.m3718final(false);
        }
    }

    public void setOnTrSortListenner(Cdo cdo) {
        this.f10390new = cdo;
    }

    public void setSortType(String str) {
        String[] strArr = f10386try;
        if (strArr[0].equals(str)) {
            this.f10387do.setSelected(true);
            this.f10389if.setSelected(false);
            this.f10388for = strArr[0];
            return;
        }
        this.f10389if.setSelected(true);
        this.f10387do.setSelected(false);
        this.f10388for = strArr[1];
    }
}
