package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public final class d extends c {
    public static HashMap<String, byte[]> f;
    public static HashMap<String, HashMap<String, byte[]>> g;
    public f e;

    public d() {
        f fVar = new f();
        this.e = fVar;
        fVar.f12088a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final <T> void a(String str, T t) {
        if (!str.startsWith(".")) {
            super.a(str, (String) t);
            return;
        }
        throw new IllegalArgumentException("put name can not startwith . , now is " + str);
    }

    public final void b(String str) {
        this.e.c = str;
    }

    @Override // com.tencent.bugly.proguard.c
    public final void c() {
        super.c();
        this.e.f12088a = (short) 3;
    }

    public final void c(String str) {
        this.e.d = str;
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final byte[] a() {
        f fVar = this.e;
        if (fVar.f12088a == 2) {
            if (!fVar.c.equals("")) {
                if (this.e.d.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (fVar.c == null) {
                fVar.c = "";
            }
            f fVar2 = this.e;
            if (fVar2.d == null) {
                fVar2.d = "";
            }
        }
        i iVar = new i(0);
        iVar.a(this.b);
        if (this.e.f12088a == 2) {
            iVar.a((Map) this.f12069a, 0);
        } else {
            iVar.a((Map) ((c) this).d, 0);
        }
        this.e.e = k.a(iVar.a());
        i iVar2 = new i(0);
        iVar2.a(this.b);
        this.e.a(iVar2);
        byte[] a2 = k.a(iVar2.a());
        int length = a2.length + 4;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length).put(a2).flip();
        return allocate.array();
    }

    @Override // com.tencent.bugly.proguard.c, com.tencent.bugly.proguard.a
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                h hVar = new h(bArr, 4);
                hVar.a(this.b);
                this.e.a(hVar);
                if (this.e.f12088a == 3) {
                    h hVar2 = new h(this.e.e);
                    hVar2.a(this.b);
                    if (f == null) {
                        HashMap<String, byte[]> hashMap = new HashMap<>();
                        f = hashMap;
                        hashMap.put("", new byte[0]);
                    }
                    ((c) this).d = hVar2.a((Map) f, 0, false);
                    return;
                }
                h hVar3 = new h(this.e.e);
                hVar3.a(this.b);
                if (g == null) {
                    g = new HashMap<>();
                    HashMap<String, byte[]> hashMap2 = new HashMap<>();
                    hashMap2.put("", new byte[0]);
                    g.put("", hashMap2);
                }
                this.f12069a = hVar3.a((Map) g, 0, false);
                new HashMap();
                return;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }

    public final void a(int i) {
        this.e.b = 1;
    }
}
