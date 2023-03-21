package org.junit.internal.matchers;

import java.lang.reflect.Method;
import org.hamcrest.BaseMatcher;
import org.junit.internal.MethodSorter;
@Deprecated
/* loaded from: classes6.dex */
public abstract class TypeSafeMatcher<T> extends BaseMatcher<T> {
    private Class<?> expectedType;

    public abstract boolean matchesSafely(T t);

    protected TypeSafeMatcher() {
        this.expectedType = findExpectedType(getClass());
    }

    private static Class<?> findExpectedType(Class<?> fromClass) {
        for (Class<?> c = fromClass; c != Object.class; c = c.getSuperclass()) {
            Method[] arr$ = MethodSorter.getDeclaredMethods(c);
            for (Method method : arr$) {
                if (isMatchesSafelyMethod(method)) {
                    return method.getParameterTypes()[0];
                }
            }
        }
        throw new Error("Cannot determine correct type for matchesSafely() method.");
    }

    private static boolean isMatchesSafelyMethod(Method method) {
        return method.getName().equals("matchesSafely") && method.getParameterTypes().length == 1 && !method.isSynthetic();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected TypeSafeMatcher(Class<T> expectedType) {
        this.expectedType = expectedType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean matches(Object item) {
        return item != 0 && this.expectedType.isInstance(item) && matchesSafely(item);
    }
}
