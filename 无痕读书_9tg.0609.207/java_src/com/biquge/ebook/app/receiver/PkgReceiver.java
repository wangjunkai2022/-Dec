package com.biquge.ebook.app.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.apk.Ccontinue;
import com.apk.mf;
import com.apk.p;
import com.apk.tt;
import com.biquge.ebook.app.bean.MhtgTwoBean;
import com.biquge.ebook.app.bean.NewVersionBean;
/* loaded from: classes8.dex */
public class PkgReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String dataString = intent.getDataString();
        if (!TextUtils.isEmpty(dataString)) {
            dataString = dataString.replace("package:", "");
        }
        if (TextUtils.isEmpty(dataString)) {
            return;
        }
        if (action.equals("android.intent.action.PACKAGE_ADDED") || action.equals("android.intent.action.PACKAGE_REPLACED")) {
            MhtgTwoBean mhtgTwoBean = Ccontinue.m379if().f725this;
            if (mhtgTwoBean != null && dataString.equals(mhtgTwoBean.getPgname())) {
                tt.f4763do.putLong("SP_MHTG2_INSTALL_TIME_KEY", System.currentTimeMillis());
                mf.m1712do("REFRESH_CARTOON_DOWNLOAD_KEY", null);
            }
            NewVersionBean newVersionBean = p.m1990for().f3533if;
            if (newVersionBean == null || !dataString.equals(newVersionBean.getOther_pkg())) {
                return;
            }
            p m1990for = p.m1990for();
            p.Cnew cnew = m1990for.f3532for;
            if (cnew != null) {
                cnew.h();
            }
            p.Cnew cnew2 = m1990for.f3534new;
            if (cnew2 != null) {
                cnew2.h();
            }
            p.Cnew cnew3 = m1990for.f3535try;
            if (cnew3 != null) {
                cnew3.h();
            }
            p.f3530case = null;
        }
    }
}
