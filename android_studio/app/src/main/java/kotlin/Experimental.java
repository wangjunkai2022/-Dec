package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Experimental.kt */
@Target({ElementType.ANNOTATION_TYPE})
@SinceKotlin(version = "1.2")
@Deprecated(message = "Please use RequiresOptIn instead.")
@kotlin.annotation.Target(allowedTargets = {pc0.ANNOTATION_CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(oc0.BINARY)
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\bB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009120\u0001¨\u0006\t"}, d2 = {"Lkotlin/Experimental;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "Lkotlin/Experimental$Level;", "level", "()Lkotlin/Experimental$Level;", "<init>", "(Lkotlin/Experimental$Level;)V", "Level", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public @interface Experimental {

    /* compiled from: Experimental.kt */
    /* renamed from: kotlin.Experimental$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Cdo {
        WARNING,
        ERROR
    }

    Cdo level() default Cdo.ERROR;
}
