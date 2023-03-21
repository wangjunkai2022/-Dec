package butterknife;

import androidx.annotation.IdRes;
import butterknife.internal.ListenerClass;
import butterknife.internal.ListenerMethod;
import com.google.android.material.chip.Chip;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@ListenerClass(method = {@ListenerMethod(name = "onCheckedChanged", parameters = {Chip.COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME, "boolean"})}, setter = "setOnCheckedChangeListener", targetType = Chip.COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME, type = "android.widget.CompoundButton.OnCheckedChangeListener")
/* loaded from: classes8.dex */
public @interface OnCheckedChanged {
    @IdRes
    int[] value() default {-1};
}
