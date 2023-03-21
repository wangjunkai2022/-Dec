package butterknife.internal;

import java.util.AbstractList;
import java.util.RandomAccess;

/* loaded from: classes8.dex */
public final class ImmutableList<T> extends AbstractList<T> implements RandomAccess {
    public final T[] views;

    public ImmutableList(T[] tArr) {
        this.views = tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        for (T t : this.views) {
            if (t == obj) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public T get(int i) {
        return this.views[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.views.length;
    }
}
