package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.config.FieldManager;
/* compiled from: UTDIdTracker.java */
/* loaded from: classes7.dex */
public class j extends a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f12313a = "utdid";
    public Context b;

    public j(Context context) {
        super(f12313a);
        this.b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.b.u)) {
                return (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, this.b);
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
