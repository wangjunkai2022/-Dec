package com.apk;

/* compiled from: PtrUIHandlerHolder.java */
/* loaded from: classes8.dex */
public class vs implements us {

    /* renamed from: do  reason: not valid java name */
    public us f5200do;

    /* renamed from: if  reason: not valid java name */
    public vs f5201if;

    /* renamed from: case  reason: not valid java name */
    public boolean m2835case() {
        return this.f5200do != null;
    }

    @Override // com.apk.us
    /* renamed from: do */
    public void mo2352do(ss ssVar) {
        vs vsVar = this;
        do {
            us usVar = vsVar.f5200do;
            if (usVar != null) {
                usVar.mo2352do(ssVar);
            }
            vsVar = vsVar.f5201if;
        } while (vsVar != null);
    }

    @Override // com.apk.us
    /* renamed from: for */
    public void mo2353for(ss ssVar) {
        if (m2835case()) {
            vs vsVar = this;
            do {
                us usVar = vsVar.f5200do;
                if (usVar != null) {
                    usVar.mo2353for(ssVar);
                }
                vsVar = vsVar.f5201if;
            } while (vsVar != null);
        }
    }

    @Override // com.apk.us
    /* renamed from: if */
    public void mo2354if(ss ssVar, boolean z, byte b, xs xsVar) {
        vs vsVar = this;
        do {
            us usVar = vsVar.f5200do;
            if (usVar != null) {
                usVar.mo2354if(ssVar, z, b, xsVar);
            }
            vsVar = vsVar.f5201if;
        } while (vsVar != null);
    }

    @Override // com.apk.us
    /* renamed from: new */
    public void mo2355new(ss ssVar) {
        vs vsVar = this;
        do {
            us usVar = vsVar.f5200do;
            if (usVar != null) {
                usVar.mo2355new(ssVar);
            }
            vsVar = vsVar.f5201if;
        } while (vsVar != null);
    }

    @Override // com.apk.us
    /* renamed from: try */
    public void mo2356try(ss ssVar) {
        vs vsVar = this;
        do {
            us usVar = vsVar.f5200do;
            if (usVar != null) {
                usVar.mo2356try(ssVar);
            }
            vsVar = vsVar.f5201if;
        } while (vsVar != null);
    }
}
