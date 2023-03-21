package kotlin.internal;

import com.apk.fd0;
import com.apk.hc0;
import com.apk.oc0;
import com.apk.pc0;
import com.bytedance.msdk.api.reward.RewardItem;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.annotation.Repeatable;
import org.litepal.parser.LitePalParser;
/* compiled from: Annotations.kt */
@Target({ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR})
@SinceKotlin(version = "1.2")
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS, pc0.FUNCTION, pc0.PROPERTY, pc0.CONSTRUCTOR, pc0.TYPEALIAS})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(oc0.SOURCE)
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0081\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\u0006\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u00038\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\u0007\u001a\u00020\u00068\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\n\u001a\u00020\t8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\f\u001a\u00020\t8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u000e\u001a\u00020\r8\u0006@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Lkotlin/internal/RequireKotlin;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", RewardItem.KEY_ERROR_CODE, "()I", "Lkotlin/DeprecationLevel;", "level", "()Lkotlin/DeprecationLevel;", "", "message", "()Ljava/lang/String;", LitePalParser.NODE_VERSION, "Lkotlin/internal/RequireKotlinVersionKind;", "versionKind", "()Lkotlin/internal/RequireKotlinVersionKind;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/DeprecationLevel;Lkotlin/internal/RequireKotlinVersionKind;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@Repeatable
/* loaded from: classes7.dex */
public @interface RequireKotlin {
    int errorCode() default -1;

    hc0 level() default hc0.ERROR;

    String message() default "";

    String version();

    fd0 versionKind() default fd0.LANGUAGE_VERSION;
}
