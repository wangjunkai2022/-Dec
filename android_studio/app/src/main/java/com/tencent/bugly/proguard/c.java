package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public class c extends a {
    public HashMap<String, byte[]> d = null;
    public HashMap<String, Object> e = new HashMap<>();
    public h f = new h();

    @Override // com.tencent.bugly.proguard.a
    public final /* bridge */ /* synthetic */ void a(String str) {
        super.a(str);
    }

    public final <T> T b(String str, T t) throws b {
        HashMap<String, byte[]> hashMap = this.d;
        if (hashMap != null) {
            if (hashMap.containsKey(str)) {
                if (this.e.containsKey(str)) {
                    return (T) this.e.get(str);
                }
                try {
                    this.f.a(this.d.get(str));
                    this.f.a(this.b);
                    T t2 = (T) this.f.a((h) t, 0, true);
                    if (t2 != null) {
                        this.e.put(str, t2);
                    }
                    return t2;
                } catch (Exception e) {
                    throw new b(e);
                }
            }
            return null;
        } else if (this.f12069a.containsKey(str)) {
            if (this.e.containsKey(str)) {
                return (T) this.e.get(str);
            }
            byte[] bArr = new byte[0];
            Iterator<Map.Entry<String, byte[]>> it = this.f12069a.get(str).entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry<String, byte[]> next = it.next();
                next.getKey();
                bArr = next.getValue();
            }
            try {
                this.f.a(bArr);
                this.f.a(this.b);
                T t3 = (T) this.f.a((h) t, 0, true);
                this.e.put(str, t3);
                return t3;
            } catch (Exception e2) {
                throw new b(e2);
            }
        } else {
            return null;
        }
    }

    public void c() {
        this.d = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.a
    public <T> void a(String str, T t) {
        if (this.d == null) {
            super.a(str, (String) t);
        } else if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        } else {
            if (t != null) {
                if (!(t instanceof Set)) {
                    i iVar = new i();
                    iVar.a(this.b);
                    iVar.a(t, 0);
                    this.d.put(str, k.a(iVar.a()));
                    return;
                }
                throw new IllegalArgumentException("can not support Set");
            }
            throw new IllegalArgumentException("put value can not is null");
        }
    }

    @Override // com.tencent.bugly.proguard.a
    public byte[] a() {
        if (this.d != null) {
            i iVar = new i(0);
            iVar.a(this.b);
            iVar.a((Map) this.d, 0);
            return k.a(iVar.a());
        }
        return super.a();
    }

    @Override // com.tencent.bugly.proguard.a
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f.a(bArr);
            this.f.a(this.b);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.d = this.f.a((Map) hashMap, 0, false);
        }
    }
}
