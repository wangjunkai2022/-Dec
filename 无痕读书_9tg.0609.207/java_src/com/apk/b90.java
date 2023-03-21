package com.apk;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.tr.comment.sdk.R$color;
import com.tr.comment.sdk.R$id;
import com.tr.comment.sdk.R$string;
import com.tr.comment.sdk.bean.TrCommentBean;
import com.tr.comment.sdk.commons.widget.TrExpandTextView;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MultiBaseAdapter.java */
/* loaded from: classes7.dex */
public abstract class b90<T> extends s80<T> {

    /* renamed from: import  reason: not valid java name */
    public ArrayList<r90<T>> f272import;

    /* renamed from: throw  reason: not valid java name */
    public da0<T> f273throw;

    /* renamed from: while  reason: not valid java name */
    public ArrayList<Integer> f274while;

    public b90(Context context, List<T> list, boolean z) {
        super(context, list, z);
        this.f274while = new ArrayList<>();
        this.f272import = new ArrayList<>();
    }

    /* renamed from: native  reason: not valid java name */
    public void m160native(int i, r90<T> r90Var) {
        this.f274while.add(Integer.valueOf(i));
        this.f272import.add(r90Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        int itemViewType = viewHolder.getItemViewType();
        if (m2387catch(itemViewType)) {
            int m2389const = i - m2389const();
            r80 r80Var = (r80) viewHolder;
            i80 i80Var = (i80) this;
            TrCommentBean trCommentBean = (TrCommentBean) this.f4308new.get(m2389const);
            if (itemViewType == 1) {
                FrameLayout frameLayout = (FrameLayout) r80Var.itemView;
                if (frameLayout.getChildCount() > 0) {
                    frameLayout.removeAllViews();
                }
                cb0 m325else = cb0.m325else();
                m325else.m327for(frameLayout, m325else.m328if(i80Var.f2064native, m2389const));
            } else if (itemViewType == 2) {
                FrameLayout frameLayout2 = (FrameLayout) r80Var.itemView;
                if (frameLayout2.getChildCount() > 0) {
                    frameLayout2.removeAllViews();
                }
                cb0 m325else2 = cb0.m325else();
                m325else2.m327for(frameLayout2, m325else2.m329new(i80Var.f2064native, m2389const));
            } else {
                int i2 = R$id.tr_sdk_item_reply_tv;
                int i3 = R$string.tr_sdk_comment_reply_txt;
                Object[] objArr = new Object[1];
                objArr[0] = trCommentBean.getRepliesCount() != 0 ? Integer.valueOf(trCommentBean.getRepliesCount()) : "";
                r80Var.m2254new(i2, k40.m1438case(i3, objArr));
                r80Var.m2253for(R$id.tr_sdk_item_avatar_iv, ha0.m1106do(trCommentBean.getUserFace()));
                r80Var.m2254new(R$id.tr_sdk_item_author_tv, trCommentBean.getUserName());
                r80Var.m2254new(R$id.tr_sdk_item_data_tv, trCommentBean.isUserAdd() ? k40.m1467while(R$string.tr_sdk_comment_reply_date_just) : k40.m1465throws(trCommentBean.getUpdateTime()));
                ((TrExpandTextView) r80Var.m2252do(R$id.tr_sdk_item_content_tv)).setText(la0.m1617if(i80Var.f4305for, trCommentBean.getContent()));
                ImageView imageView = (ImageView) r80Var.m2252do(R$id.tr_sdk_item_like_iv);
                TextView textView = (TextView) r80Var.m2252do(R$id.tr_sdk_item_like_tv);
                textView.setText(trCommentBean.getCommendCount() > 0 ? trCommentBean.getCommendCount() + "" : k40.m1467while(R$string.tr_sdk_comment_like_txt));
                if (trCommentBean.isLike()) {
                    imageView.setSelected(true);
                    textView.setSelected(true);
                } else {
                    imageView.setSelected(false);
                    textView.setSelected(false);
                }
                if (trCommentBean.isUserAdd()) {
                    r80Var.itemView.setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_05000000));
                } else {
                    r80Var.itemView.setBackgroundColor(k40.m1444do(R$color.tr_sdk_comment_00000000));
                }
            }
            r80Var.f4018if.setOnClickListener(new z80(this, r80Var, m2389const, itemViewType));
            for (int i4 = 0; i4 < this.f274while.size(); i4++) {
                if (r80Var.f4018if.findViewById(this.f274while.get(i4).intValue()) != null) {
                    r80Var.f4018if.findViewById(this.f274while.get(i4).intValue()).setOnClickListener(new a90(this, i4, r80Var, m2389const));
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        if (m2387catch(i)) {
            return r80.m2251if(this.f4305for, mo161public(i), viewGroup);
        }
        return super.m2392for(viewGroup, i);
    }

    /* renamed from: public  reason: not valid java name */
    public abstract int mo161public(int i);
}
