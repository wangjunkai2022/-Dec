package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;

/* loaded from: classes8.dex */
public final class SavedStateRegistryController {
    public final SavedStateRegistryOwner mOwner;
    public final SavedStateRegistry mRegistry = new SavedStateRegistry();

    public SavedStateRegistryController(SavedStateRegistryOwner savedStateRegistryOwner) {
        this.mOwner = savedStateRegistryOwner;
    }

    @NonNull
    public static SavedStateRegistryController create(@NonNull SavedStateRegistryOwner savedStateRegistryOwner) {
        return new SavedStateRegistryController(savedStateRegistryOwner);
    }

    @NonNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.mRegistry;
    }

    @MainThread
    public void performRestore(@Nullable Bundle bundle) {
        Lifecycle lifecycle = this.mOwner.getLifecycle();
        if (lifecycle.getCurrentState() == Lifecycle.State.INITIALIZED) {
            lifecycle.addObserver(new Recreator(this.mOwner));
            this.mRegistry.performRestore(lifecycle, bundle);
            return;
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    @MainThread
    public void performSave(@NonNull Bundle bundle) {
        this.mRegistry.performSave(bundle);
    }
}
