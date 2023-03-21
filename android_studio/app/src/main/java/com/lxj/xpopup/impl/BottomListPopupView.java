package com.lxj.xpopup.impl;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.pw;
import com.apk.xv;
import com.apk.zu;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.codelibrary.R$color;
import com.codelibrary.R$id;
import com.codelibrary.R$layout;
import com.lxj.xpopup.core.BottomPopupView;
import com.lxj.xpopup.widget.CheckView;
import com.lxj.xpopup.widget.VerticalRecyclerView;
import java.util.Arrays;

/* loaded from: classes8.dex */
public class BottomListPopupView extends BottomPopupView {

    /* renamed from: break  reason: not valid java name */
    public int f9544break;

    /* renamed from: case  reason: not valid java name */
    public CharSequence f9545case;

    /* renamed from: do  reason: not valid java name */
    public RecyclerView f9546do;

    /* renamed from: else  reason: not valid java name */
    public String[] f9547else;

    /* renamed from: for  reason: not valid java name */
    public LinearLayout f9548for;

    /* renamed from: goto  reason: not valid java name */
    public int[] f9549goto;

    /* renamed from: if  reason: not valid java name */
    public TextView f9550if;

    /* renamed from: new  reason: not valid java name */
    public int f9551new;

    /* renamed from: this  reason: not valid java name */
    public xv f9552this;

    /* renamed from: try  reason: not valid java name */
    public int f9553try;

