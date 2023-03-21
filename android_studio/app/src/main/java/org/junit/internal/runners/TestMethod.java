package org.junit.internal.runners;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

@Deprecated
/* loaded from: classes6.dex */
public class TestMethod {
    private final Method fMethod;
    private TestClass fTestClass;

    public TestMethod(Method method, TestClass testClass) {
        this.fMethod = method;
        this.fTestClass = testClass;
    }

    public boolean isIgnored() {
        return this.fMethod.getAnnotation(Ignore.class) != null;
    }

    public long getTimeout() {
        Test annotation = (Test) this.fMethod.getAnnotation(Test.class);
        if (annotation == null) {
            return 0L;
        }
        return annotation.timeout();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Class<? extends Throwable> getExpectedException() {
        Test annotation = (Test) this.fMethod.getAnnotation(Test.class);
        if (annotation == null || annotation.expected() == Test.None.class) {
            return null;
        }
        return annotation.expected();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUnexpected(Throwable exception) {
        return !getExpectedException().isAssignableFrom(exception.getClass());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean expectsException() {
        return getExpectedException() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Method> getBefores() {
        return this.fTestClass.getAnnotatedMethods(Before.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Method> getAfters() {
        return this.fTestClass.getAnnotatedMethods(After.class);
    }

    public void invoke(Object test) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        this.fMethod.invoke(test, new Object[0]);
    }
}
