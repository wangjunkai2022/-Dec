package kotlin;

import com.apk.oc0;
import com.apk.pc0;
import com.ss.android.socialbase.downloader.network.k;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.jvm.JvmName;
/* compiled from: Metadata.kt */
@Target({ElementType.TYPE})
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\b\u0087\u0002\u0018\u00002\u00020\u00012\u00020\u0002Bc\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\b\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0019\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0019\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0011\u001a\u00020\u000e8\u0007@\u0007X\u0087\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0014\u001a\u00020\b8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0016\u001a\u00020\u000e8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0010R\u0013\u0010\u0018\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0005R\u0016\u0010\u001a\u001a\u00020\b8\u0007@\u0007X\u0087\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0013¨\u0006\u001d"}, d2 = {"Lkotlin/Metadata;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", "bv", "()[I", "bytecodeVersion", "", "", "d1", "()[Ljava/lang/String;", "data1", "d2", "data2", "", "xi", "()I", "extraInt", "xs", "()Ljava/lang/String;", "extraString", k.f12003a, "kind", "mv", "metadataVersion", "pn", "packageName", "<init>", "(I[I[ILcom/android/tools/r8/jetbrains/kotlin/Array;Lcom/android/tools/r8/jetbrains/kotlin/Array;Ljava/lang/String;Ljava/lang/String;I)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS})
@Retention(RetentionPolicy.RUNTIME)
@kotlin.annotation.Retention(oc0.RUNTIME)
/* loaded from: classes7.dex */
public @interface Metadata {
    @JvmName(name = "bv")
    int[] bv() default {};

    @JvmName(name = "d1")
    String[] d1() default {};

    @JvmName(name = "d2")
    String[] d2() default {};

    @JvmName(name = k.f12003a)
    int k() default 1;

    @JvmName(name = "mv")
    int[] mv() default {};

    @JvmName(name = "pn")
    String pn() default "";

    @JvmName(name = "xi")
    int xi() default 0;

    @JvmName(name = "xs")
    String xs() default "";
}
