package org.junit.experimental.theories;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes6.dex */
public @interface Theory {
    boolean nullsAccepted() default true;
}
