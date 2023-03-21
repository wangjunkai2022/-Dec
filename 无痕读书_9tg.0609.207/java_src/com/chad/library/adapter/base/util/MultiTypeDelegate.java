package com.chad.library.adapter.base.util;

import android.util.SparseIntArray;
import androidx.annotation.LayoutRes;
import java.util.List;
/* loaded from: classes8.dex */
public abstract class MultiTypeDelegate<T> {
    public static final int DEFAULT_VIEW_TYPE = -255;
    public boolean autoMode;
    public SparseIntArray layouts;
    public boolean selfMode;

    public MultiTypeDelegate(SparseIntArray sparseIntArray) {
        this.layouts = sparseIntArray;
    }

    private void addItemType(int i, @LayoutRes int i2) {
        if (this.layouts == null) {
            this.layouts = new SparseIntArray();
        }
        this.layouts.put(i, i2);
    }

    private void checkMode(boolean z) {
        if (z) {
            throw new IllegalArgumentException("Don't mess two register mode");
        }
    }

    public final int getDefItemViewType(List<T> list, int i) {
        T t = list.get(i);
        if (t != null) {
            return getItemType(t);
        }
        return -255;
    }

    public abstract int getItemType(T t);

    public final int getLayoutId(int i) {
        int i2 = this.layouts.get(i, -404);
        if (i2 != -404) {
            return i2;
        }
        throw new IllegalStateException("please use registerItemType() first!");
    }

    public MultiTypeDelegate registerItemType(int i, @LayoutRes int i2) {
        this.selfMode = true;
        checkMode(this.autoMode);
        addItemType(i, i2);
        return this;
    }

    public MultiTypeDelegate registerItemTypeAutoIncrease(@LayoutRes int... iArr) {
        this.autoMode = true;
        checkMode(this.selfMode);
        for (int i = 0; i < iArr.length; i++) {
            addItemType(i, iArr[i]);
        }
        return this;
    }

    public MultiTypeDelegate() {
    }
}
