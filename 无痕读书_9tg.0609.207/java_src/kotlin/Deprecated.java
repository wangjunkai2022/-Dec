package kotlin;

import com.apk.hc0;
import com.apk.pc0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.annotation.MustBeDocumented;
/* compiled from: Annotations.kt */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.ANNOTATION_TYPE})
@MustBeDocumented
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lkotlin/Deprecated;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "Lkotlin/DeprecationLevel;", "level", "()Lkotlin/DeprecationLevel;", "", "message", "()Ljava/lang/String;", "Lkotlin/ReplaceWith;", "replaceWith", "()Lkotlin/ReplaceWith;", "<init>", "(Ljava/lang/String;Lkotlin/ReplaceWith;Lkotlin/DeprecationLevel;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS, pc0.FUNCTION, pc0.PROPERTY, pc0.ANNOTATION_CLASS, pc0.CONSTRUCTOR, pc0.PROPERTY_SETTER, pc0.PROPERTY_GETTER, pc0.TYPEALIAS})
@Documented
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes7.dex */
public @interface Deprecated {
    hc0 level() default hc0.WARNING;

    String message();

    ReplaceWith replaceWith() default @ReplaceWith(expression = "", imports = {});
}
