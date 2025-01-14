package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.GenericLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.Recreator;
import com.apk.Cgoto;
import java.util.Map;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes8.dex */
public final class SavedStateRegistry {
    public static final String SAVED_COMPONENTS_KEY = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    public Recreator.SavedStateProvider mRecreatorProvider;
    public boolean mRestored;
    @Nullable
    public Bundle mRestoredState;
    public SafeIterableMap<String, SavedStateProvider> mComponents = new SafeIterableMap<>();
    public boolean mAllowingSavingState = true;

    /* loaded from: classes8.dex */
    public interface AutoRecreated {
        void onRecreated(@NonNull SavedStateRegistryOwner savedStateRegistryOwner);
    }

    /* loaded from: classes8.dex */
    public interface SavedStateProvider {
        @NonNull
        Bundle saveState();
    }

    @Nullable
    @MainThread
    public Bundle consumeRestoredStateForKey(@NonNull String str) {
        if (this.mRestored) {
            Bundle bundle = this.mRestoredState;
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle(str);
                this.mRestoredState.remove(str);
                if (this.mRestoredState.isEmpty()) {
                    this.mRestoredState = null;
                }
                return bundle2;
            }
            return null;
        }
        throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
    }

    @MainThread
    public boolean isRestored() {
        return this.mRestored;
    }

    @MainThread
    public void performRestore(@NonNull Lifecycle lifecycle, @Nullable Bundle bundle) {
        if (!this.mRestored) {
            if (bundle != null) {
                this.mRestoredState = bundle.getBundle(SAVED_COMPONENTS_KEY);
            }
            lifecycle.addObserver(new GenericLifecycleObserver() { // from class: androidx.savedstate.SavedStateRegistry.1
                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        SavedStateRegistry.this.mAllowingSavingState = true;
                    } else if (event == Lifecycle.Event.ON_STOP) {
                        SavedStateRegistry.this.mAllowingSavingState = false;
                    }
                }
            });
            this.mRestored = true;
            return;
        }
        throw new IllegalStateException("SavedStateRegistry was already restored.");
    }

    @MainThread
    public void performSave(@NonNull Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.mRestoredState;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        SafeIterableMap<String, SavedStateProvider>.IteratorWithAdditions iteratorWithAdditions = this.mComponents.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext()) {
            Map.Entry next = iteratorWithAdditions.next();
            bundle2.putBundle((String) next.getKey(), ((SavedStateProvider) next.getValue()).saveState());
        }
        bundle.putBundle(SAVED_COMPONENTS_KEY, bundle2);
    }

    @MainThread
    public void registerSavedStateProvider(@NonNull String str, @NonNull SavedStateProvider savedStateProvider) {
        if (this.mComponents.putIfAbsent(str, savedStateProvider) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    @MainThread
    public void runOnNextRecreation(@NonNull Class<? extends AutoRecreated> cls) {
        if (this.mAllowingSavingState) {
            if (this.mRecreatorProvider == null) {
                this.mRecreatorProvider = new Recreator.SavedStateProvider(this);
            }
            try {
                cls.getDeclaredConstructor(new Class[0]);
                this.mRecreatorProvider.add(cls.getName());
                return;
            } catch (NoSuchMethodException e) {
                StringBuilder m1016super = Cgoto.m1016super("Class");
                m1016super.append(cls.getSimpleName());
                m1016super.append(" must have default constructor in order to be automatically recreated");
                throw new IllegalArgumentException(m1016super.toString(), e);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    @MainThread
    public void unregisterSavedStateProvider(@NonNull String str) {
        this.mComponents.remove(str);
    }
}
