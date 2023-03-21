package com.lxj.xpopup.impl;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.xv;
import com.apk.zu;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.CenterPopupView;
import com.lxj.xpopup.widget.CheckView;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes8.dex */
public class CenterListPopupView extends CenterPopupView {

    /* renamed from: case  reason: not valid java name */
    public xv f9559case;

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f9560do;

    /* renamed from: else  reason: not valid java name */
    public int f9561else;

    /* renamed from: for  reason: not valid java name */
    public CharSequence f9562for;

    /* renamed from: if  reason: not valid java name */
    public TextView f9563if;

    /* renamed from: new  reason: not valid java name */
    public String[] f9564new;

    /* renamed from: try  reason: not valid java name */
    public int[] f9565try;

    /* renamed from: com.lxj.xpopup.impl.CenterListPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Cif f9566do;

        public Cdo(Cif cif) {
            this.f9566do = cif;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (CenterListPopupView.this.f9559case != null && i >= 0 && i < baseQuickAdapter.getData().size()) {
                CenterListPopupView.this.f9559case.mo15do(i, this.f9566do.getItem(i));
            }
            CenterListPopupView centerListPopupView = CenterListPopupView.this;
            if (centerListPopupView.f9561else != -1) {
                centerListPopupView.f9561else = i;
                baseQuickAdapter.notifyDataSetChanged();
            }
            if (CenterListPopupView.this.popupInfo.f2930new.booleanValue()) {
                CenterListPopupView.this.dismiss();
            }
        }
    }

    /* renamed from: com.lxj.xpopup.impl.CenterListPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif extends BaseQuickAdapter<String, BaseViewHolder> {
        public Cif(@Nullable List<String> list) {
            super(CenterListPopupView.this.bindItemLayoutId == 0 ? R$layout._xpopup_adapter_item_layout : CenterListPopupView.this.bindItemLayoutId, list);
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, String str) {
            int color;
            int color2;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            baseViewHolder.setText(R$id.tv_text, str);
            int[] iArr = CenterListPopupView.this.f9565try;
            if (iArr != null && iArr.length > layoutPosition) {
                baseViewHolder.getView(R$id.iv_image).setVisibility(0);
                baseViewHolder.getView(R$id.iv_image).setBackgroundResource(CenterListPopupView.this.f9565try[layoutPosition]);
            } else {
                baseViewHolder.getView(R$id.iv_image).setVisibility(8);
            }
            if (CenterListPopupView.this.f9561else != -1 && baseViewHolder.getView(R$id.check_view) != null) {
                baseViewHolder.getView(R$id.check_view).setVisibility(layoutPosition != CenterListPopupView.this.f9561else ? 4 : 0);
                ((CheckView) baseViewHolder.getView(R$id.check_view)).setColor(zu.f6262do);
            }
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_text);
            CenterListPopupView centerListPopupView = CenterListPopupView.this;
            if (layoutPosition == centerListPopupView.f9561else) {
                color = zu.f6262do;
            } else if (centerListPopupView.popupInfo.f2917continue) {
                color = centerListPopupView.getResources().getColor(R$color._xpopup_white_color);
            } else {
                color = centerListPopupView.getResources().getColor(R$color._xpopup_content_color);
            }
            textView.setTextColor(color);
            View view = baseViewHolder.getView(R$id.xpopup_divider);
            CenterListPopupView centerListPopupView2 = CenterListPopupView.this;
            if (centerListPopupView2.popupInfo.f2917continue) {
                color2 = centerListPopupView2.getResources().getColor(R$color._xpopup_list_dark_divider);
            } else {
                color2 = centerListPopupView2.getResources().getColor(R$color._xpopup_list_divider);
            }
            view.setBackgroundColor(color2);
            if (layoutPosition == CenterListPopupView.this.f9564new.length - 1) {
                baseViewHolder.getView(R$id.xpopup_divider).setVisibility(4);
            }
        }
    }

    public CenterListPopupView(@NonNull Context context, int i, int i2) {
        super(context);
        this.f9561else = -1;
        this.bindLayoutId = i;
        this.bindItemLayoutId = i2;
        addInnerContent();
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        this.f9563if.setTextColor(getResources().getColor(R$color._xpopup_white_color));
        findViewById(R$id.xpopup_divider).setBackgroundColor(getResources().getColor(R$color._xpopup_list_dark_divider));
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        this.f9563if.setTextColor(getResources().getColor(R$color._xpopup_dark_color));
        findViewById(R$id.xpopup_divider).setBackgroundColor(getResources().getColor(R$color._xpopup_list_divider));
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        int i = this.bindLayoutId;
        return i == 0 ? R$layout._xpopup_center_impl_list : i;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public int getMaxWidth() {
        int i = this.popupInfo.f2915class;
        return i == 0 ? (int) (super.getMaxWidth() * 0.8f) : i;
    }

    @Override // com.lxj.xpopup.core.CenterPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recyclerView);
        this.f9560do = recyclerView;
        if (this.bindLayoutId != 0) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        TextView textView = (TextView) findViewById(R$id.tv_title);
        this.f9563if = textView;
        if (textView != null) {
            if (TextUtils.isEmpty(this.f9562for)) {
                this.f9563if.setVisibility(8);
                if (findViewById(R$id.xpopup_divider) != null) {
                    findViewById(R$id.xpopup_divider).setVisibility(8);
                }
            } else {
                this.f9563if.setText(this.f9562for);
            }
        }
        Cif cif = new Cif(Arrays.asList(this.f9564new));
        cif.setOnItemClickListener(new Cdo(cif));
        this.f9560do.setAdapter(cif);
        applyTheme();
    }
}
