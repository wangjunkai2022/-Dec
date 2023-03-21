package com.apk;

import com.apk.ho0;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import javax.annotation.Nullable;

/* compiled from: Attributes.java */
/* loaded from: classes7.dex */
public class do0 implements Iterable<co0>, Cloneable {

    /* renamed from: do  reason: not valid java name */
    public int f948do = 0;

    /* renamed from: if  reason: not valid java name */
    public String[] f950if = new String[3];

    /* renamed from: for  reason: not valid java name */
    public String[] f949for = new String[3];

    /* compiled from: Attributes.java */
    /* renamed from: com.apk.do0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public class Cdo implements Iterator<co0> {

        /* renamed from: do  reason: not valid java name */
        public int f951do = 0;

        public Cdo() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (true) {
                int i = this.f951do;
                do0 do0Var = do0.this;
                if (i >= do0Var.f948do || !do0Var.m494final(do0Var.f950if[i])) {
                    break;
                }
                this.f951do++;
            }
            return this.f951do < do0.this.f948do;
        }

        @Override // java.util.Iterator
        public co0 next() {
            do0 do0Var = do0.this;
            String[] strArr = do0Var.f950if;
            int i = this.f951do;
            co0 co0Var = new co0(strArr[i], do0Var.f949for[i], do0Var);
            this.f951do++;
            return co0Var;
        }

        @Override // java.util.Iterator
        public void remove() {
            do0 do0Var = do0.this;
            int i = this.f951do - 1;
            this.f951do = i;
            do0Var.m497import(i);
        }
    }

    /* renamed from: case  reason: not valid java name */
    public do0 clone() {
        try {
            do0 do0Var = (do0) super.clone();
            do0Var.f948do = this.f948do;
            this.f950if = (String[]) Arrays.copyOf(this.f950if, this.f948do);
            this.f949for = (String[]) Arrays.copyOf(this.f949for, this.f948do);
            return do0Var;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: catch  reason: not valid java name */
    public final void m489catch(Appendable appendable, ho0.Cdo cdo) throws IOException {
        String m376do;
        int i = this.f948do;
        for (int i2 = 0; i2 < i; i2++) {
            if (!m494final(this.f950if[i2]) && (m376do = co0.m376do(this.f950if[i2], cdo.f1915goto)) != null) {
                co0.m377if(m376do, this.f949for[i2], appendable.append(' '), cdo);
            }
        }
    }

    /* renamed from: class  reason: not valid java name */
    public int m490class(String str) {
        sb0.m2418instanceof(str);
        for (int i = 0; i < this.f948do; i++) {
            if (str.equals(this.f950if[i])) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: const  reason: not valid java name */
    public final int m491const(String str) {
        sb0.m2418instanceof(str);
        for (int i = 0; i < this.f948do; i++) {
            if (str.equalsIgnoreCase(this.f950if[i])) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: do  reason: not valid java name */
    public do0 m492do(String str, @Nullable String str2) {
        m498new(this.f948do + 1);
        String[] strArr = this.f950if;
        int i = this.f948do;
        strArr[i] = str;
        this.f949for[i] = str2;
        this.f948do = i + 1;
        return this;
    }

    /* renamed from: else  reason: not valid java name */
    public String m493else(String str) {
        String str2;
        int m490class = m490class(str);
        return (m490class == -1 || (str2 = this.f949for[m490class]) == null) ? "" : str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || do0.class != obj.getClass()) {
            return false;
        }
        do0 do0Var = (do0) obj;
        if (this.f948do != do0Var.f948do) {
            return false;
        }
        for (int i = 0; i < this.f948do; i++) {
            int m490class = do0Var.m490class(this.f950if[i]);
            if (m490class == -1) {
                return false;
            }
            String str = this.f949for[i];
            String str2 = do0Var.f949for[m490class];
            if (str == null) {
                if (str2 != null) {
                    return false;
                }
            } else if (!str.equals(str2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: final  reason: not valid java name */
    public final boolean m494final(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }

    /* renamed from: goto  reason: not valid java name */
    public String m495goto(String str) {
        String str2;
        int m491const = m491const(str);
        return (m491const == -1 || (str2 = this.f949for[m491const]) == null) ? "" : str2;
    }

    public int hashCode() {
        return (((this.f948do * 31) + Arrays.hashCode(this.f950if)) * 31) + Arrays.hashCode(this.f949for);
    }

    /* renamed from: if  reason: not valid java name */
    public void m496if(do0 do0Var) {
        int i = do0Var.f948do;
        if (i == 0) {
            return;
        }
        m498new(this.f948do + i);
        Cdo cdo = new Cdo();
        while (cdo.hasNext()) {
            m501while((co0) cdo.next());
        }
    }

    /* renamed from: import  reason: not valid java name */
    public final void m497import(int i) {
        sb0.m2410extends(i >= this.f948do);
        int i2 = (this.f948do - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.f950if;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            String[] strArr2 = this.f949for;
            System.arraycopy(strArr2, i3, strArr2, i, i2);
        }
        int i4 = this.f948do - 1;
        this.f948do = i4;
        this.f950if[i4] = null;
        this.f949for[i4] = null;
    }

    @Override // java.lang.Iterable
    public Iterator<co0> iterator() {
        return new Cdo();
    }

    /* renamed from: new  reason: not valid java name */
    public final void m498new(int i) {
        sb0.m2422package(i >= this.f948do);
        int length = this.f950if.length;
        if (length >= i) {
            return;
        }
        int i2 = length >= 3 ? this.f948do * 2 : 3;
        if (i <= i2) {
            i = i2;
        }
        this.f950if = (String[]) Arrays.copyOf(this.f950if, i);
        this.f949for = (String[]) Arrays.copyOf(this.f949for, i);
    }

    /* renamed from: super  reason: not valid java name */
    public do0 m499super(String str, @Nullable String str2) {
        sb0.m2418instanceof(str);
        int m490class = m490class(str);
        if (m490class != -1) {
            this.f949for[m490class] = str2;
        } else {
            m492do(str, str2);
        }
        return this;
    }

    /* renamed from: this  reason: not valid java name */
    public boolean m500this(String str) {
        return m491const(str) != -1;
    }

    public String toString() {
        StringBuilder m253if = bo0.m253if();
        try {
            m489catch(m253if, new ho0("").f1908break);
            return bo0.m246catch(m253if);
        } catch (IOException e) {
            throw new xn0(e);
        }
    }

    /* renamed from: while  reason: not valid java name */
    public do0 m501while(co0 co0Var) {
        sb0.m2418instanceof(co0Var);
        String str = co0Var.f699do;
        String str2 = co0Var.f701if;
        if (str2 == null) {
            str2 = "";
        }
        m499super(str, str2);
        co0Var.f700for = this;
        return this;
    }
}
