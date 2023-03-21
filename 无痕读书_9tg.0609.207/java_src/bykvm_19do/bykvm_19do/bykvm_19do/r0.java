package bykvm_19do.bykvm_19do.bykvm_19do;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import bykvm_19do.bykvm_19do.bykvm_19do.a1;
import bykvm_19do.bykvm_19do.bykvm_19do.j1;
import bykvm_19do.bykvm_19do.bykvm_19do.r1;
import com.bun.miitmdid.content.StringValues;
/* loaded from: classes8.dex */
public final class r0 extends p0<r1> {
    public r0() {
        super("com.mdid.msa");
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.p0
    public j1.b<r1, String> a() {
        return new a(this);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.p0, bykvm_19do.bykvm_19do.bykvm_19do.a1
    public a1.a b(Context context) {
        a(context, context.getPackageName());
        return super.b(context);
    }

    @Override // bykvm_19do.bykvm_19do.bykvm_19do.p0
    public Intent c(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaIdService");
        intent.setAction(StringValues.ACTION_BINDTO_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, context.getPackageName());
        return intent;
    }

    /* loaded from: classes8.dex */
    public class a implements j1.b<r1, String> {
        public a(r0 r0Var) {
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        /* renamed from: b */
        public r1 a(IBinder iBinder) {
            return r1.a.a(iBinder);
        }

        @Override // bykvm_19do.bykvm_19do.bykvm_19do.j1.b
        public String a(r1 r1Var) {
            if (r1Var == null) {
                return null;
            }
            return r1Var.a();
        }
    }

    private void a(Context context, String str) {
        Intent intent = new Intent();
        intent.setClassName("com.mdid.msa", "com.mdid.msa.service.MsaKlService");
        intent.setAction(StringValues.ACTION_START_MSASERVICE);
        intent.putExtra(StringValues.PARAM_BIND_PKGNAME, str);
        try {
            intent.putExtra("com.bun.msa.param.runinset", true);
            context.startService(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
