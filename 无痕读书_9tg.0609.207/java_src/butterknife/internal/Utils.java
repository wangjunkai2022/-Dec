package butterknife.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.UiThread;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.apk.Cgoto;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes8.dex */
public final class Utils {
    public static final TypedValue VALUE = new TypedValue();

    public Utils() {
        throw new AssertionError("No instances.");
    }

    @SafeVarargs
    public static <T> T[] arrayFilteringNull(T... tArr) {
        int length = tArr.length;
        int i = 0;
        for (T t : tArr) {
            if (t != null) {
                tArr[i] = t;
                i++;
            }
        }
        return i == length ? tArr : (T[]) Arrays.copyOf(tArr, i);
    }

    public static <T> T castParam(Object obj, String str, int i, String str2, int i2, Class<T> cls) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            StringBuilder m1016super = Cgoto.m1016super("Parameter #");
            m1016super.append(i + 1);
            m1016super.append(" of method '");
            m1016super.append(str);
            m1016super.append("' was of the wrong type for parameter #");
            m1016super.append(i2 + 1);
            m1016super.append(" of method '");
            throw new IllegalStateException(Cgoto.m991class(m1016super, str2, "'. See cause for more info."), e);
        }
    }

    public static <T> T castView(View view, @IdRes int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            String resourceEntryName = getResourceEntryName(view, i);
            StringBuilder sb = new StringBuilder();
            sb.append("View '");
            sb.append(resourceEntryName);
            sb.append("' with ID ");
            sb.append(i);
            sb.append(" for ");
            throw new IllegalStateException(Cgoto.m991class(sb, str, " was of the wrong type. See cause for more info."), e);
        }
    }

    public static <T> T findOptionalViewAsType(View view, @IdRes int i, String str, Class<T> cls) {
        return (T) castView(view.findViewById(i), i, str, cls);
    }

    public static View findRequiredView(View view, @IdRes int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        String resourceEntryName = getResourceEntryName(view, i);
        StringBuilder sb = new StringBuilder();
        sb.append("Required view '");
        sb.append(resourceEntryName);
        sb.append("' with ID ");
        sb.append(i);
        sb.append(" for ");
        throw new IllegalStateException(Cgoto.m991class(sb, str, " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation."));
    }

    public static <T> T findRequiredViewAsType(View view, @IdRes int i, String str, Class<T> cls) {
        return (T) castView(findRequiredView(view, i, str), i, str, cls);
    }

    @UiThread
    public static float getFloat(Context context, @DimenRes int i) {
        TypedValue typedValue = VALUE;
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        StringBuilder m1016super = Cgoto.m1016super("Resource ID #0x");
        m1016super.append(Integer.toHexString(i));
        m1016super.append(" type #0x");
        m1016super.append(Integer.toHexString(typedValue.type));
        m1016super.append(" is not valid");
        throw new Resources.NotFoundException(m1016super.toString());
    }

    public static String getResourceEntryName(View view, @IdRes int i) {
        return view.isInEditMode() ? "<unavailable while editing>" : view.getContext().getResources().getResourceEntryName(i);
    }

    @UiThread
    public static Drawable getTintedDrawable(Context context, @DrawableRes int i, @AttrRes int i2) {
        if (context.getTheme().resolveAttribute(i2, VALUE, true)) {
            Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(context, i).mutate());
            DrawableCompat.setTint(wrap, ContextCompat.getColor(context, VALUE.resourceId));
            return wrap;
        }
        StringBuilder m1016super = Cgoto.m1016super("Required tint color attribute with name ");
        m1016super.append(context.getResources().getResourceEntryName(i2));
        m1016super.append(" and attribute ID ");
        m1016super.append(i2);
        m1016super.append(" was not found.");
        throw new Resources.NotFoundException(m1016super.toString());
    }

    @SafeVarargs
    public static <T> List<T> listFilteringNull(T... tArr) {
        return new ImmutableList(arrayFilteringNull(tArr));
    }
}
