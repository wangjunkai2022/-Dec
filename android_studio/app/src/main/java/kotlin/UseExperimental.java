package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.Annotation;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Experimental.kt */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE})
@SinceKotlin(version = "1.2")
@Deprecated(message = "Please use OptIn instead.", replaceWith = @ReplaceWith(expression = "OptIn(*markerClass)", imports = {"kotlin.OptIn"}))
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS, pc0.PROPERTY, pc0.LOCAL_VARIABLE, pc0.VALUE_PARAMETER, pc0.CONSTRUCTOR, pc0.FUNCTION, pc0.PROPERTY_GETTER, pc0.PROPERTY_SETTER, pc0.EXPRESSION, pc0.FILE, pc0.TYPEALIAS})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(oc0.SOURCE)
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0005\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\"\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00040\u0003\"\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004¢\u0006\u0004\b\b\u0010\tR#\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00040\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007ø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009120\u0001¨\u0006\n"}, d2 = {"Lkotlin/UseExperimental;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", "Lkotlin/reflect/KClass;", "", "markerClass", "()[Ljava/lang/Class;", "<init>", "(Lcom/android/tools/r8/jetbrains/kotlin/Array;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes7.dex */
public @interface UseExperimental {
    Class<? extends Annotation>[] markerClass();
}
