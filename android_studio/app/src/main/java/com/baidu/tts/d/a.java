package com.baidu.tts.d;

import java.util.HashMap;
import java.util.Map;

/* compiled from: CheckResult.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11181a = false;
    public Map<String, Integer> b = new HashMap();

    public boolean a() {
        return this.f11181a;
    }

    public boolean b() {
        for (Integer num : this.b.values()) {
            if (num.intValue() != 7) {
                return false;
            }
        }
        return true;
    }

    public void a(boolean z) {
        this.f11181a = z;
    }

    public void a(String str, int i) {
        this.b.put(str, Integer.valueOf(i));
    }
}
