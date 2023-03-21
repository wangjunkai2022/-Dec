package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import com.baidu.tts.loopj.PersistentCookieStore;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* compiled from: Annotations.kt */
@Target({ElementType.TYPE, ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.CONSTRUCTOR, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\"\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u001b\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlin/Suppress;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", "", PersistentCookieStore.COOKIE_NAME_STORE, "()[Ljava/lang/String;", "<init>", "(Lcom/android/tools/r8/jetbrains/kotlin/Array;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS, pc0.ANNOTATION_CLASS, pc0.TYPE_PARAMETER, pc0.PROPERTY, pc0.FIELD, pc0.LOCAL_VARIABLE, pc0.VALUE_PARAMETER, pc0.CONSTRUCTOR, pc0.FUNCTION, pc0.PROPERTY_GETTER, pc0.PROPERTY_SETTER, pc0.TYPE, pc0.EXPRESSION, pc0.FILE, pc0.TYPEALIAS})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(oc0.SOURCE)
/* loaded from: classes7.dex */
public @interface Suppress {
    String[] names();
}
