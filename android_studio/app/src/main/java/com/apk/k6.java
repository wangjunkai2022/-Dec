package com.apk;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: LazyLoadFragment.java */
/* loaded from: classes8.dex */
public abstract class k6 extends j6 {
    public boolean isFirstEnter = true;
    public boolean isReuseView = true;
    public View rootView;

    private void resetVariavle() {
        this.isFirstEnter = true;
        this.isReuseView = true;
    }

    @Override // androidx.fragment.app.Fragment
    public boolean getUserVisibleHint() {
        if (!isOpenLazyLoad() || isUseVisible()) {
            return super.getUserVisibleHint();
        }
        return true;
    }

    public boolean isOpenLazyLoad() {
        return true;
    }

    public boolean isUseVisible() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        resetVariavle();
    }

    public void onFragmentFirstVisible() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        if (isOpenLazyLoad()) {
            if (this.rootView == null) {
                this.rootView = view;
                if (getUserVisibleHint() && this.isFirstEnter) {
                    this.isFirstEnter = false;
                    onFragmentFirstVisible();
                }
            }
            if (this.isReuseView) {
                view = this.rootView;
            }
            super.onViewCreated(view, bundle);
            return;
        }
        super.onViewCreated(view, bundle);
    }

    public void preInit() {
    }

    public void reuseView(boolean z) {
        this.isReuseView = z;
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (isOpenLazyLoad() && this.rootView != null && this.isFirstEnter && z) {
            this.isFirstEnter = false;
            onFragmentFirstVisible();
        }
    }
}
