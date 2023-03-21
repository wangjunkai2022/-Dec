package com.chad.library.adapter.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.IExpandable;
import com.chad.library.adapter.base.entity.SectionMultiEntity;
import java.util.List;
/* loaded from: classes8.dex */
public abstract class BaseSectionMultiItemQuickAdapter<T extends SectionMultiEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    public static final int DEFAULT_VIEW_TYPE = -255;
    public static final int SECTION_HEADER_VIEW = 1092;
    public static final int TYPE_NOT_FOUND = -404;
    public SparseIntArray layouts;
    public int mSectionHeadResId;

    public BaseSectionMultiItemQuickAdapter(int i, List<T> list) {
        super(list);
        this.mSectionHeadResId = i;
    }

    private int getLayoutId(int i) {
        return this.layouts.get(i, -404);
    }

    public void addItemType(int i, @LayoutRes int i2) {
        if (this.layouts == null) {
            this.layouts = new SparseIntArray();
        }
        this.layouts.put(i, i2);
    }

    public abstract void convertHead(K k, T t);

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public int getDefItemViewType(int i) {
        SectionMultiEntity sectionMultiEntity = (SectionMultiEntity) this.mData.get(i);
        if (sectionMultiEntity != null) {
            if (sectionMultiEntity.isHeader) {
                return 1092;
            }
            return sectionMultiEntity.getItemType();
        }
        return -255;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int i) {
        return super.isFixedViewType(i) || i == 1092;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((BaseSectionMultiItemQuickAdapter<T, K>) ((BaseViewHolder) viewHolder), i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1092) {
            return createBaseViewHolder(getItemView(this.mSectionHeadResId, viewGroup));
        }
        return createBaseViewHolder(viewGroup, getLayoutId(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void remove(@IntRange(from = 0) int i) {
        List<T> list = this.mData;
        if (list == 0 || i < 0 || i >= list.size()) {
            return;
        }
        SectionMultiEntity sectionMultiEntity = (SectionMultiEntity) this.mData.get(i);
        if (sectionMultiEntity instanceof IExpandable) {
            removeAllChild((IExpandable) sectionMultiEntity, i);
        }
        removeDataFromParent(sectionMultiEntity);
        super.remove(i);
    }

    public void removeAllChild(IExpandable iExpandable, int i) {
        List subItems;
        if (!iExpandable.isExpanded() || (subItems = iExpandable.getSubItems()) == null || subItems.size() == 0) {
            return;
        }
        int size = subItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            remove(i + 1);
        }
    }

    public void removeDataFromParent(T t) {
        int parentPosition = getParentPosition(t);
        if (parentPosition >= 0) {
            ((IExpandable) this.mData.get(parentPosition)).getSubItems().remove(t);
        }
    }

    public void setDefaultViewTypeLayout(@LayoutRes int i) {
        addItemType(-255, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void onBindViewHolder(@NonNull K k, int i) {
        if (k.getItemViewType() == 1092) {
            setFullSpan(k);
            convertHead(k, (SectionMultiEntity) getItem(i - getHeaderLayoutCount()));
            return;
        }
        super.onBindViewHolder((BaseSectionMultiItemQuickAdapter<T, K>) k, i);
    }
}
