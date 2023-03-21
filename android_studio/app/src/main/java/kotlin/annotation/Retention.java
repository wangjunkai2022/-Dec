package kotlin.annotation;

import com.apk.oc0;
import com.apk.pc0;
import java.lang.annotation.ElementType;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import org.litepal.parser.LitePalParser;

/* compiled from: Annotations.kt */
@java.lang.annotation.Target({ElementType.ANNOTATION_TYPE})
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlin/annotation/Retention;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "Lkotlin/annotation/AnnotationRetention;", LitePalParser.ATTR_VALUE, "()Lkotlin/annotation/AnnotationRetention;", "<init>", "(Lkotlin/annotation/AnnotationRetention;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@Target(allowedTargets = {pc0.ANNOTATION_CLASS})
@java.lang.annotation.Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes7.dex */
public @interface Retention {
    oc0 value() default oc0.RUNTIME;
}
