package com.apk;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.app.SkinAppCompatDelegateImpl;
import com.umeng.analytics.MobclickAgent;
/* compiled from: CommonsActivity.java */
/* loaded from: classes8.dex */
public class i6 extends AppCompatActivity {
    @Override // androidx.appcompat.app.AppCompatActivity
    @NonNull
    public AppCompatDelegate getDelegate() {
        return SkinAppCompatDelegateImpl.get(this, this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MobclickAgent.onPause(this);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MobclickAgent.onResume(this);
    }

    public boolean post(Runnable runnable) {
        if (getWindow().getDecorView() != null) {
            return getWindow().getDecorView().post(runnable);
        }
        return false;
    }

    public boolean postDelayed(Runnable runnable, long j) {
        if (getWindow().getDecorView() != null) {
            return getWindow().getDecorView().postDelayed(runnable, j);
        }
        return false;
    }

    public boolean removeCallbacks(Runnable runnable) {
        if (getWindow().getDecorView() != null) {
            return getWindow().getDecorView().removeCallbacks(runnable);
        }
        return true;
    }
}
