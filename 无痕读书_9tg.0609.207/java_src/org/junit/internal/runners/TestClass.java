package org.junit.internal.runners;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.internal.MethodSorter;
@Deprecated
/* loaded from: classes6.dex */
public class TestClass {
    private final Class<?> fClass;

    public TestClass(Class<?> klass) {
        this.fClass = klass;
    }

    public List<Method> getTestMethods() {
        return getAnnotatedMethods(Test.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Method> getBefores() {
        return getAnnotatedMethods(BeforeClass.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Method> getAfters() {
        return getAnnotatedMethods(AfterClass.class);
    }

    public List<Method> getAnnotatedMethods(Class<? extends Annotation> annotationClass) {
        List<Method> results = new ArrayList<>();
        for (Class<?> eachClass : getSuperClasses(this.fClass)) {
            Method[] methods = MethodSorter.getDeclaredMethods(eachClass);
            for (Method eachMethod : methods) {
                Annotation annotation = eachMethod.getAnnotation(annotationClass);
                if (annotation != null && !isShadowed(eachMethod, results)) {
                    results.add(eachMethod);
                }
            }
        }
        if (runsTopToBottom(annotationClass)) {
            Collections.reverse(results);
        }
        return results;
    }

    private boolean runsTopToBottom(Class<? extends Annotation> annotation) {
        return annotation.equals(Before.class) || annotation.equals(BeforeClass.class);
    }

    private boolean isShadowed(Method method, List<Method> results) {
        for (Method each : results) {
            if (isShadowed(method, each)) {
                return true;
            }
        }
        return false;
    }

    private boolean isShadowed(Method current, Method previous) {
        if (previous.getName().equals(current.getName()) && previous.getParameterTypes().length == current.getParameterTypes().length) {
            for (int i = 0; i < previous.getParameterTypes().length; i++) {
                if (!previous.getParameterTypes()[i].equals(current.getParameterTypes()[i])) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    private List<Class<?>> getSuperClasses(Class<?> testClass) {
        ArrayList<Class<?>> results = new ArrayList<>();
        for (Class<?> current = testClass; current != null; current = current.getSuperclass()) {
            results.add(current);
        }
        return results;
    }

    public Constructor<?> getConstructor() throws SecurityException, NoSuchMethodException {
        return this.fClass.getConstructor(new Class[0]);
    }

    public Class<?> getJavaClass() {
        return this.fClass;
    }

    public String getName() {
        return this.fClass.getName();
    }
}
