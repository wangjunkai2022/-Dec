package com.chad.library.adapter.base;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.SectionEntity;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class BaseSectionQuickAdapter<T extends SectionEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    public static final int SECTION_HEADER_VIEW = 1092;
    public int mSectionHeadResId;

    public BaseSectionQuickAdapter(int i, int i2, List<T> list) {
        super(i, list);
        this.mSectionHeadResId = i2;
    }

    public abstract void convertHead(K k, T t);

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public int getDefItemViewType(int i) {
        return ((SectionEntity) this.mData.get(i)).isHeader ? 1092 : 0;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int i) {
        return super.isFixedViewType(i) || i == 1092;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((BaseSectionQuickAdapter<T, K>) ((BaseViewHolder) viewHolder), i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1092) {
            return createBaseViewHolder(getItemView(this.mSectionHeadResId, viewGroup));
        }
        return (K) super.onCreateDefViewHolder(viewGroup, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NonNull K k, int i) {
        if (k.getItemViewType() == 1092) {
            setFullSpan(k);
            convertHead(k, (SectionEntity) getItem(i - getHeaderLayoutCount()));
            return;
        }
        super.onBindViewHolder((BaseSectionQuickAdapter<T, K>) k, i);
    }
}
