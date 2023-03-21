package kotlin.coroutines.jvm.internal;

import androidx.core.graphics.PaintCompat;
import com.apk.pc0;
import com.umeng.analytics.pro.ak;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import org.litepal.parser.LitePalParser;

/* compiled from: DebugMetadata.kt */
@Target({ElementType.TYPE})
@SinceKotlin(version = "1.3")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0006\b\u0081\u0002\u0018\u00002\u00020\u00012\u00020\u0002Bc\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0017\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0007\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\r\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\r\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u0013\u0010\u0006\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0013\u0010\n\u001a\u00020\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0013\u0010\f\u001a\u00020\u00078\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0019\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\r8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0012\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0005R\u0013\u0010\u0014\u001a\u00020\u00038\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0005R\u0019\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\r8\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\u001a\u001a\u00020\u00178\u0007@\u0006¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001d"}, d2 = {"Lkotlin/coroutines/jvm/internal/DebugMetadata;", "Ljava/lang/annotation/Annotation;", "Lkotlin/Any;", "", ak.aF, "()Ljava/lang/String;", "className", "", ak.aC, "()[I", "indexToLabel", "l", "lineNumbers", "", "n", "()[Ljava/lang/String;", "localNames", PaintCompat.EM_STRING, "methodName", "f", "sourceFile", ak.aB, "spilled", "", ak.aE, "()I", LitePalParser.NODE_VERSION, "<init>", "(ILjava/lang/String;[ILcom/android/tools/r8/jetbrains/kotlin/Array;Lcom/android/tools/r8/jetbrains/kotlin/Array;[ILjava/lang/String;Ljava/lang/String;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@kotlin.annotation.Target(allowedTargets = {pc0.CLASS})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes7.dex */
public @interface DebugMetadata {
    @JvmName(name = ak.aF)
    String c() default "";

    @JvmName(name = "f")
    String f() default "";

    @JvmName(name = ak.aC)
    int[] i() default {};

    @JvmName(name = "l")
    int[] l() default {};

    @JvmName(name = PaintCompat.EM_STRING)
    String m() default "";

    @JvmName(name = "n")
    String[] n() default {};

    @JvmName(name = ak.aB)
    String[] s() default {};

    @JvmName(name = ak.aE)
    int v() default 1;
}
