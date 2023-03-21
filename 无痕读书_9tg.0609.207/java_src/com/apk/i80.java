package com.apk;

import android.app.Activity;
import com.tr.comment.sdk.R$layout;
import com.tr.comment.sdk.bean.TrCommentBean;
import java.util.List;
/* compiled from: TrCommentAdapter.java */
/* loaded from: classes7.dex */
public class i80 extends b90<TrCommentBean> {

    /* renamed from: native  reason: not valid java name */
    public final Activity f2064native;

    public i80(Activity activity, List<TrCommentBean> list, boolean z) {
        super(activity, null, z);
        this.f2064native = activity;
    }

    @Override // com.apk.s80
    /* renamed from: do  reason: not valid java name */
    public int mo1185do(int i, Object obj) {
        return ((TrCommentBean) obj).getItemType();
    }

    @Override // com.apk.b90
    /* renamed from: public */
    public int mo161public(int i) {
        if (i == 1) {
            return R$layout.tr_sdk_gg_item_layout;
        }
        if (i == 2) {
            return R$layout.tr_sdk_gg_item_layout;
        }
        return R$layout.tr_sdk_item_comment_view;
    }

    /* renamed from: return  reason: not valid java name */
    public void m1186return(int i) {
        try {
            m2395new(i).setCommendCount(m2395new(i).getCommendCount() + 1);
            m2395new(i).setLike(true);
            notifyDataSetChanged();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
