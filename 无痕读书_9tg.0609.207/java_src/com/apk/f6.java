package com.apk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import butterknife.ButterKnife;
import com.apk.zu;
import com.biquge.ebook.app.bean.SkinModel;
import com.biquge.ebook.app.ui.activity.BookSearchActivity;
import com.biquge.ebook.app.ui.activity.WelComeActivity;
import com.biquge.ebook.app.widget.HeaderView;
import com.lxj.xpopup.impl.LoadingPopupView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kimi.wuhends.ebooks.R;
/* compiled from: BaseActivity.java */
/* loaded from: classes8.dex */
public abstract class f6 extends ne0 {
    public static final int PUBLIC_EMNU_VIEW = 10;
    public iu mImmersionBar;
    public WeakReference<LoadingPopupView> mLoadingWeak;
    public WeakReference<LoadingPopupView> mPopupLoadingWeak;

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

    private void setDayNight(boolean z) {
        if (ze.m3179private("SP_APP_DARK_THEME_SWITCH_KEY", true)) {
            boolean m438while = da.m438while();
            if (!z ? !m438while : m438while) {
                boolean z2 = !m438while;
                String tag = z2 ? "night" : ((SkinModel) ((ArrayList) ze.i()).get(ze.m3174instanceof("APP_SKIN_STYLE_KEY", 0))).getTag();
                if (TextUtils.isEmpty(tag)) {
                    return;
                }
                da.m422finally(z2);
                yp0.f6038class.m3111if(tag, 1);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r8.getY() < r5) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0056  */
    @Override // android.app.Activity, android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isTouchHideKeybord()
            if (r0 == 0) goto L6e
            int r0 = r8.getAction()
            r1 = 1
            if (r0 != 0) goto L5e
            android.view.View r0 = r7.getCurrentFocus()
            r2 = 0
            if (r0 == 0) goto L53
            boolean r3 = r0 instanceof android.widget.EditText
            if (r3 == 0) goto L53
            r3 = 2
            int[] r3 = new int[r3]
            r3 = {x0074: FILL_ARRAY_DATA  , data: [0, 0} // fill-array
            r0.getLocationInWindow(r3)
            r4 = r3[r2]
            r3 = r3[r1]
            int r5 = r0.getHeight()
            int r5 = r5 + r3
            int r0 = r0.getWidth()
            int r0 = r0 + r4
            float r6 = r8.getX()
            float r4 = (float) r4
            int r4 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r4 <= 0) goto L54
            float r4 = r8.getX()
            float r0 = (float) r0
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 >= 0) goto L54
            float r0 = r8.getY()
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto L54
            float r0 = r8.getY()
            float r3 = (float) r5
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L54
        L53:
            r1 = 0
        L54:
            if (r1 == 0) goto L59
            com.apk.ze.m3170goto(r7)
        L59:
            boolean r8 = super.dispatchTouchEvent(r8)
            return r8
        L5e:
            android.view.Window r0 = r7.getWindow()
            boolean r0 = r0.superDispatchTouchEvent(r8)
            if (r0 == 0) goto L69
            return r1
        L69:
            boolean r8 = r7.onTouchEvent(r8)
            return r8
        L6e:
            boolean r8 = super.dispatchTouchEvent(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apk.f6.dispatchTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    public abstract int getLayoutId();

    public int getToolBarMenuView() {
        return 0;
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

    public void init(@Nullable Bundle bundle) {
    }

    public void initData() {
    }

    public void initImmersionBar() {
        setImmersionBar(isDarkFont());
    }

    public void initTopBarOnlyTitle(int i) {
        initTopBarOnlyTitle(i, 0);
    }

    public void initView() {
    }

    public boolean isDarkFont() {
        return false;
    }

    public boolean isEventBusRegisted(Object obj) {
        return rl0.m2304if().m2306case(obj);
    }

    public boolean isImmersionBarEnabled() {
        return true;
    }

    public boolean isTouchHideKeybord() {
        return false;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.uiMode & 48;
        if (i == 16) {
            setDayNight(false);
        } else if (i != 32) {
        } else {
            setDayNight(true);
        }
    }

    @Override // com.apk.ne0, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        Intent intent;
        super.onCreate(bundle);
        setContentView(getLayoutId());
        ButterKnife.bind(this);
        if (isImmersionBarEnabled()) {
            initImmersionBar();
        }
        if ((this instanceof WelComeActivity) && (intent = getIntent()) != null && (intent.getFlags() & 4194304) != 0) {
            finish();
            return;
        }
        init(bundle);
        initView();
        initData();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getToolBarMenuView() != 0) {
            if (getToolBarMenuView() == 10) {
                getMenuInflater().inflate(R.menu.toolbar_menu_public, menu);
            } else {
                getMenuInflater().inflate(getToolBarMenuView(), menu);
            }
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    public void onItemMenuSelected(MenuItem menuItem) {
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            ze.m3170goto(this);
            onBackPressed();
        } else if (menuItem.getItemId() == R.id.activity_public_toolbar_search) {
            BookSearchActivity.i(this, hf.BOOK);
        } else {
            onItemMenuSelected(menuItem);
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public void registerEventBus(Object obj) {
        if (isEventBusRegisted(obj)) {
            return;
        }
        rl0.m2304if().m2307catch(obj);
    }

    public void setImmersionBar(boolean z) {
        this.mImmersionBar = iu.m1273super(this);
        if (z && iu.m1274this()) {
            this.mImmersionBar.m1279const(true, 0.2f);
        } else {
            this.mImmersionBar.m1279const(false, 0.2f);
        }
        iu iuVar = this.mImmersionBar;
        iuVar.f2235class.f759continue = false;
        iuVar.m1281else();
    }

    public void setStatusTransparent() {
        try {
            getWindow().setStatusBarColor(0);
            getWindow().getDecorView().setSystemUiVisibility(1280);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setWindowStatusBarColor(Activity activity) {
        try {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(activity.getResources().getColor(17170444));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setWindowStatusBarColorValue(Activity activity, int i) {
        try {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showBaseLoading() {
        showBaseLoading(null);
    }

    public void showPopupLoading() {
        showPopupLoading(null);
    }

    public void showTipDialog(Context context, String str, ft ftVar) {
        ze.c0(context, str, ftVar, true);
    }

    public void unRegisterEventBus(Object obj) {
        if (isEventBusRegisted(obj)) {
            rl0.m2304if().m2309const(obj);
        }
    }

    public void initTopBarOnlyTitle(int i, int i2) {
        initTopBarOnlyTitle(i, ze.q(i2));
    }

    public void showBaseLoading(String str) {
        try {
            if (this.mLoadingWeak == null || this.mLoadingWeak.get() == null) {
                this.mLoadingWeak = new WeakReference<>(createPublicLoadingDialog(this));
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
                this.mPopupLoadingWeak = new WeakReference<>(createLoadingPopupView(this));
            }
            if (TextUtils.isEmpty(str)) {
                String q = ze.q(R.string.progress_dialog_holdon);
                if (!this.mPopupLoadingWeak.get().getTitle().equals(q)) {
                    str = q;
                }
            }
            LoadingPopupView loadingPopupView = this.mPopupLoadingWeak.get();
            loadingPopupView.m3605if(str);
            loadingPopupView.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void showTipDialog(Context context, String str, ft ftVar, dt dtVar, boolean z) {
        ze.b0(context, str, ftVar, dtVar, z);
    }

    public void initTopBarOnlyTitle(int i, String str) {
        initTopBarOnlyTitle((HeaderView) findViewById(i), str);
    }

    public void initTopBarOnlyTitle(HeaderView headerView) {
        initTopBarOnlyTitle(headerView, "");
    }

    public void setWindowStatusBarColor(Activity activity, int i) {
        try {
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(activity.getResources().getColor(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void initTopBarOnlyTitle(HeaderView headerView, int i) {
        initTopBarOnlyTitle(headerView, getString(i));
    }

    public void initTopBarOnlyTitle(HeaderView headerView, String str) {
        initTopBarOnlyTitle(headerView, str, true);
    }

    public void initTopBarOnlyTitle(HeaderView headerView, String str, boolean z) {
        headerView.setTitile(str);
        headerView.getToolbar().setTitle("");
        if (z) {
            headerView.getToolbar().setNavigationIcon(R.drawable.kd_back_white);
        }
        setSupportActionBar(headerView.getToolbar());
        iu iuVar = this.mImmersionBar;
        if (iuVar != null) {
            if (iuVar != null) {
                if (iuVar.f2244import == 0) {
                    iuVar.f2244import = 1;
                }
                cu cuVar = iuVar.f2235class;
                cuVar.f782switch = headerView;
                cuVar.f789while = true;
                cuVar.f768if = 0;
                cuVar.f767goto = true;
                iuVar.m1281else();
                return;
            }
            throw null;
        }
    }
}
