package org.junit.runners.model;

import java.lang.annotation.Annotation;
import java.util.List;
import org.junit.runners.model.FrameworkMember;
/* loaded from: classes6.dex */
public abstract class FrameworkMember<T extends FrameworkMember<T>> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Annotation[] getAnnotations();

    public abstract String getName();

    public abstract Class<?> getType();

    public abstract boolean isPublic();

    abstract boolean isShadowedBy(T t);

    public abstract boolean isStatic();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShadowedBy(List<T> members) {
        for (T each : members) {
            if (isShadowedBy((FrameworkMember<T>) each)) {
                return true;
            }
        }
        return false;
    }
}
