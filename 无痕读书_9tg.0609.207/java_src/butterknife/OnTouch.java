package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@ListenerClass(method = {@ListenerMethod(defaultReturn = "true", name = "onTouch", parameters = {"android.view.View", "android.view.MotionEvent"}, returnType = "boolean")}, setter = "setOnTouchListener", targetType = "android.view.View", type = "android.view.View.OnTouchListener")
/* loaded from: classes8.dex */
public @interface OnTouch {
    @IdRes
    int[] value() default {-1};
}
