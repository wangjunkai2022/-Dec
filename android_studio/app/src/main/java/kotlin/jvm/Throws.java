package kotlin.jvm;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;

/* compiled from: JvmPlatformAnnotations.kt */
@Target({ElementType.METHOD, ElementType.CONSTRUCTOR})
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B+\u0012\"\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00040\u0003\"\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004¢\u0006\u0004\b\b\u0010\tR#\u0010\u0006\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00040\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/jvm/Throws;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", "Lkotlin/reflect/KClass;", "", "exceptionClasses", "()[Ljava/lang/Class;", "<init>", "(Lcom/android/tools/r8/jetbrains/kotlin/Array;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.FUNCTION, pc0.PROPERTY_GETTER, pc0.PROPERTY_SETTER, pc0.CONSTRUCTOR})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(oc0.SOURCE)
/* loaded from: classes7.dex */
public @interface Throws {
    Class<? extends Throwable>[] exceptionClasses();
}
