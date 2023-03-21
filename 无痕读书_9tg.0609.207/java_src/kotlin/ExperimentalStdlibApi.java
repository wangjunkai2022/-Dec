package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Experimental;
import kotlin.RequiresOptIn;
import kotlin.annotation.MustBeDocumented;
/* compiled from: ExperimentalStdlibApi.kt */
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@SinceKotlin(version = "1.3")
@RequiresOptIn(level = RequiresOptIn.Cdo.ERROR)
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS, pc0.ANNOTATION_CLASS, pc0.PROPERTY, pc0.FIELD, pc0.LOCAL_VARIABLE, pc0.VALUE_PARAMETER, pc0.CONSTRUCTOR, pc0.FUNCTION, pc0.PROPERTY_GETTER, pc0.PROPERTY_SETTER, pc0.TYPEALIAS})
@Retention(RetentionPolicy.CLASS)
@kotlin.annotation.Retention(oc0.BINARY)
@MustBeDocumented
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlin/ExperimentalStdlibApi;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@Experimental(level = Experimental.Cdo.ERROR)
@Documented
/* loaded from: classes7.dex */
public @interface ExperimentalStdlibApi {
}
