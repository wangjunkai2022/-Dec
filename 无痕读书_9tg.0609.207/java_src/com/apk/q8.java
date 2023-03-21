package com.apk;

import androidx.fragment.app.FragmentTransaction;
import com.biquge.ebook.app.ui.activity.UserServiceWebviewActivity;
import com.biquge.ebook.app.ui.fragment.WebViewFragment;
import com.manhua.ui.widget.PublicLoadingView;
import kimi.wuhends.ebooks.R;
import org.json.JSONObject;
/* compiled from: UserServiceWebviewActivity.java */
/* loaded from: classes8.dex */
public class q8 extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ UserServiceWebviewActivity f3821do;

    public q8(UserServiceWebviewActivity userServiceWebviewActivity) {
        this.f3821do = userServiceWebviewActivity;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        boolean z;
        JSONObject optJSONObject;
        Ccontinue m379if = Ccontinue.m379if();
        if (m379if != null) {
            JSONObject m2105for = q5.m2105for();
            if (m2105for == null) {
                m2105for = x4.m2961super(w.m2843do(), 0L, xw.NO_CACHE);
            }
            if (m2105for == null || (optJSONObject = m2105for.optJSONObject("data")) == null) {
                z = false;
            } else {
                m379if.m385try(optJSONObject);
                z = true;
            }
            return Boolean.valueOf(z);
        }
        throw null;
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        String m2862throws;
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        if (bool2.booleanValue()) {
            PublicLoadingView publicLoadingView = this.f3821do.loadingView;
            if (publicLoadingView != null) {
                publicLoadingView.m3666for();
            }
            UserServiceWebviewActivity userServiceWebviewActivity = this.f3821do;
            FragmentTransaction beginTransaction = userServiceWebviewActivity.getSupportFragmentManager().beginTransaction();
            String str = userServiceWebviewActivity.f6852do;
            if (userServiceWebviewActivity.f6853if == 1) {
                m2862throws = w.m2851import();
            } else {
                m2862throws = w.m2862throws();
            }
            beginTransaction.add(R.id.framelayout, WebViewFragment.a(str, m2862throws, false, false, false)).commit();
            return;
        }
        PublicLoadingView publicLoadingView2 = this.f3821do.loadingView;
        if (publicLoadingView2 != null) {
            publicLoadingView2.setError(null);
        }
    }

    @Override // com.apk.c1
    public void onPreExecute() {
        super.onPreExecute();
        PublicLoadingView publicLoadingView = this.f3821do.loadingView;
        if (publicLoadingView != null) {
            publicLoadingView.m3667if();
        }
    }
}
