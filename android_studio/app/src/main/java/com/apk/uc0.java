package com.apk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: _Arrays.kt */
/* loaded from: classes7.dex */
public class uc0 extends tc0 {
    @NotNull
    /* renamed from: break  reason: not valid java name */
    public static final <T> List<T> m2692break(@NotNull Collection<? extends T> collection) {
        nd0.m1875new(collection, "$this$toMutableList");
        return new ArrayList(collection);
    }

    @NotNull
    /* renamed from: case  reason: not valid java name */
    public static final <T, A extends Appendable> A m2693case(@NotNull Iterable<? extends T> iterable, @NotNull A a2, @NotNull CharSequence charSequence, @NotNull CharSequence charSequence2, @NotNull CharSequence charSequence3, int i, @NotNull CharSequence charSequence4, @Nullable id0<? super T, ? extends CharSequence> id0Var) {
        nd0.m1875new(iterable, "$this$joinTo");
        nd0.m1875new(a2, "buffer");
        nd0.m1875new(charSequence, "separator");
        nd0.m1875new(charSequence2, "prefix");
        nd0.m1875new(charSequence3, "postfix");
        nd0.m1875new(charSequence4, "truncated");
        a2.append(charSequence2);
        int i2 = 0;
        for (T t : iterable) {
            i2++;
            if (i2 > 1) {
                a2.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            sb0.m2402case(a2, t, id0Var);
        }
        if (i >= 0 && i2 > i) {
            a2.append(charSequence4);
        }
        a2.append(charSequence3);
        return a2;
    }

    @NotNull
    /* renamed from: do  reason: not valid java name */
    public static final <T> List<T> m2694do(@NotNull T[] tArr) {
        nd0.m1875new(tArr, "$this$asList");
        List<T> asList = Arrays.asList(tArr);
        nd0.m1872for(asList, "ArraysUtilJVM.asList(this)");
        return asList;
    }

    @NotNull
    /* renamed from: else  reason: not valid java name */
    public static final <T> List<T> m2695else(@NotNull Collection<? extends T> collection, @NotNull Iterable<? extends T> iterable) {
        nd0.m1875new(collection, "$this$plus");
        nd0.m1875new(iterable, "elements");
        if (iterable instanceof Collection) {
            Collection collection2 = (Collection) iterable;
            ArrayList arrayList = new ArrayList(collection2.size() + collection.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        sb0.m2421new(arrayList2, iterable);
        return arrayList2;
    }

    /* renamed from: for  reason: not valid java name */
    public static /* synthetic */ byte[] m2696for(byte[] bArr, byte[] bArr2, int i, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = bArr.length;
        }
        m2698if(bArr, bArr2, i, i2, i3);
        return bArr2;
    }

    @NotNull
    /* renamed from: goto  reason: not valid java name */
    public static final <T, C extends Collection<? super T>> C m2697goto(@NotNull Iterable<? extends T> iterable, @NotNull C c) {
        nd0.m1875new(iterable, "$this$toCollection");
        nd0.m1875new(c, "destination");
        for (T t : iterable) {
            c.add(t);
        }
        return c;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    /* renamed from: if  reason: not valid java name */
    public static final byte[] m2698if(@NotNull byte[] bArr, @NotNull byte[] bArr2, int i, int i2, int i3) {
        nd0.m1875new(bArr, "$this$copyInto");
        nd0.m1875new(bArr2, "destination");
        System.arraycopy(bArr, i2, bArr2, i, i3 - i2);
        return bArr2;
    }

    @SinceKotlin(version = "1.3")
    @JvmName(name = "copyOfRange")
    @NotNull
    @PublishedApi
    /* renamed from: new  reason: not valid java name */
    public static final byte[] m2699new(@NotNull byte[] bArr, int i, int i2) {
        nd0.m1875new(bArr, "$this$copyOfRangeImpl");
        int length = bArr.length;
        if (i2 <= length) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, i, i2);
            nd0.m1872for(copyOfRange, "java.util.Arrays.copyOfR…this, fromIndex, toIndex)");
            return copyOfRange;
        }
        throw new IndexOutOfBoundsException("toIndex (" + i2 + ") is greater than size (" + length + ").");
    }

    @NotNull
    /* renamed from: this  reason: not valid java name */
    public static final <T> List<T> m2700this(@NotNull Iterable<? extends T> iterable) {
        List list;
        nd0.m1875new(iterable, "$this$toList");
        boolean z = iterable instanceof Collection;
        if (z) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return m2692break(collection);
                }
                return sb0.m2406continue(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
            }
            return xc0.f5512do;
        }
        nd0.m1875new(iterable, "$this$toMutableList");
        if (z) {
            list = m2692break((Collection) iterable);
        } else {
            ArrayList arrayList = new ArrayList();
            m2697goto(iterable, arrayList);
            list = arrayList;
        }
        return sb0.a(list);
    }

    /* renamed from: try  reason: not valid java name */
    public static final <T> T m2701try(@NotNull List<? extends T> list) {
        nd0.m1875new(list, "$this$first");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }
}
