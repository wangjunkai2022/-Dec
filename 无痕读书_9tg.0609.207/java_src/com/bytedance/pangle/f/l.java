package com.bytedance.pangle.f;

import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
/* loaded from: classes8.dex */
public final class l implements k {

    /* renamed from: a  reason: collision with root package name */
    public static final long f11332a = Os.sysconf(OsConstants._SC_PAGESIZE);
    public final FileDescriptor b;
    public final long c;
    public final long d;

    public l(FileDescriptor fileDescriptor, long j, long j2) {
        this.b = fileDescriptor;
        this.c = j;
        this.d = j2;
    }

    @Override // com.bytedance.pangle.f.k
    public final long a() {
        return this.d;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0120 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.bytedance.pangle.f.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.bytedance.pangle.f.j r20, long r21, int r23) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.pangle.f.l.a(com.bytedance.pangle.f.j, long, int):void");
    }
}
