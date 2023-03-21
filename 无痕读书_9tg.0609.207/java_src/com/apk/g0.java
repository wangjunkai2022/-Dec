package com.apk;

import android.content.Context;
import com.baidu.tts.client.SpeechSynthesizeBag;
import java.util.List;
/* compiled from: TtsSpeechUtils.java */
/* loaded from: classes8.dex */
public class g0 {

    /* renamed from: do  reason: not valid java name */
    public c0 f1485do;

    /* renamed from: for  reason: not valid java name */
    public int f1486for = 1;

    /* renamed from: if  reason: not valid java name */
    public yb0 f1487if;

    /* compiled from: TtsSpeechUtils.java */
    /* renamed from: com.apk.g0$do  reason: invalid class name */
    /* loaded from: classes8.dex */
    public class Cdo implements zb0 {

        /* renamed from: do  reason: not valid java name */
        public final /* synthetic */ e1 f1488do;

        /* renamed from: if  reason: not valid java name */
        public final /* synthetic */ Context f1490if;

        public Cdo(e1 e1Var, Context context) {
            this.f1488do = e1Var;
            this.f1490if = context;
        }
    }

    public g0(Context context, e1 e1Var) {
        context.getApplicationContext();
        this.f1487if = new yb0(new Cdo(e1Var, context));
    }

    /* renamed from: do  reason: not valid java name */
    public boolean m900do() {
        return this.f1486for == 1;
    }

    /* renamed from: for  reason: not valid java name */
    public void m901for() {
        c0 c0Var;
        f0 f0Var;
        if (m900do()) {
            yb0 yb0Var = this.f1487if;
            if (yb0Var != null && yb0Var == null) {
                throw null;
            }
        } else if (this.f1486for != 2 || (c0Var = this.f1485do) == null || (f0Var = c0Var.f478for) == null) {
        } else {
            f0Var.f1164new.resume();
        }
    }

    /* renamed from: if  reason: not valid java name */
    public void m902if() {
        c0 c0Var;
        f0 f0Var;
        if (m900do()) {
            yb0 yb0Var = this.f1487if;
            if (yb0Var != null && yb0Var == null) {
                throw null;
            }
        } else if (this.f1486for != 2 || (c0Var = this.f1485do) == null || (f0Var = c0Var.f478for) == null) {
        } else {
            f0Var.f1164new.pause();
        }
    }

    /* renamed from: new  reason: not valid java name */
    public void m903new(String str, List<SpeechSynthesizeBag> list) {
        c0 c0Var;
        if (m900do()) {
            yb0 yb0Var = this.f1487if;
        } else if (this.f1486for != 2 || (c0Var = this.f1485do) == null) {
        } else {
            if (list != null) {
                synchronized (c0Var) {
                    try {
                        c0Var.f478for.f1164new.batchSpeak(list);
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                return;
            }
            synchronized (c0Var) {
                try {
                    c0Var.f478for.f1164new.speak(str);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m904try() {
        c0 c0Var;
        if (m900do()) {
            yb0 yb0Var = this.f1487if;
            if (yb0Var != null && yb0Var == null) {
                throw null;
            }
        } else if (this.f1486for != 2 || (c0Var = this.f1485do) == null) {
        } else {
            c0Var.m298case();
        }
    }
}
