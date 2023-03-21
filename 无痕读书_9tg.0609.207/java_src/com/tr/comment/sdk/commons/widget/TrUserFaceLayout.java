package com.tr.comment.sdk.commons.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.c90;
import com.apk.fa0;
import com.apk.ga0;
import com.apk.ha0;
import com.apk.o90;
import com.apk.r80;
import com.apk.y80;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import java.util.List;
/* loaded from: classes7.dex */
public class TrUserFaceLayout extends c90 {

    /* renamed from: com.tr.comment.sdk.commons.widget.TrUserFaceLayout$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends y80<ga0> {

        /* renamed from: public  reason: not valid java name */
        public String f10402public;

        public Cdo(Context context, List<ga0> list) {
            super(context, list, false);
            this.f10402public = fa0.m772switch();
        }

        @Override // com.apk.y80
        /* renamed from: native */
        public void mo953native(r80 r80Var, ga0 ga0Var, int i) {
            ga0 ga0Var2 = ga0Var;
            r80Var.m2253for(R$id.tr_sdk_item_userface_head_iv, ga0Var2.f1540for);
            r80Var.m2252do(R$id.tr_sdk_item_userface_bg_iv).setVisibility(ga0Var2.m955do().equals(this.f10402public) ? 0 : 4);
        }

        @Override // com.apk.y80
        /* renamed from: public */
        public int mo954public() {
            return R$layout.tr_sdk_item_userface_layout;
        }
    }

    public TrUserFaceLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_userface_dialog_layout, this);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.tr_sdk_userface_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new GridLayoutManager(getContext(), 5));
        Cdo cdo = new Cdo(getContext(), ha0.f1823try);
        recyclerView.setAdapter(cdo);
        cdo.f5875throw = new o90(cdo);
    }
}
