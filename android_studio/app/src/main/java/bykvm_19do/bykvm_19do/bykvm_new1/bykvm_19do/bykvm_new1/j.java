package bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.bykvm_new1;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.baidu.tts.client.SpeechSynthesizer;

/* compiled from: SettingManager.java */
/* loaded from: classes8.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    public SharedPreferences f11090a;

    public j(Context context) {
        this.f11090a = context.getSharedPreferences("npth", 0);
    }

    public void a(String str) {
        this.f11090a.edit().putString("device_id", str).apply();
    }

    public String a() {
        String c = bykvm_19do.bykvm_19do.bykvm_new1.bykvm_19do.i.e().c();
        return (TextUtils.isEmpty(c) || SpeechSynthesizer.REQUEST_DNS_OFF.equals(c)) ? this.f11090a.getString("device_id", SpeechSynthesizer.REQUEST_DNS_OFF) : c;
    }
}
