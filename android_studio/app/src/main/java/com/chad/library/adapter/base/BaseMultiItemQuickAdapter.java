package com.chad.library.adapter.base;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.IExpandable;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.util.List;

/* loaded from: classes8.dex */
public abstract class BaseMultiItemQuickAdapter<T extends MultiItemEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    public static final int DEFAULT_VIEW_TYPE = -255;
    public static final int TYPE_NOT_FOUND = -404;
    public SparseIntArray layouts;
    public SparseArray<View> views;

    public BaseMultiItemQuickAdapter(List<T> list) {
        super(list);
    }

    private int getLayoutId(int i) {
        return this.layouts.get(i, -404);
    }

    private View getLayoutView(int i) {
        return this.views.get(i, null);
    }

    public void addItemType(int i, @LayoutRes int i2) {
        if (this.layouts == null) {
            this.layouts = new SparseIntArray();
        }
        this.layouts.put(i, i2);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public int getDefItemViewType(int i) {
        MultiItemEntity multiItemEntity = (MultiItemEntity) this.mData.get(i);
        if (multiItemEntity != null) {
            return multiItemEntity.getItemType();
        }
        return -255;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (getLayoutId(i) == -404) {
            return createBaseViewHolder(getLayoutView(i));
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
        MultiItemEntity multiItemEntity = (MultiItemEntity) this.mData.get(i);
        if (multiItemEntity instanceof IExpandable) {
            removeAllChild((IExpandable) multiItemEntity, i);
        }
        removeDataFromParent(multiItemEntity);
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

    public void addItemType(int i, @Nullable View view) {
        if (this.views == null) {
            this.views = new SparseArray<>();
        }
        this.views.put(i, view);
    }
}
