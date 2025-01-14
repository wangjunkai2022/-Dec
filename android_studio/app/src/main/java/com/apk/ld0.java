package com.apk;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: CollectionToArray.kt */
@JvmName(name = "CollectionToArray")
/* loaded from: classes7.dex */
public final class ld0 {

    /* renamed from: do  reason: not valid java name */
    public static final Object[] f2787do = new Object[0];

    @JvmName(name = "toArray")
    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final Object[] m1626do(@NotNull Collection<?> collection) {
        nd0.m1875new(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    objArr[i] = it.next();
                    if (i2 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i3 = ((i2 * 3) + 1) >>> 1;
                        if (i3 <= i2) {
                            if (i2 >= 2147483645) {
                                throw new OutOfMemoryError();
                            }
                            i3 = 2147483645;
                        }
                        objArr = Arrays.copyOf(objArr, i3);
                        nd0.m1872for(objArr, "Arrays.copyOf(result, newSize)");
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr, i2);
                        nd0.m1872for(copyOf, "Arrays.copyOf(result, size)");
                        return copyOf;
                    }
                    i = i2;
                }
            }
        }
        return f2787do;
    }

    @JvmName(name = "toArray")
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final Object[] m1627if(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        nd0.m1875new(collection, "collection");
        if (objArr != null) {
            int size = collection.size();
            int i = 0;
            if (size == 0) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                    return objArr;
                }
                return objArr;
            }
            Iterator<?> it = collection.iterator();
            if (!it.hasNext()) {
                if (objArr.length > 0) {
                    objArr[0] = null;
                    return objArr;
                }
                return objArr;
            }
            if (size <= objArr.length) {
                objArr2 = objArr;
            } else {
                Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
                if (newInstance == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                }
                objArr2 = (Object[]) newInstance;
            }
            while (true) {
                int i2 = i + 1;
                objArr2[i] = it.next();
                if (i2 >= objArr2.length) {
                    if (!it.hasNext()) {
                        return objArr2;
                    }
                    int i3 = ((i2 * 3) + 1) >>> 1;
                    if (i3 <= i2) {
                        if (i2 >= 2147483645) {
                            throw new OutOfMemoryError();
                        }
                        i3 = 2147483645;
                    }
                    objArr2 = Arrays.copyOf(objArr2, i3);
                    nd0.m1872for(objArr2, "Arrays.copyOf(result, newSize)");
                } else if (!it.hasNext()) {
                    if (objArr2 == objArr) {
                        objArr[i2] = null;
                        return objArr;
                    }
                    Object[] copyOf = Arrays.copyOf(objArr2, i2);
                    nd0.m1872for(copyOf, "Arrays.copyOf(result, size)");
                    return copyOf;
                }
                i = i2;
            }
        } else {
            throw null;
        }
    }
}
