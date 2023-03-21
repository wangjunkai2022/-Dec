package com.apk;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/* compiled from: CombiningEvaluator.java */
/* loaded from: classes7.dex */
public abstract class fp0 extends hp0 {

    /* renamed from: if  reason: not valid java name */
    public int f1421if = 0;

    /* renamed from: do  reason: not valid java name */
    public final ArrayList<hp0> f1420do = new ArrayList<>();

    /* renamed from: if  reason: not valid java name */
    public void m871if() {
        this.f1421if = this.f1420do.size();
    }

    /* compiled from: CombiningEvaluator.java */
    /* renamed from: com.apk.fp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends fp0 {
        public Cdo(Collection<hp0> collection) {
            this.f1420do.addAll(collection);
            m871if();
        }

        @Override // com.apk.hp0
        /* renamed from: do  reason: not valid java name */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            for (int i = this.f1421if - 1; i >= 0; i--) {
                if (!this.f1420do.get(i).mo872do(jo0Var, jo0Var2)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return bo0.m252goto(this.f1420do, "");
        }

        public Cdo(hp0... hp0VarArr) {
            this(Arrays.asList(hp0VarArr));
        }
    }

    /* compiled from: CombiningEvaluator.java */
    /* renamed from: com.apk.fp0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends fp0 {
        public Cif(hp0... hp0VarArr) {
            List asList = Arrays.asList(hp0VarArr);
            if (this.f1421if > 1) {
                this.f1420do.add(new Cdo(asList));
            } else {
                this.f1420do.addAll(asList);
            }
            m871if();
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            for (int i = 0; i < this.f1421if; i++) {
                if (this.f1420do.get(i).mo872do(jo0Var, jo0Var2)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return bo0.m252goto(this.f1420do, ", ");
        }

        public Cif() {
        }
    }
}
