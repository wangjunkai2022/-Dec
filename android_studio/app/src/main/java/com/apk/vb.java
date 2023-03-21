package com.apk;

import com.biquge.ebook.app.ui.fragment.InfoFragment;
import kimi.wuhends.ebooks.R;

/* compiled from: InfoFragment.java */
/* loaded from: classes8.dex */
public class vb extends c1<Boolean> {

    /* renamed from: do  reason: not valid java name */
    public boolean f5059do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ InfoFragment f5060if;

    public vb(InfoFragment infoFragment) {
        this.f5060if = infoFragment;
    }

    @Override // com.apk.c1
    public Boolean doInBackground() {
        if (Ccontinue.m379if().f729while != hf.COMIC) {
            this.f5059do = ze.m3179private("SP_INFO_UPLOAD_BOOK_KEY", true);
        }
        return Boolean.valueOf(w0.m2880if());
    }

    @Override // com.apk.c1
    public void onPostExecute(Boolean bool) {
        Boolean bool2 = bool;
        super.onPostExecute(bool2);
        InfoFragment infoFragment = this.f5060if;
        if (bool2.booleanValue()) {
            if (infoFragment.f7487for == null) {
                xp0 xp0Var = new xp0(infoFragment.getSupportActivity());
                infoFragment.f7487for = xp0Var;
                xp0Var.m3031do(infoFragment.findViewById(R.id.function_navigation_mynews));
                xp0Var.m3037this(eg.m587catch(15.0f), eg.m587catch(6.5f), true);
                xp0Var.m3034goto(-1);
            }
        } else {
            xp0 xp0Var2 = infoFragment.f7487for;
            if (xp0Var2 != null) {
                xp0Var2.m3034goto(0);
            }
        }
        InfoFragment infoFragment2 = this.f5060if;
        if (this.f5059do) {
            if (infoFragment2.f7490new == null) {
                xp0 xp0Var3 = new xp0(infoFragment2.getSupportActivity());
                infoFragment2.f7490new = xp0Var3;
                xp0Var3.m3031do(infoFragment2.mUploadTv);
                xp0Var3.m3037this(eg.m587catch(15.0f), eg.m587catch(6.5f), true);
                xp0Var3.m3034goto(-1);
                return;
            }
            return;
        }
        xp0 xp0Var4 = infoFragment2.f7490new;
        if (xp0Var4 != null) {
            xp0Var4.m3034goto(0);
        }
    }
}
