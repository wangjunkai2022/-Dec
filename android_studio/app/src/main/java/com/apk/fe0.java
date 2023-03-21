package com.apk;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.jetbrains.annotations.NotNull;

/* compiled from: Strings.kt */
/* loaded from: classes7.dex */
public final class fe0 implements be0<xd0> {

    /* renamed from: do  reason: not valid java name */
    public final CharSequence f1277do;

    /* renamed from: for  reason: not valid java name */
    public final int f1278for;

    /* renamed from: if  reason: not valid java name */
    public final int f1279if;

    /* renamed from: new  reason: not valid java name */
    public final jd0<CharSequence, Integer, jc0<Integer, Integer>> f1280new;

    /* compiled from: Strings.kt */
    /* renamed from: com.apk.fe0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo implements Iterator<xd0>, ud0 {

        /* renamed from: do  reason: not valid java name */
        public int f1282do = -1;

        /* renamed from: for  reason: not valid java name */
        public int f1283for;

        /* renamed from: if  reason: not valid java name */
        public int f1284if;

        /* renamed from: new  reason: not valid java name */
        public xd0 f1285new;

        /* renamed from: try  reason: not valid java name */
        public int f1286try;

        public Cdo() {
            int i = fe0.this.f1279if;
            int length = fe0.this.f1277do.length();
            if (length >= 0) {
                if (i < 0) {
                    i = 0;
                } else if (i > length) {
                    i = length;
                }
                this.f1284if = i;
                this.f1283for = i;
                return;
            }
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + length + " is less than minimum 0.");
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
            if (r4 < r0) goto L13;
         */
        /* renamed from: do  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void m780do() {
            /*
                r6 = this;
                int r0 = r6.f1283for
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f1282do = r1
                r0 = 0
                r6.f1285new = r0
                goto L86
            Lc:
                com.apk.fe0 r0 = com.apk.fe0.this
                int r0 = r0.f1278for
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L1b
                int r4 = r6.f1286try
                int r4 = r4 + r3
                r6.f1286try = r4
                if (r4 >= r0) goto L27
            L1b:
                int r0 = r6.f1283for
                com.apk.fe0 r4 = com.apk.fe0.this
                java.lang.CharSequence r4 = r4.f1277do
                int r4 = r4.length()
                if (r0 <= r4) goto L3b
            L27:
                int r0 = r6.f1284if
                com.apk.xd0 r1 = new com.apk.xd0
                com.apk.fe0 r4 = com.apk.fe0.this
                java.lang.CharSequence r4 = r4.f1277do
                int r4 = com.apk.ie0.m1212try(r4)
                r1.<init>(r0, r4)
                r6.f1285new = r1
                r6.f1283for = r2
                goto L84
            L3b:
                com.apk.fe0 r0 = com.apk.fe0.this
                com.apk.jd0<java.lang.CharSequence, java.lang.Integer, com.apk.jc0<java.lang.Integer, java.lang.Integer>> r4 = r0.f1280new
                java.lang.CharSequence r0 = r0.f1277do
                int r5 = r6.f1283for
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r4.mo1309for(r0, r5)
                com.apk.jc0 r0 = (com.apk.jc0) r0
                if (r0 != 0) goto L63
                int r0 = r6.f1284if
                com.apk.xd0 r1 = new com.apk.xd0
                com.apk.fe0 r4 = com.apk.fe0.this
                java.lang.CharSequence r4 = r4.f1277do
                int r4 = com.apk.ie0.m1212try(r4)
                r1.<init>(r0, r4)
                r6.f1285new = r1
                r6.f1283for = r2
                goto L84
            L63:
                A r2 = r0.f2309do
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                B r0 = r0.f2310if
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f1284if
                com.apk.xd0 r4 = com.apk.yd0.m3059for(r4, r2)
                r6.f1285new = r4
                int r2 = r2 + r0
                r6.f1284if = r2
                if (r0 != 0) goto L81
                r1 = 1
            L81:
                int r2 = r2 + r1
                r6.f1283for = r2
            L84:
                r6.f1282do = r3
            L86:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apk.fe0.Cdo.m780do():void");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f1282do == -1) {
                m780do();
            }
            return this.f1282do == 1;
        }

        @Override // java.util.Iterator
        public xd0 next() {
            if (this.f1282do == -1) {
                m780do();
            }
            if (this.f1282do != 0) {
                xd0 xd0Var = this.f1285new;
                if (xd0Var != null) {
                    this.f1285new = null;
                    this.f1282do = -1;
                    return xd0Var;
                }
                throw new NullPointerException("null cannot be cast to non-null type kotlin.ranges.IntRange");
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public fe0(@NotNull CharSequence charSequence, int i, int i2, @NotNull jd0<? super CharSequence, ? super Integer, jc0<Integer, Integer>> jd0Var) {
        nd0.m1875new(charSequence, "input");
        nd0.m1875new(jd0Var, "getNextMatch");
        this.f1277do = charSequence;
        this.f1279if = i;
        this.f1278for = i2;
        this.f1280new = jd0Var;
    }

    @Override // com.apk.be0
    @NotNull
    public Iterator<xd0> iterator() {
        return new Cdo();
    }
}
