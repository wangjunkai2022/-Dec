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
@ListenerClass(method = {@ListenerMethod(name = "onItemClick", parameters = {"android.widget.AdapterView<?>", "android.view.View", "int", "long"})}, setter = "setOnItemClickListener", targetType = "android.widget.AdapterView<?>", type = "android.widget.AdapterView.OnItemClickListener")
/* loaded from: classes8.dex */
public @interface OnItemClick {
    @IdRes
    int[] value() default {-1};
}
