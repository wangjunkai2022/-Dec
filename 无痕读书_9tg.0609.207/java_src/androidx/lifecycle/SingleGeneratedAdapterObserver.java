package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
/* loaded from: classes8.dex */
public class SingleGeneratedAdapterObserver implements LifecycleEventObserver {
    public final GeneratedAdapter mGeneratedAdapter;

    public SingleGeneratedAdapterObserver(GeneratedAdapter generatedAdapter) {
        this.mGeneratedAdapter = generatedAdapter;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        this.mGeneratedAdapter.callMethods(lifecycleOwner, event, false, null);
        this.mGeneratedAdapter.callMethods(lifecycleOwner, event, true, null);
    }
}
