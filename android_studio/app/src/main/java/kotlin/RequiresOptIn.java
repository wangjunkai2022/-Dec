package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: OptIn.kt */
@Target({ElementType.ANNOTATION_TYPE})
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u000bB\u001b\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u0099F0\u0001¨\u0006\f"}, d2 = {"Lkotlin/RequiresOptIn;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "Lkotlin/RequiresOptIn$Level;", "level", "()Lkotlin/RequiresOptIn$Level;", "", "message", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;Lkotlin/RequiresOptIn$Level;)V", "Level", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.ANNOTATION_CLASS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(oc0.BINARY)
/* loaded from: classes7.dex */
public @interface RequiresOptIn {

    /* compiled from: OptIn.kt */
    /* renamed from: kotlin.RequiresOptIn$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public enum Cdo {
        WARNING,
        ERROR
    }

    Cdo level() default Cdo.ERROR;

    String message() default "";
}
