package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.commonsdk.config.FieldManager;

/* compiled from: OaidTracking.java */
/* loaded from: classes7.dex */
public class h extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12311a = "umeng_sp_oaid";
    public static final String b = "key_umeng_sp_oaid";
    public static final String c = "key_umeng_sp_oaid_required_time";
    public static final String d = "oaid";
    public Context e;

    public h(Context context) {
        super(d);
        this.e = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (FieldManager.allow(com.umeng.commonsdk.utils.b.G)) {
            try {
                SharedPreferences sharedPreferences = this.e.getSharedPreferences(f12311a, 0);
                if (sharedPreferences != null) {
                    return sharedPreferences.getString(b, "");
                }
                return null;
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }
}
