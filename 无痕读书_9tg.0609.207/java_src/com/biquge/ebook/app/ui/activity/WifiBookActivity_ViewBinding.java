package com.biquge.ebook.app.ui.activity;

import android.view.View;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import kimi.wuhends.ebooks.R;
/* loaded from: classes8.dex */
public class WifiBookActivity_ViewBinding implements Unbinder {

    /* renamed from: do  reason: not valid java name */
    public WifiBookActivity f6886do;

    /* renamed from: if  reason: not valid java name */
    public View f6887if;

    /* renamed from: com.biquge.ebook.app.ui.activity.WifiBookActivity_ViewBinding$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo extends DebouncingOnClickListener {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ WifiBookActivity f6888do;

        public Cdo(WifiBookActivity_ViewBinding wifiBookActivity_ViewBinding, WifiBookActivity wifiBookActivity) {
            this.f6888do = wifiBookActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            if (this.f6888do == null) {
                throw null;
            }
        }
    }

    @UiThread
    public WifiBookActivity_ViewBinding(WifiBookActivity wifiBookActivity, View view) {
        this.f6886do = wifiBookActivity;
        wifiBookActivity.mWifiNameTxtView = (TextView) Utils.findRequiredViewAsType(view, R.id.wifi_book_name_txt, "field 'mWifiNameTxtView'", TextView.class);
        wifiBookActivity.mStateTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.wifi_book_state_txt, "field 'mStateTextView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.wifi_book_connection_address_txt, "field 'mAdressTxtView' and method 'menuClick'");
        wifiBookActivity.mAdressTxtView = (TextView) Utils.castView(findRequiredView, R.id.wifi_book_connection_address_txt, "field 'mAdressTxtView'", TextView.class);
        this.f6887if = findRequiredView;
        findRequiredView.setOnClickListener(new Cdo(this, wifiBookActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        WifiBookActivity wifiBookActivity = this.f6886do;
        if (wifiBookActivity != null) {
            this.f6886do = null;
            wifiBookActivity.mWifiNameTxtView = null;
            wifiBookActivity.mStateTextView = null;
            wifiBookActivity.mAdressTxtView = null;
            this.f6887if.setOnClickListener(null);
            this.f6887if = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
