package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.adapter.config.TTBaseAdapterConfiguration;
import com.bytedance.msdk.api.v2.GMNetworkRequestInfo;
import java.util.HashMap;
import java.util.Map;

/* compiled from: AdInitPangleBase.java */
/* loaded from: classes8.dex */
public abstract class j extends d {
    public String c;

    public j(Context context) {
        super(context, null);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.a c = c();
        if (c != null) {
            this.c = c.a();
        }
        if (TextUtils.isEmpty(this.c)) {
            this.c = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().b();
        }
    }

    public static j a(Context context) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().x()) {
            return new k(context);
        }
        return new i(context);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.c
    public Map<String, Object> d() {
        HashMap hashMap = new HashMap();
        hashMap.put("app_id", this.c);
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_IS_PANGLE_USE_TEXTURE_VIEW, Boolean.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().B()));
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_APP_NAME, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().h());
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_IS_PANGLE_PAID, Boolean.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().A()));
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_TITLE_BAR_THEME, Integer.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().n()));
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_IS_PANGLE_ALLOW_SHOW_NOTIFY, Boolean.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().y()));
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_IS_PANGLE_ALLOW_SHOW_PAGE_WHEN_SCREEN_LOCK, Boolean.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().z()));
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_DIRECT_DOWNLOAD_NETWORKTYPE, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().o());
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_DATA, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().j());
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_NEED_CLEAR_TASK_RESET, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().l());
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_KEYWORDS, bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().k());
        hashMap.put(TTBaseAdapterConfiguration.PANGLE_PLUGIN_UPDATE_CONFIG, Integer.valueOf(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().m()));
        return hashMap;
    }

    public static j a(Context context, GMNetworkRequestInfo gMNetworkRequestInfo) {
        if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.b.G().x()) {
            return new k(context, gMNetworkRequestInfo);
        }
        return new i(context, gMNetworkRequestInfo);
    }

    public j(Context context, GMNetworkRequestInfo gMNetworkRequestInfo) {
        super(context, gMNetworkRequestInfo);
        if (gMNetworkRequestInfo != null) {
            this.c = gMNetworkRequestInfo.getAppId();
        }
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.bykvm_19do.c
    public String a() {
        return TextUtils.isEmpty(this.c) ? "appId为空" : "";
    }
}