    /* renamed from: com.lxj.xpopup.impl.BottomListPopupView$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            BottomListPopupView.this.dismiss();
        }
    }

    /* renamed from: com.lxj.xpopup.impl.BottomListPopupView$for  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cfor extends BaseQuickAdapter<String, BaseViewHolder> {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public Cfor(@androidx.annotation.Nullable java.util.List<java.lang.String> r2) {
            /*
                r0 = this;
                com.lxj.xpopup.impl.BottomListPopupView.this = r1
                int r1 = r1.f9553try
                if (r1 != 0) goto L8
                int r1 = com.codelibrary.R$layout._xpopup_adapter_item_layout
            L8:
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.lxj.xpopup.impl.BottomListPopupView.Cfor.<init>(com.lxj.xpopup.impl.BottomListPopupView, java.util.List):void");
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter
        public void convert(BaseViewHolder baseViewHolder, String str) {
            int color;
            int color2;
            int layoutPosition = baseViewHolder.getLayoutPosition();
            baseViewHolder.setText(R$id.tv_text, str);
            int[] iArr = BottomListPopupView.this.f9549goto;
            if (iArr != null && iArr.length > layoutPosition) {
                baseViewHolder.getView(R$id.iv_image).setVisibility(0);
                baseViewHolder.getView(R$id.iv_image).setBackgroundResource(BottomListPopupView.this.f9549goto[layoutPosition]);
            } else {
                baseViewHolder.getView(R$id.iv_image).setVisibility(8);
            }
            if (BottomListPopupView.this.f9544break != -1 && baseViewHolder.getView(R$id.check_view) != null) {
                baseViewHolder.getView(R$id.check_view).setVisibility(layoutPosition == BottomListPopupView.this.f9544break ? 0 : 8);
                ((CheckView) baseViewHolder.getView(R$id.check_view)).setColor(zu.f6262do);
            }
            TextView textView = (TextView) baseViewHolder.getView(R$id.tv_text);
            BottomListPopupView bottomListPopupView = BottomListPopupView.this;
            if (layoutPosition == bottomListPopupView.f9544break) {
                color = zu.f6262do;
            } else if (bottomListPopupView.popupInfo.f2917continue) {
                color = bottomListPopupView.getResources().getColor(R$color._xpopup_white_color);
            } else {
                color = bottomListPopupView.getResources().getColor(R$color._xpopup_content_color);
            }
            textView.setTextColor(color);
            View view = baseViewHolder.getView(R$id.xpopup_divider);
            BottomListPopupView bottomListPopupView2 = BottomListPopupView.this;
            if (bottomListPopupView2.popupInfo.f2917continue) {
                color2 = bottomListPopupView2.getResources().getColor(R$color._xpopup_list_dark_divider);
            } else {
                color2 = bottomListPopupView2.getResources().getColor(R$color._xpopup_list_divider);
            }
            view.setBackgroundColor(color2);
            if (layoutPosition == BottomListPopupView.this.f9547else.length - 1) {
                baseViewHolder.getView(R$id.xpopup_divider).setVisibility(4);
            }
        }
    }

    /* renamed from: com.lxj.xpopup.impl.BottomListPopupView$if  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cif implements BaseQuickAdapter.OnItemClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Cfor f9556do;

        /* renamed from: com.lxj.xpopup.impl.BottomListPopupView$if$do  reason: invalid class name */
        /* loaded from: classes8.dex */
        public class Cdo implements Runnable {
            public Cdo() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (BottomListPopupView.this.popupInfo.f2930new.booleanValue()) {
                    BottomListPopupView.this.dismiss();
                }
            }
        }

        public Cif(Cfor cfor) {
            this.f9556do = cfor;
        }

        @Override // com.chad.library.adapter.base.BaseQuickAdapter.OnItemClickListener
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            xv xvVar = BottomListPopupView.this.f9552this;
            if (xvVar != null) {
                xvVar.mo15do(i, this.f9556do.getItem(i));
            }
            BottomListPopupView bottomListPopupView = BottomListPopupView.this;
            if (bottomListPopupView.f9544break != -1) {
                bottomListPopupView.f9544break = i;
                baseQuickAdapter.notifyDataSetChanged();
            }
            BottomListPopupView.this.postDelayed(new Cdo(), 100L);
        }
    }

    public BottomListPopupView(@NonNull Context context, int i, int i2) {
        super(context);
        this.f9544break = -1;
        this.f9551new = i;
        this.f9553try = i2;
        addInnerContent();
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyDarkTheme() {
        super.applyDarkTheme();
        ((VerticalRecyclerView) this.f9546do).setupDivider(Boolean.TRUE);
        this.f9550if.setTextColor(getResources().getColor(R$color._xpopup_white_color));
        findViewById(R$id.xpopup_divider).setBackgroundColor(getResources().getColor(R$color._xpopup_list_dark_divider));
        RecyclerView recyclerView = this.f9546do;
        int color = getResources().getColor(R$color._xpopup_dark_color);
        float f = this.popupInfo.f2922final;
        recyclerView.setBackground(pw.m2083else(color, f, f, f, f));
        LinearLayout linearLayout = this.f9548for;
        int color2 = getResources().getColor(R$color._xpopup_dark_color);
        float f2 = this.popupInfo.f2922final;
        linearLayout.setBackground(pw.m2083else(color2, f2, f2, f2, f2));
    }

    @Override // com.lxj.xpopup.core.BasePopupView
    public void applyLightTheme() {
        super.applyLightTheme();
        ((VerticalRecyclerView) this.f9546do).setupDivider(Boolean.FALSE);
        this.f9550if.setTextColor(getResources().getColor(R$color._xpopup_dark_color));
        findViewById(R$id.xpopup_divider).setBackgroundColor(getResources().getColor(R$color._xpopup_list_divider));
        RecyclerView recyclerView = this.f9546do;
        int color = getResources().getColor(R$color._xpopup_light_color);
        float f = this.popupInfo.f2922final;
        recyclerView.setBackground(pw.m2083else(color, f, f, f, f));
        LinearLayout linearLayout = this.f9548for;
        int color2 = getResources().getColor(R$color._xpopup_light_color);
        float f2 = this.popupInfo.f2922final;
        linearLayout.setBackground(pw.m2083else(color2, f2, f2, f2, f2));
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public int getImplLayoutId() {
        int i = this.f9551new;
        return i == 0 ? R$layout._xpopup_bottom_impl_list : i;
    }

    @Override // com.lxj.xpopup.core.BottomPopupView, com.lxj.xpopup.core.BasePopupView
    public void initPopupContent() {
        super.initPopupContent();
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.recyclerView);
        this.f9546do = recyclerView;
        if (this.f9551new != 0) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        this.f9550if = (TextView) findViewById(R$id.tv_title);
        this.f9548for = (LinearLayout) findViewById(R$id.dialog_cancel_layout);
        findViewById(R$id.dialog_cancel).setOnClickListener(new Cdo());
        if (this.f9550if != null) {
            if (TextUtils.isEmpty(this.f9545case)) {
                this.f9550if.setVisibility(8);
                if (findViewById(R$id.xpopup_divider) != null) {
                    findViewById(R$id.xpopup_divider).setVisibility(8);
                }
            } else {
                this.f9550if.setText(this.f9545case);
            }
        }
        Cfor cfor = new Cfor(Arrays.asList(this.f9547else));
        cfor.setOnItemClickListener(new Cif(cfor));
        this.f9546do.setAdapter(cfor);
        if (this.f9551new == 0) {
            if (this.popupInfo.f2917continue) {
                applyDarkTheme();
            } else {
                applyLightTheme();
            }
        }
    }
}
