package com.apk;

/* compiled from: StructuralEvaluator.java */
/* loaded from: classes7.dex */
public abstract class np0 extends hp0 {

    /* renamed from: do  reason: not valid java name */
    public hp0 f3287do;

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$case  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Ccase extends np0 {
        public Ccase(hp0 hp0Var) {
            this.f3287do = hp0Var;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            if (jo0Var == jo0Var2) {
                return false;
            }
            for (jo0 b = jo0Var2.b(); b != null; b = b.b()) {
                if (this.f3287do.mo872do(jo0Var, b)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ~ ", this.f3287do);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo extends np0 {

        /* renamed from: if  reason: not valid java name */
        public final ep0 f3288if;

        public Cdo(hp0 hp0Var) {
            this.f3287do = hp0Var;
            this.f3288if = new ep0(hp0Var);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            for (int i = 0; i < jo0Var2.mo1387this(); i++) {
                no0 m1901goto = jo0Var2.m1901goto(i);
                if ((m1901goto instanceof jo0) && this.f3288if.m673do(jo0Var2, (jo0) m1901goto) != null) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.f3287do);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$else  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Celse extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var == jo0Var2;
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cfor extends np0 {
        public Cfor(hp0 hp0Var) {
            this.f3287do = hp0Var;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 b;
            return (jo0Var == jo0Var2 || (b = jo0Var2.b()) == null || !this.f3287do.mo872do(jo0Var, b)) ? false : true;
        }

        public String toString() {
            return String.format("%s + ", this.f3287do);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cif extends np0 {
        public Cif(hp0 hp0Var) {
            this.f3287do = hp0Var;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3;
            return (jo0Var == jo0Var2 || (jo0Var3 = (jo0) jo0Var2.f3281do) == null || !this.f3287do.mo872do(jo0Var, jo0Var3)) ? false : true;
        }

        public String toString() {
            return String.format("%s > ", this.f3287do);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cnew extends np0 {
        public Cnew(hp0 hp0Var) {
            this.f3287do = hp0Var;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return !this.f3287do.mo872do(jo0Var, jo0Var2);
        }

        public String toString() {
            return String.format(":not(%s)", this.f3287do);
        }
    }

    /* compiled from: StructuralEvaluator.java */
    /* renamed from: com.apk.np0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Ctry extends np0 {
        public Ctry(hp0 hp0Var) {
            this.f3287do = hp0Var;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            if (jo0Var == jo0Var2) {
                return false;
            }
            for (jo0 jo0Var3 = (jo0) jo0Var2.f3281do; jo0Var3 != null; jo0Var3 = (jo0) jo0Var3.f3281do) {
                if (this.f3287do.mo872do(jo0Var, jo0Var3)) {
                    return true;
                }
                if (jo0Var3 == jo0Var) {
                    break;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ", this.f3287do);
        }
    }
}
