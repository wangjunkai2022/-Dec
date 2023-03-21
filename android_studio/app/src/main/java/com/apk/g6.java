package com.apk;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import butterknife.ButterKnife;
import com.apk.zu;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;
import kimi.wuhends.ebooks.R;

/* compiled from: BaseFragment.java */
/* loaded from: classes8.dex */
public abstract class g6 extends k6 {
    public i6 mActivity;
    public WeakReference<LoadingPopupView> mLoadingWeak;
    public WeakReference<LoadingPopupView> mPopupLoadingWeak;
    public View rootView;

    private LoadingPopupView createLoadingPopupView(Context context) {
        zu.Cdo cdo = new zu.Cdo(context);
        cdo.f6267do.f2924for = Boolean.FALSE;
        return cdo.m3248break(ze.q(R.string.progress_dialog_holdon));
    }

    private LoadingPopupView createPublicLoadingDialog(Context context) {
        lv lvVar = new lv();
        Boolean bool = Boolean.FALSE;
        lvVar.f2943try = bool;
        lvVar.f2924for = bool;
        String q = ze.q(R.string.progress_dialog_holdon);
        lvVar.f2917continue = zu.f6266try;
        LoadingPopupView loadingPopupView = new LoadingPopupView(context, R.layout.code_public_loading_view);
        loadingPopupView.m3605if(q);
        loadingPopupView.popupInfo = lvVar;
        return loadingPopupView;
    }

    public <T extends View> T findViewById(@IdRes int i) {
        View view = this.rootView;
        if (view != null) {
            return (T) view.findViewById(i);
        }
        return null;
    }

    public abstract int getLayoutId();

    public i6 getSupportActivity() {
        return this.mActivity;
    }

    public void hideBaseLoading() {
        try {
            if (this.mLoadingWeak == null || this.mLoadingWeak.get() == null) {
                return;
            }
            this.mLoadingWeak.get().dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void hidePopupLoading() {
        try {
            if (this.mPopupLoadingWeak == null || this.mPopupLoadingWeak.get() == null) {
                return;
            }
            this.mPopupLoadingWeak.get().dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void initData() {
    }

    public void initView() {
    }

    public boolean isEventBusRegisted(Object obj) {
        return rl0.m2304if().m2306case(obj);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.mActivity = (i6) context;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = this.rootView;
        if (view == null) {
            View inflate = layoutInflater.inflate(getLayoutId(), viewGroup, false);
            this.rootView = inflate;
            ButterKnife.bind(this, inflate);
            preInit();
        } else {
            ViewGroup viewGroup2 = (ViewGroup) view.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.rootView);
            }
        }
        return this.rootView;
    }

    @Override // com.apk.k6, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.rootView = null;
    }

    @Override // com.apk.k6
    public void onFragmentFirstVisible() {
        initView();
        initData();
    }

    public void registerEventBus(Object obj) {
        if (isEventBusRegisted(obj)) {
            return;
        }
        rl0.m2304if().m2307catch(obj);
    }

    public void showBaseLoading() {
        showBaseLoading(null);
    }

    public void showPopupLoading() {
        showPopupLoading(ze.q(R.string.progress_dialog_holdon));
    }

    public void unRegisterEventBus(Object obj) {
        if (isEventBusRegisted(obj)) {
            rl0.m2304if().m2309const(obj);
        }
    }

    public void showBaseLoading(String str) {
        try {
            if (this.mLoadingWeak == null || this.mLoadingWeak.get() == null) {
                this.mLoadingWeak = new WeakReference<>(createPublicLoadingDialog(getSupportActivity()));
            }
            if (TextUtils.isEmpty(str)) {
                String q = ze.q(R.string.progress_dialog_holdon);
                if (!this.mLoadingWeak.get().getTitle().equals(q)) {
                    str = q;
                }
            }
            LoadingPopupView loadingPopupView = this.mLoadingWeak.get();
            loadingPopupView.m3605if(str);
            loadingPopupView.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showPopupLoading(String str) {
        try {
            if (this.mPopupLoadingWeak == null || this.mPopupLoadingWeak.get() == null) {
                this.mPopupLoadingWeak = new WeakReference<>(createLoadingPopupView(getSupportActivity()));
            }
            LoadingPopupView loadingPopupView = this.mPopupLoadingWeak.get();
            loadingPopupView.m3605if(str);
            loadingPopupView.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
