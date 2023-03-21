package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;

/* loaded from: classes8.dex */
public final class y0 implements a1 {
    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public boolean a(Context context) {
        return Build.VERSION.SDK_INT > 28;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        try {
            ContentProviderClient acquireContentProviderClient = context.getContentResolver().acquireContentProviderClient(Uri.parse("content://cn.nubia.identity/identity"));
            if (acquireContentProviderClient == null) {
                return null;
            }
            Bundle call = acquireContentProviderClient.call("getOAID", null, null);
            if (Build.VERSION.SDK_INT >= 24) {
                acquireContentProviderClient.close();
            } else {
                acquireContentProviderClient.release();
            }
            if (call == null) {
                return null;
            }
            if (call.getInt(PluginConstants.KEY_ERROR_CODE, -1) == 0) {
                a1.a aVar = new a1.a();
                aVar.f10613a = call.getString("id");
                return aVar;
            }
            TextUtils.isEmpty(call.getString("message"));
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
