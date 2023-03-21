package com.biquge.ebook.app.ui.activity;

import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.widget.TextView;
import butterknife.BindView;
import com.apk.ci;
import com.apk.ei;
import com.apk.f6;
import com.apk.fi;
import com.apk.ft;
import com.apk.mf;
import com.apk.ze;
import com.biquge.ebook.app.app.AppContext;
import com.hjq.toast.ToastUtils;
import java.io.IOException;
import kimi.wuhends.ebooks.R;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes8.dex */
public class WifiBookActivity extends f6 {

    /* renamed from: do  reason: not valid java name */
    public boolean f6884do;
    @BindView(R.id.wifi_book_connection_address_txt)
    public TextView mAdressTxtView;
    @BindView(R.id.wifi_book_state_txt)
    public TextView mStateTextView;
    @BindView(R.id.wifi_book_name_txt)
    public TextView mWifiNameTxtView;

    /* renamed from: com.biquge.ebook.app.ui.activity.WifiBookActivity$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements ft {
        public Cdo() {
        }

        @Override // com.apk.ft
        public void onClick() {
            WifiBookActivity.this.finish();
        }
    }

    @Override // com.apk.f6, android.app.Activity
    public void finish() {
        super.finish();
        if (this.f6884do) {
            ze.V();
        }
    }

    @Override // com.apk.f6
    public int getLayoutId() {
        return R.layout.activity_wifi_book;
    }

    @Override // com.apk.f6
    public void initData() {
        String str;
        ConnectivityManager connectivityManager;
        try {
            WifiInfo connectionInfo = ((WifiManager) AppContext.f6392case.getSystemService("wifi")).getConnectionInfo();
            str = connectionInfo != null ? connectionInfo.getSSID() : null;
            if ((TextUtils.isEmpty(str) || "<unknown ssid>".equals(str)) && (connectivityManager = (ConnectivityManager) AppContext.f6392case.getSystemService("connectivity")) != null) {
                str = connectivityManager.getNetworkInfo(1).getExtraInfo();
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        if (!TextUtils.isEmpty(str)) {
            this.mWifiNameTxtView.setText(ze.r(R.string.wifi_import_book_connection_wifi_name_txt, str.replace("\"", "")));
            this.mWifiNameTxtView.setVisibility(0);
        } else {
            this.mWifiNameTxtView.setVisibility(4);
        }
        WifiManager wifiManager = (WifiManager) AppContext.f6392case.getSystemService("wifi");
        String formatIpAddress = wifiManager != null ? Formatter.formatIpAddress(wifiManager.getDhcpInfo().ipAddress) : "";
        if (!TextUtils.isEmpty(formatIpAddress)) {
            this.mStateTextView.setText(ze.q(R.string.wifi_import_book_open_wifi_txt));
            TextView textView = this.mAdressTxtView;
            StringBuilder sb = new StringBuilder();
            sb.append("http://");
            sb.append(formatIpAddress);
            sb.append(":");
            ci.m347do();
            sb.append(8080);
            textView.setText(sb.toString());
            if (fi.f1295else == null) {
                fi.f1295else = new fi(8080);
            }
            fi fiVar = fi.f1295else;
            ei.f1068do = fiVar;
            try {
                fiVar.m461for();
                return;
            } catch (IOException e2) {
                e2.printStackTrace();
                return;
            }
        }
        this.mStateTextView.setText(ze.q(R.string.wifi_import_book_no_open_wifi_txt));
        findViewById(R.id.wifi_transmit_book_layout).setVisibility(4);
    }

    @Override // com.apk.f6
    public void initView() {
        initTopBarOnlyTitle(R.id.wifi_book_actionbar, R.string.main_edit_wifi_import_book_txt);
        this.mAdressTxtView.setSelected(true);
        registerEventBus(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (ei.f1069if) {
            ze.b0(this, ze.q(R.string.wifi_import_book_activity_finish_txt), new Cdo(), null, false);
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.apk.f6, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        fi fiVar = ei.f1068do;
        if (fiVar != null) {
            try {
                fiVar.f869for.close();
                fiVar.f871new.join();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        unRegisterEventBus(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(mf mfVar) {
        if ("WIFI_TRANSFER_FILE_KEY".equals(mfVar.f3028do)) {
            try {
                this.f6884do = true;
                String str = (String) mfVar.f3030if;
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                ToastUtils.show((CharSequence) (str + ze.q(R.string.add_bookshlef_txt)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
