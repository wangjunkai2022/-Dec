package com.apk;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: Strings.kt */
/* loaded from: classes7.dex */
public final class ke0 extends od0 implements jd0<CharSequence, Integer, jc0<? extends Integer, ? extends Integer>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ List f2522do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2523if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ke0(List list, boolean z) {
        super(2);
        this.f2522do = list;
        this.f2523if = z;
    }

    @Override // com.apk.jd0
    /* renamed from: for */
    public jc0<? extends Integer, ? extends Integer> mo1309for(CharSequence charSequence, Integer num) {
        Object obj;
        jc0 jc0Var;
        Object obj2;
        CharSequence charSequence2 = charSequence;
        int intValue = num.intValue();
        nd0.m1875new(charSequence2, "$receiver");
        List list = this.f2522do;
        boolean z = this.f2523if;
        if (!z && list.size() == 1) {
            nd0.m1875new(list, "$this$single");
            nd0.m1875new(list, "$this$single");
            int size = list.size();
            if (size == 0) {
                throw new NoSuchElementException("List is empty.");
            }
            if (size == 1) {
                String str = (String) list.get(0);
                int m1189break = ie0.m1189break(charSequence2, str, intValue, false, 4);
                if (m1189break >= 0) {
                    jc0Var = new jc0(Integer.valueOf(m1189break), str);
                }
                jc0Var = null;
            } else {
                throw new IllegalArgumentException("List has more than one element.");
            }
        } else {
            if (intValue < 0) {
                intValue = 0;
            }
            xd0 xd0Var = new xd0(intValue, charSequence2.length());
            if (charSequence2 instanceof String) {
                int i = xd0Var.f5067do;
                int i2 = xd0Var.f5069if;
                int i3 = xd0Var.f5068for;
                if (i3 < 0 ? i >= i2 : i <= i2) {
                    while (true) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                obj2 = null;
                                break;
                            }
                            obj2 = it.next();
                            String str2 = (String) obj2;
                            if (ie0.m1197final(str2, 0, (String) charSequence2, i, str2.length(), z)) {
                                break;
                            }
                        }
                        String str3 = (String) obj2;
                        if (str3 == null) {
                            if (i == i2) {
                                break;
                            }
                            i += i3;
                        } else {
                            jc0Var = new jc0(Integer.valueOf(i), str3);
                            break;
                        }
                    }
                }
                jc0Var = null;
            } else {
                int i4 = xd0Var.f5067do;
                int i5 = xd0Var.f5069if;
                int i6 = xd0Var.f5068for;
                if (i6 < 0 ? i4 >= i5 : i4 <= i5) {
                    while (true) {
                        Iterator it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                obj = null;
                                break;
                            }
                            obj = it2.next();
                            String str4 = (String) obj;
                            if (ie0.m1207super(str4, 0, charSequence2, i4, str4.length(), z)) {
                                break;
                            }
                        }
                        String str5 = (String) obj;
                        if (str5 == null) {
                            if (i4 == i5) {
                                break;
                            }
                            i4 += i6;
                        } else {
                            jc0Var = new jc0(Integer.valueOf(i4), str5);
                            break;
                        }
                    }
                }
                jc0Var = null;
            }
        }
        if (jc0Var != null) {
            return new jc0<>(jc0Var.f2309do, Integer.valueOf(((String) jc0Var.f2310if).length()));
        }
        return null;
    }
}
