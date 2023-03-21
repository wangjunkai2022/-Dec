package com.apk;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.viewpager.widget.PagerAdapter;
import com.apk.e40;
/* compiled from: FragmentListPageAdapter.java */
/* loaded from: classes8.dex */
public abstract class a40 extends PagerAdapter {

    /* renamed from: do  reason: not valid java name */
    public final FragmentManager f19do;

    /* renamed from: if  reason: not valid java name */
    public FragmentTransaction f21if = null;

    /* renamed from: for  reason: not valid java name */
    public SparseArray<Fragment.SavedState> f20for = new SparseArray<>();

    /* renamed from: new  reason: not valid java name */
    public SparseArray<Fragment> f22new = new SparseArray<>();

    /* renamed from: try  reason: not valid java name */
    public Fragment f23try = null;

    public a40(FragmentManager fragmentManager) {
        this.f19do = fragmentManager;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f21if == null) {
            this.f21if = this.f19do.beginTransaction();
        }
        this.f20for.put(i, this.f19do.saveFragmentInstanceState(fragment));
        this.f22new.remove(i);
        this.f21if.remove(fragment);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void finishUpdate(ViewGroup viewGroup) {
        FragmentTransaction fragmentTransaction = this.f21if;
        if (fragmentTransaction != null) {
            fragmentTransaction.commitAllowingStateLoss();
            this.f21if = null;
            this.f19do.executePendingTransactions();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = this.f22new.get(i);
        if (fragment != null) {
            return fragment;
        }
        if (this.f21if == null) {
            this.f21if = this.f19do.beginTransaction();
        }
        e40.Cdo cdo = e40.Cdo.this;
        Fragment fragment2 = ((y30) cdo).f5852case.get(i % cdo.mo538do());
        Fragment.SavedState savedState = this.f20for.get(i);
        if (savedState != null) {
            fragment2.setInitialSavedState(savedState);
        }
        fragment2.setMenuVisibility(false);
        fragment2.setUserVisibleHint(false);
        this.f22new.put(i, fragment2);
        this.f21if.add(viewGroup.getId(), fragment2);
        return fragment2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            this.f20for.clear();
            this.f22new.clear();
            if (bundle.containsKey("states")) {
                this.f20for = bundle.getSparseParcelableArray("states");
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment fragment = this.f19do.getFragment(bundle, str);
                    if (fragment != null) {
                        fragment.setMenuVisibility(false);
                        this.f22new.put(parseInt, fragment);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Parcelable saveState() {
        Bundle bundle;
        if (this.f20for.size() > 0) {
            bundle = new Bundle();
            bundle.putSparseParcelableArray("states", this.f20for.clone());
        } else {
            bundle = null;
        }
        int size = this.f22new.size();
        for (int i = 0; i < size; i++) {
            int keyAt = this.f22new.keyAt(i);
            Fragment valueAt = this.f22new.valueAt(i);
            if (valueAt != null && valueAt.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.f19do.putFragment(bundle, Cgoto.m1003implements("f", keyAt), valueAt);
            }
        }
        return bundle;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f23try;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.f23try.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.f23try = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void startUpdate(ViewGroup viewGroup) {
    }
}
