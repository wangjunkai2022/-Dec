package com.lxj.xpopup.impl;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.xv;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.AttachPopupView;
import com.lxj.xpopup.widget.VerticalRecyclerView;
import java.util.Arrays;

/* loaded from: classes8.dex */
public class AttachListPopupView extends AttachPopupView {

    /* renamed from: class  reason: not valid java name */
    public RecyclerView f9535class;

    /* renamed from: const  reason: not valid java name */
    public int f9536const;

    /* renamed from: final  reason: not valid java name */
    public int f9537final;

    /* renamed from: super  reason: not valid java name */
    public String[] f9538super;

    /* renamed from: throw  reason: not valid java name */
    public int[] f9539throw;

    /* renamed from: while  reason: not valid java name */
    public xv f9540while;

    /* renamed from: com.lxj.xpopup.impl.AttachListPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Cif f9541do;

        public Cdo(Cif cif) {
            this.f9541do = cif;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            xv xvVar = AttachListPopupView.this.f9540while;
            if (xvVar != null) {
                xvVar.mo15do(i, this.f9541do.getItem(i));
            }
            if (AttachListPopupView.this.popupInfo.f2930new.booleanValue()) {
                AttachListPopupView.this.dismiss();
            }
        }
    }

    /* renamed from: com.lxj.xpopup.impl.AttachListPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends BaseQuickAdapter<String, BaseViewHolder> {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Cif(@androidx.annotation.Nullable java.util.List<java.lang.String> r2) {
            /*
                r0 = this;
                com.lxj.xpopup.impl.AttachListPopupView.this = r1
                int r1 = r1.f9537final
                if (r1 != 0) goto L8
                int r1 = com.codelibrary.R$layout._xpopup_adapter_item_layout
            L8:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.lxj.xpopup.impl.AttachListPopupView.Cif.<init>(com.lxj.xpopup.impl.AttachListPopupView, java.util.List):void");
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, String str) {
            int layoutPosition = baseViewHolder.getLayoutPosition();
            baseViewHolder.setText(R$id.tv_text, str);
            int[] iArr = AttachListPopupView.this.f9539throw;
            if (iArr != null && iArr.length > layoutPosition) {
                baseViewHolder.getView(R$id.iv_image).setVisibility(0);
                baseViewHolder.getView(R$id.iv_image).setBackgroundResource(AttachListPopupView.this.f9539throw[layoutPosition]);
            } else {
                baseViewHolder.getView(R$id.iv_image).setVisibility(8);
            }
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_text);
            AttachListPopupView attachListPopupView = AttachListPopupView.this;
            textView.setTextColor(attachListPopupView.popupInfo.f2917continue ? attachListPopupView.getResources().getColor(R$color._xpopup_white_color) : attachListPopupView.getResources().getColor(R$color._xpopup_content_color));
            baseViewHolder.getView(R$id.xpopup_divider).setVisibility(8);
        }
    }

    public AttachListPopupView(@NonNull Context context, int i, int i2) {
        super(context);
        this.f9536const = i;
        this.f9537final = i2;
        addInnerContent();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        ((VerticalRecyclerView) this.f9535class).setupDivider(Boolean.TRUE);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        ((VerticalRecyclerView) this.f9535class).setupDivider(Boolean.FALSE);
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        int i = this.f9536const;
        return i == 0 ? R$layout._xpopup_attach_list_layout : i;
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void onCreate() {
        super.onCreate();
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recyclerView);
        this.f9535class = recyclerView;
        if (this.f9536const != 0) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        Cif cif = new Cif(Arrays.asList(this.f9538super));
        cif.setOnItemClickListener(new Cdo(cif));
        this.f9535class.setAdapter(cif);
        if (this.f9536const == 0) {
            if (this.popupInfo.f2917continue) {
                applyDarkTheme();
            } else {
                applyLightTheme();
            }
        }
    }
}
