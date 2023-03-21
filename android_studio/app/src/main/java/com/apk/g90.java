package com.apk;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.badge.BadgeDrawable;
import com.tr.comment.sdk.R$array;
import com.tr.comment.sdk.R$drawable;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.R$style;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.commons.widget.view.TrFullyLinearLayoutManager;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TrFeedBackLayout.java */
/* loaded from: classes7.dex */
public class g90 extends FrameLayout {

    /* renamed from: do  reason: not valid java name */
    public ImageView f1532do;

    /* renamed from: for  reason: not valid java name */
    public TrCommentBean f1533for;

    /* renamed from: if  reason: not valid java name */
    public ImageView f1534if;

    /* renamed from: new  reason: not valid java name */
    public o80 f1535new;

    /* renamed from: try  reason: not valid java name */
    public PopupWindow f1536try;

    /* compiled from: TrFeedBackLayout.java */
    /* renamed from: com.apk.g90$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements PopupWindow.OnDismissListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ Activity f1537do;

        public Cdo(Activity activity) {
            this.f1537do = activity;
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            Activity activity = this.f1537do;
            if (activity != null) {
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                attributes.alpha = 1.0f;
                activity.getWindow().setAttributes(attributes);
            }
        }
    }

    /* compiled from: TrFeedBackLayout.java */
    /* renamed from: com.apk.g90$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends y80<String> {
        public Cif(Context context, List<String> list) {
            super(context, list, false);
        }

        @Override // com.apk.y80
        /* renamed from: native  reason: not valid java name */
        public void mo953native(r80 r80Var, String str, int i) {
            r80Var.m2254new(R$id.tr_sdk_feedback_item_name, str);
        }

        @Override // com.apk.y80
        /* renamed from: public  reason: not valid java name */
        public int mo954public() {
            return R$layout.tr_sdk_feedback_item_layout;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g90(@NonNull Context context) {
        super(context, null, 0);
        LayoutInflater.from(getContext()).inflate(R$layout.tr_sdk_comment_feedback_layout, this);
        this.f1532do = (ImageView) findViewById(R$id.tr_sdk_feedback_top_jt);
        this.f1534if = (ImageView) findViewById(R$id.tr_sdk_feedback_bottom_jt);
        RecyclerView recyclerView = (RecyclerView) findViewById(R$id.tr_sdk_comment_facekeyboard_rv);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new TrFullyLinearLayoutManager(getContext()));
        k40.m1449for(getContext(), recyclerView);
        String[] stringArray = getResources().getStringArray(R$array.tr_sdk_feedback_values);
        ArrayList arrayList = new ArrayList();
        if (stringArray != null && stringArray.length > 0) {
            for (String str : stringArray) {
                arrayList.add(str);
            }
        }
        Cif cif = new Cif(getContext(), arrayList);
        recyclerView.setAdapter(cif);
        cif.f5875throw = new f90(this);
        if (fa0.m760extends()) {
            this.f1532do.setImageResource(R$drawable.tr_sdk_comment_top_jt_night);
            this.f1534if.setImageResource(R$drawable.tr_sdk_comment_bottom_jt_night);
            recyclerView.setBackgroundResource(R$drawable.tr_sdk_center_dialog_bg_night);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public void m951do(Activity activity, g90 g90Var, View view) {
        if (activity != null) {
            try {
                WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
                attributes.alpha = 0.5f;
                activity.getWindow().setAttributes(attributes);
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        PopupWindow popupWindow = new PopupWindow((View) g90Var, -1, -2, true);
        this.f1536try = popupWindow;
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        this.f1536try.setAnimationStyle(R$style.tr_sdk_comment_popwindow_anim_style);
        vb0 m2415if = sb0.m2415if(view, g90Var);
        if (m2415if.f5061do) {
            ImageView imageView = this.f1534if;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        } else {
            ImageView imageView2 = this.f1532do;
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
        }
        int[] iArr = m2415if.f5062if;
        iArr[0] = iArr[0] - 20;
        this.f1536try.showAtLocation(view, BadgeDrawable.TOP_START, iArr[0], iArr[1]);
        this.f1536try.setOnDismissListener(new Cdo(activity));
    }

    /* renamed from: if  reason: not valid java name */
    public void m952if(TrCommentBean trCommentBean, o80 o80Var) {
        if (trCommentBean != null) {
            this.f1533for = trCommentBean;
        }
        if (o80Var != null) {
            this.f1535new = o80Var;
        }
    }
}
