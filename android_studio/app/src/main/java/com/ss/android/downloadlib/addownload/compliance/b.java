package com.ss.android.downloadlib.addownload.compliance;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import com.baidu.tts.loopj.HttpGet;
import com.bytedance.pangle.servermanager.AbsServerManager;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import com.ss.android.download.api.config.q;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.j;
import com.ss.android.downloadlib.f;
import com.ss.android.downloadlib.g.c;
import com.ss.android.downloadlib.g.l;
import com.umeng.analytics.pro.ak;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes7.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public SoftReference<Activity> f11626a;

    /* loaded from: classes7.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public static b f11630a = new b();
    }

    public void b(long j) {
        com.ss.android.downloadlib.addownload.e a2 = f.a().a(com.ss.android.downloadlib.addownload.b.f.a().e(j).b.getDownloadUrl());
        if (a2 != null) {
            a2.a(true, true);
            return;
        }
        e.a(11, j);
        com.ss.android.downloadlib.e.c.a().b("startDownload handler null");
    }

    public b() {
    }

    public static b a() {
        return a.f11630a;
    }

    public void a(long j) {
        TTDelegateActivity.a(j);
    }

    public boolean a(DownloadModel downloadModel) {
        if (downloadModel.isAd() && j.i().optInt("ad_lp_show_app_dialog") != 0) {
            String webUrl = downloadModel.getDeepLink() == null ? null : downloadModel.getDeepLink().getWebUrl();
            return (TextUtils.isEmpty(webUrl) || Pattern.compile(j.i().optString("ad_allow_web_url_regex", ".+(www.chengzijianzhan.com|www.toutiaopage.com/tetris/page|ad.toutiao.com/tetris/page).+")).matcher(webUrl).matches()) ? false : true;
        }
        return false;
    }

    public Activity b() {
        Activity activity = this.f11626a.get();
        this.f11626a = null;
        return activity;
    }

    public boolean a(@NonNull com.ss.android.downloadlib.addownload.b.e eVar) {
        long j;
        long j2;
        if (!TextUtils.isEmpty(eVar.b.getLogExtra())) {
            try {
                j = l.a(new JSONObject(eVar.b.getLogExtra()), "convert_id");
            } catch (Exception e) {
                e.printStackTrace();
                j = 0;
            }
            if (j <= 0) {
                e.a(3, eVar);
            }
            j2 = j;
        } else {
            e.a(9, eVar);
            com.ss.android.downloadlib.e.c.a().a("requestAppInfo getLogExtra null");
            j2 = 0;
        }
        final long j3 = eVar.f11597a;
        com.ss.android.downloadlib.addownload.b.b a2 = c.a().a(j2, j3);
        if (a2 != null) {
            d.a().a(a2.a(), j3, a2.d);
            a(a2.a());
            e.a("lp_app_dialog_try_show", eVar);
            return true;
        }
        StringBuilder sb = new StringBuilder();
        if (j2 > 0) {
            sb.append("convert_id=");
            sb.append(j2);
        }
        if (!TextUtils.isEmpty(eVar.b.getPackageName())) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append("package_name=");
            sb.append(eVar.b.getPackageName());
        }
        if (sb.length() <= 0) {
            e.a(6, eVar);
            return false;
        }
        StringBuilder m1016super = Cgoto.m1016super("https://apps.oceanengine.com/customer/api/app/pkg_info?");
        m1016super.append(sb.toString());
        final long j4 = j2;
        com.ss.android.downloadlib.g.c.a((c.a<String, R>) new c.a<String, Boolean>() { // from class: com.ss.android.downloadlib.addownload.compliance.b.2
            @Override // com.ss.android.downloadlib.g.c.a
            public Boolean a(String str) {
                final boolean[] zArr = {false};
                j.d().a(HttpGet.METHOD_NAME, str, new HashMap(), new q() { // from class: com.ss.android.downloadlib.addownload.compliance.b.2.1
                    @Override // com.ss.android.download.api.config.q
                    public void a(String str2) {
                        boolean[] zArr2 = zArr;
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        zArr2[0] = b.this.a(j4, j3, str2);
                    }

                    @Override // com.ss.android.download.api.config.q
                    public void a(Throwable th) {
                        e.a(2, j3);
                        zArr[0] = false;
                    }
                });
                return Boolean.valueOf(zArr[0]);
            }
        }, m1016super.toString()).a(new c.a<Boolean, Object>() { // from class: com.ss.android.downloadlib.addownload.compliance.b.1
            @Override // com.ss.android.downloadlib.g.c.a
            public Object a(Boolean bool) {
                if (bool.booleanValue()) {
                    b.this.a(com.ss.android.downloadlib.addownload.b.b.a(j4, j3));
                    e.b("lp_app_dialog_try_show", j3);
                    return null;
                }
                b.this.b(j3);
                return null;
            }
        }).a();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j, long j2, String str) {
        try {
            JSONObject optJSONObject = new JSONObject(str).optJSONObject(AbsServerManager.PACKAGE_QUERY_BINDER);
            if (optJSONObject != null && optJSONObject.length() != 0) {
                com.ss.android.downloadlib.addownload.b.b bVar = new com.ss.android.downloadlib.addownload.b.b();
                bVar.f11593a = j;
                bVar.b = j2;
                bVar.d = optJSONObject.optString("icon_url");
                bVar.e = optJSONObject.optString("app_name");
                bVar.c = optJSONObject.optString(ak.o);
                bVar.f = optJSONObject.optString(NativeUnifiedADAppInfoImpl.Keys.VERSION_NAME);
                bVar.g = optJSONObject.optString("developer_name");
                bVar.i = optJSONObject.optString("policy_url");
                JSONArray optJSONArray = optJSONObject.optJSONArray(com.bytedance.msdk.api.activity.TTDelegateActivity.INTENT_PERMISSIONS);
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        JSONObject jSONObject = (JSONObject) optJSONArray.get(i);
                        bVar.h.add(new Pair<>(jSONObject.optString("permission_name"), jSONObject.optString("permission_desc")));
                    }
                }
                c.a().a(bVar);
                d.a().a(bVar.a(), j2, bVar.d);
                return true;
            }
            e.a(7, j2);
            return false;
        } catch (Exception e) {
            com.ss.android.downloadlib.e.c.a().a(e, "AdLpComplianceManager parseResponse");
            e.a(7, j2);
            return false;
        }
    }

    public void a(Activity activity) {
        this.f11626a = new SoftReference<>(activity);
    }
}
