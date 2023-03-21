package com.biquge.ebook.app.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.OnClick;
import com.apk.Cgoto;
import com.apk.f6;
import com.apk.kf;
import com.apk.mf;
import com.apk.q50;
import com.apk.r50;
import com.apk.s50;
import com.apk.w0;
import com.apk.ys;
import com.apk.ze;
import com.hjq.toast.ToastUtils;
import com.jni.crypt.project.CryptDesManager;
import com.qq.e.ads.splash.SplashAD;
import com.swl.gg.sdk.TrAdSdk;
import java.io.File;
import java.io.IOException;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
/* loaded from: classes8.dex */
public class TestActivity extends f6 {
    @BindView(R.id.test_device_info_tv)
    public TextView mDeviceInfoTv;
    @BindView(R.id.activity_gdt_ad_layout)
    public FrameLayout mGdtAdLayout;

    /* renamed from: com.biquge.ebook.app.ui.activity.TestActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements r50.Cdo {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ SplashAD f6823do;

        public Cdo(TestActivity testActivity, SplashAD splashAD) {
            this.f6823do = splashAD;
        }
    }

    public static String i(String str) {
        return CryptDesManager.encodeContent(str.replace(":", "").toLowerCase());
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_test;
    }

    @Override // com.apk.f6
    public void initData() {
        String str;
        super.initData();
        registerEventBus(this);
        StringBuilder sb = new StringBuilder();
        StringBuilder m1016super = Cgoto.m1016super("品牌：");
        m1016super.append(ys.m3116if().f3937else);
        sb.append(m1016super.toString());
        sb.append("\n");
        sb.append("型号：" + ys.m3116if().f3935case);
        sb.append("\n");
        sb.append("系统版本号：" + ys.m3116if().f3941try);
        sb.append("\n");
        sb.append("是否鸿蒙系统：" + ze.F());
        sb.append("\n");
        if (ze.F()) {
            StringBuilder m1016super2 = Cgoto.m1016super("鸿蒙版本名称：");
            try {
                Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                str = (String) cls.getMethod("getOsBrand", new Class[0]).invoke(cls, new Object[0]);
            } catch (Throwable th) {
                th.printStackTrace();
                str = "";
            }
            m1016super2.append(str);
            sb.append(m1016super2.toString());
            sb.append("\n");
            sb.append("鸿蒙版本号：" + ze.t());
        }
        this.mDeviceInfoTv.setText(sb.toString());
    }

    @Override // com.apk.f6
    public void initView() {
        super.initView();
        initTopBarOnlyTitle(R.id.activity_disclaimer_actionbar, "测试页面");
    }

    @OnClick({R.id.mh_chapter_test_request, R.id.activity_jlsp_btn, R.id.activity_test_req_btn, R.id.activity_tts_btn, R.id.activity_test_mh_share_btn, R.id.test_device_info_tv, R.id.tg_copy_xs, R.id.tg_copy_mh, R.id.novel_book_download_zip})
    public void menuClick(View view) {
        if (view.getId() == R.id.mh_chapter_test_request) {
            "1234567890".substring(0, 100);
        } else if (view.getId() == R.id.activity_jlsp_btn) {
            showPopupLoading();
        } else if (view.getId() == R.id.activity_test_req_btn) {
        } else {
            if (view.getId() == R.id.activity_tts_btn) {
                ze.W("SP_VIDEO_FREE_AD_KEY");
                kf.m1482for(this, null, "aa");
            } else if (view.getId() == R.id.activity_test_mh_share_btn) {
                StringBuilder m1016super = Cgoto.m1016super("FromShare#");
                m1016super.append(w0.m2869class());
                ze.m3160class(m1016super.toString());
            } else if (view.getId() == R.id.test_device_info_tv) {
                i("5A:D8:CE:CC:E8:15:26:5A:1A:AE:69:F1:DD:AC:60:FE");
                i("15:5C:49:F2:14:04:9C:4E:80:11:45:22:0D:84:E6:FA");
                i("A4:4C:FA:F1:3A:2C:AA:11:A6:F6:EA:F7:B4:E2:5B:CD");
                i("74:5B:59:0A:F0:C9:C7:D8:A7:D0:5C:7D:49:AC:B5:B5");
                i("F1:BD:D9:28:48:9A:DA:6D:FA:08:62:AB:75:B6:DD:84");
                i("40:B8:28:27:EE:EC:6D:7A:91:3B:79:C5:00:B3:33:E4");
                TrAdSdk.setDayNightTheme(false);
            } else if (view.getId() == R.id.tg_copy_xs) {
                ze.m3160class("tgver9#{\"id\":\"519138\",\"istop\":false,\"name\":\"战神狼婿\",\"author\":\"天蚕土豆\",\"cid\":\"to_read\"}");
            } else if (view.getId() == R.id.tg_copy_mh) {
                try {
                    new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + Environment.DIRECTORY_DOWNLOADS, "aaaab.txt").createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            } else {
                view.getId();
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        int[] iArr;
        super.onActivityResult(i, i2, intent);
        if (i == 1024 && i2 == -1) {
            r50 r50Var = r50.Cif.f4002do;
            SplashAD splashAD = r50Var.f3997goto;
            ViewGroup viewGroup = (ViewGroup) getWindow().getDecorView();
            ViewGroup viewGroup2 = (ViewGroup) findViewById(16908290);
            Cdo cdo = new Cdo(this, splashAD);
            if (viewGroup == null || viewGroup2 == null || r50Var.f3997goto == null || r50Var.f4000this == null) {
                return;
            }
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            int i3 = r50Var.f3992class[1] - iArr2[1];
            r50.m2244case(r50Var.f4000this);
            viewGroup.addView(r50Var.f4000this, new FrameLayout.LayoutParams(r50Var.f3989break, r50Var.f3991catch));
            r50Var.f4000this.setX(iArr[0] - iArr2[0]);
            r50Var.f4000this.setY(i3);
            View view = r50Var.f4000this;
            r50Var.f3997goto = null;
            r50Var.f4000this = null;
            if (view != null) {
                Context context = viewGroup2.getContext();
                int[] iArr3 = new int[2];
                view.getLocationOnScreen(iArr3);
                int width = view.getWidth();
                int height = view.getHeight();
                int width2 = viewGroup.getWidth();
                int height2 = viewGroup.getHeight();
                if (width2 == 0) {
                    width2 = r50Var.f3993const;
                }
                if (height2 == 0) {
                    height2 = r50Var.f3995final;
                }
                int i4 = r50Var.f3998if;
                float f = i4 / width;
                int i5 = r50Var.f3996for;
                float f2 = i5 / height;
                float f3 = r50Var.f3990case == 0 ? r50Var.f3999new : (width2 - r50Var.f3999new) - i4;
                float f4 = (height2 - r50Var.f4001try) - i5;
                int i6 = iArr3[0];
                int i7 = iArr3[1];
                r50.m2244case(view);
                viewGroup.addView(view, new FrameLayout.LayoutParams(width, height));
                q50 q50Var = new q50(context, r50Var.f3999new);
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                view.animate().scaleX(f).scaleY(f2).x(f3).y(f4).setInterpolator(new OvershootInterpolator(0.0f)).setDuration(r50Var.f3994else).setListener(new s50(r50Var, cdo, view, viewGroup2, f3, iArr3, f4, q50Var));
            }
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("login_action".equals(mfVar.f3028do)) {
            try {
                Object[] objArr = mfVar.f3029for;
                String str = (String) objArr[1];
                if (((Boolean) objArr[2]).booleanValue()) {
                    ToastUtils.show((CharSequence) str);
                } else {
                    ToastUtils.show((CharSequence) str);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
