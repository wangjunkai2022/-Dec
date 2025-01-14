package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import com.apk.Cgoto;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes8.dex */
public class FragmentFactory {
    public static final SimpleArrayMap<String, Class<?>> sClassMap = new SimpleArrayMap<>();

    public static boolean isFragmentClass(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return Fragment.class.isAssignableFrom(loadClass(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @NonNull
    public static Class<?> loadClass(@NonNull ClassLoader classLoader, @NonNull String str) throws ClassNotFoundException {
        Class<?> cls = sClassMap.get(str);
        if (cls == null) {
            Class<?> cls2 = Class.forName(str, false, classLoader);
            sClassMap.put(str, cls2);
            return cls2;
        }
        return cls;
    }

    @NonNull
    public static Class<? extends Fragment> loadFragmentClass(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return loadClass(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": make sure class name exists"), e2);
        }
    }

    @NonNull
    public Fragment instantiate(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return loadFragmentClass(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e);
        } catch (InstantiationException e2) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.InstantiationException(Cgoto.m996else("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e4);
        }
    }
}
