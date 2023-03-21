package org.junit.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Comparator;
import org.junit.FixMethodOrder;
/* loaded from: classes6.dex */
public class MethodSorter {
    public static Comparator<Method> DEFAULT = new Comparator<Method>() { // from class: org.junit.internal.MethodSorter.1
        @Override // java.util.Comparator
        public int compare(Method m1, Method m2) {
            int i1 = m1.getName().hashCode();
            int i2 = m2.getName().hashCode();
            if (i1 != i2) {
                return i1 < i2 ? -1 : 1;
            }
            return MethodSorter.NAME_ASCENDING.compare(m1, m2);
        }
    };
    public static Comparator<Method> NAME_ASCENDING = new Comparator<Method>() { // from class: org.junit.internal.MethodSorter.2
        @Override // java.util.Comparator
        public int compare(Method m1, Method m2) {
            int comparison = m1.getName().compareTo(m2.getName());
            return comparison != 0 ? comparison : m1.toString().compareTo(m2.toString());
        }
    };

    public static Method[] getDeclaredMethods(Class<?> clazz) {
        Comparator<Method> comparator = getSorter((FixMethodOrder) clazz.getAnnotation(FixMethodOrder.class));
        Method[] methods = clazz.getDeclaredMethods();
        if (comparator != null) {
            Arrays.sort(methods, comparator);
        }
        return methods;
    }

    private MethodSorter() {
    }

    private static Comparator<Method> getSorter(FixMethodOrder fixMethodOrder) {
        return fixMethodOrder == null ? DEFAULT : fixMethodOrder.value().getComparator();
    }
}
