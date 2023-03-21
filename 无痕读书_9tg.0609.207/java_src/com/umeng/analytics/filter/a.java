package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
/* compiled from: EventBlackList.java */
/* loaded from: classes7.dex */
public class a extends EventList {

    /* renamed from: a  reason: collision with root package name */
    public d f12126a;
    public Object b;

    public a(String str, String str2) {
        super(str, str2);
        this.b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    public void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.b) {
            this.f12126a = null;
            this.f12126a = new d(false, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean a2;
        if (TextUtils.isEmpty(this.mEventList)) {
            return false;
        }
        synchronized (this.b) {
            if (this.f12126a == null) {
                this.f12126a = new d(false, this.mEventList);
            }
            a2 = this.f12126a.a(str);
        }
        return a2;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z) {
        AnalyticsConfig.CLEAR_EKV_BL = z;
    }
}
