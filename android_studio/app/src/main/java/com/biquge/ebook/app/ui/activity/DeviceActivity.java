package com.biquge.ebook.app.ui.activity;

import android.widget.TextView;
import com.apk.Ccontinue;
import com.apk.Cgoto;
import com.apk.eg;
import com.apk.f6;
import com.apk.kg;
import com.apk.p0;
import com.apk.tt;
import com.apk.w;
import com.apk.w0;
import com.apk.ys;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.biquge.ebook.app.bean.BaiduTtsConfigBean;
import com.biquge.ebook.app.widget.SwitchButton;
import com.hjq.toast.ToastUtils;
import java.io.IOException;
import java.io.InputStream;
import kimi.wuhends.ebooks.R;

/* loaded from: classes8.dex */
public class DeviceActivity extends f6 {

    /* renamed from: com.biquge.ebook.app.ui.activity.DeviceActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements SwitchButton.Cnew {
        public Cdo(DeviceActivity deviceActivity) {
        }

        @Override // com.biquge.ebook.app.widget.SwitchButton.Cnew
        public void onCheckedChanged(SwitchButton switchButton, boolean z) {
            tt.f4763do.putBoolean("SP_OPEN_CHARLES_KEY", z);
            if (z) {
                ToastUtils.show((CharSequence) "打开开关需要杀掉进程重启");
            }
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_device;
    }

    @Override // com.apk.f6
    public void initData() {
    }

    @Override // com.apk.f6
    public void initView() {
        String str;
        initTopBarOnlyTitle(R.id.device_actionbar, kg.m1498if());
        StringBuilder sb = new StringBuilder();
        sb.append(ze.b());
        sb.append(" / ");
        sb.append(ze.c());
        sb.append(" / ");
        sb.append(ze.g());
        sb.append("\n网络：");
        sb.append(eg.m600implements() ? eg.a() ? "WiFi" : "4G" : "无网");
        sb.append("\n渠道：");
        sb.append(ze.m3162continue(AppContext.f6392case));
        sb.append(" & build=");
        sb.append(ze.k());
        sb.append(" & vname=");
        sb.append(ze.m());
        sb.append("\n包名：");
        sb.append(ze.m3168finally());
        sb.append("\nImei：");
        sb.append(ys.m3116if().f3936do);
        sb.append("\nOaid：");
        sb.append(eg.m609public());
        sb.append("\nAndroid Id：");
        sb.append(ys.m3116if().f3939if);
        sb.append("\nmac 地址：");
        sb.append(ys.m3116if().f3938for);
        sb.append("\napp imei：");
        sb.append(eg.m591default(true, true, false));
        sb.append("\napp imei的md5：");
        sb.append(eg.m591default(true, true, true));
        sb.append("\n实际项目中用的deviceId：");
        sb.append(eg.m613super());
        sb.append("\n打包的语音参数：");
        sb.append("24792355");
        sb.append("\nxs动态域名：");
        sb.append(p0.m2009new());
        sb.append("\nxs静态域名：");
        sb.append(p0.m1999class());
        sb.append("\nxs目录：");
        sb.append("ver9/whds");
        sb.append("  /  ");
        sb.append("ver9/base");
        sb.append("\nmh动态域名：");
        sb.append(p0.m2014try());
        sb.append("\nmh静态域名：");
        sb.append(p0.m1998catch());
        sb.append("\nmh公共目录：");
        sb.append("ver9/base");
        sb.append("\n广告地址：");
        sb.append(w.m2843do());
        String sb2 = sb.toString();
        BaiduTtsConfigBean baiduTtsConfigBean = Ccontinue.m379if().f713final;
        if (baiduTtsConfigBean != null) {
            StringBuilder m1025while = Cgoto.m1025while(Cgoto.m989case(sb2, "\n"), "配置的语音参数：");
            m1025while.append(baiduTtsConfigBean.getTagStr());
            sb2 = m1025while.toString();
        }
        ((TextView) findViewById(R.id.app_info_tv)).setText(sb2);
        TextView textView = (TextView) findViewById(R.id.device_update_tv);
        try {
            InputStream open = getAssets().open("update.txt");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            str = new String(bArr, "utf-8");
        } catch (IOException e) {
            e.printStackTrace();
            str = "读取错误，请检查文件名";
        }
        textView.setText(str);
        SwitchButton switchButton = (SwitchButton) findViewById(R.id.cb_open_zhuabao);
        switchButton.setOnCheckedChangeListener(new Cdo(this));
        switchButton.setChecked(w0.m2893switch());
    }
}
