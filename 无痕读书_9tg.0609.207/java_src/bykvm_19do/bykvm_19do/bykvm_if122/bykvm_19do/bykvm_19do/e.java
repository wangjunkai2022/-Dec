package bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.adapter.util.ThreadHelper;
import com.bytedance.msdk.api.AdError;
import com.bytedance.msdk.api.AdSlot;
import com.bytedance.msdk.api.error.AdBreakError;
/* compiled from: TTInterBlockingManager.java */
/* loaded from: classes8.dex */
public abstract class e extends bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.f {

    /* compiled from: TTInterBlockingManager.java */
    /* loaded from: classes8.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ AdError f10825a;

        public a(AdError adError) {
            this.f10825a = adError;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.b(this.f10825a);
        }
    }

    /* compiled from: TTInterBlockingManager.java */
    /* loaded from: classes8.dex */
    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.k();
            e.super.S();
        }
    }

    public e(Context context, String str) {
        super(context, str);
    }

    private boolean e0() {
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        if (cVar != null) {
            for (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.i iVar : cVar.A()) {
                if (TextUtils.equals(iVar.e(), "pangle") && iVar.G()) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private AdError f0() {
        AdSlot adSlot;
        if (!this.K || (adSlot = this.h) == null) {
            return null;
        }
        AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
        shallowCopy.setLinkedId(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.d());
        AdBreakError adBreakError = new AdBreakError(AdError.ERROR_CODE_LOADED, AdError.getMessage(AdError.ERROR_CODE_LOADED));
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(shallowCopy, cVar != null ? cVar.B() : null, true, j(), (int) AdError.ERROR_CODE_LOADED);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(shallowCopy, adBreakError, cVar2 != null ? cVar2.B() : null, j());
        return adBreakError;
    }

    private AdError g0() {
        AdSlot adSlot;
        if (!this.L || (adSlot = this.h) == null) {
            return null;
        }
        AdSlot shallowCopy = bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.b.getShallowCopy(adSlot);
        shallowCopy.setLinkedId(bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.g.d());
        AdBreakError adBreakError = new AdBreakError(AdError.ERROR_CODE_SHOWED, AdError.getMessage(AdError.ERROR_CODE_SHOWED));
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(shallowCopy, cVar != null ? cVar.B() : null, true, j(), (int) AdError.ERROR_CODE_SHOWED);
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_case1.c cVar2 = this.d;
        bykvm_19do.bykvm_19do.bykvm_if122.bykvm_for12.h.a(shallowCopy, adBreakError, cVar2 != null ? cVar2.B() : null, j());
        return adBreakError;
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_if122.bykvm_19do.bykvm_new1.e
    public void S() {
        if (e0()) {
            if (bykvm_19do.bykvm_19do.bykvm_if122.bykvm_int108.a.g()) {
                ThreadHelper.runOnThreadPool(new b());
                return;
            } else {
                super.S();
                return;
            }
        }
        super.S();
    }

    public boolean d0() {
        if (this.h == null) {
            return true;
        }
        AdError g0 = g0();
        if (g0 == null && (g0 = f0()) == null) {
            return true;
        }
        ThreadHelper.runOnUiThread(new a(g0));
        return false;
    }
}
