package com.apk;

import com.apk.ho0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Node.java */
/* loaded from: classes7.dex */
public abstract class no0 implements Cloneable {

    /* renamed from: for  reason: not valid java name */
    public static final List<no0> f3280for = Collections.emptyList();
    @Nullable

    /* renamed from: do  reason: not valid java name */
    public no0 f3281do;

    /* renamed from: if  reason: not valid java name */
    public int f3282if;

    /* compiled from: Node.java */
    /* renamed from: com.apk.no0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cdo implements kp0 {

        /* renamed from: do  reason: not valid java name */
        public final Appendable f3283do;

        /* renamed from: if  reason: not valid java name */
        public final ho0.Cdo f3284if;

        public Cdo(Appendable appendable, ho0.Cdo cdo) {
            this.f3283do = appendable;
            this.f3284if = cdo;
            cdo.m1149if();
        }

        @Override // com.apk.kp0
        /* renamed from: do */
        public void mo502do(no0 no0Var, int i) {
            try {
                no0Var.mo670switch(this.f3283do, i, this.f3284if);
            } catch (IOException e) {
                throw new xn0(e);
            }
        }

        @Override // com.apk.kp0
        /* renamed from: if */
        public void mo503if(no0 no0Var, int i) {
            if (no0Var.mo669return().equals("#text")) {
                return;
            }
            try {
                no0Var.mo671throws(this.f3283do, i, this.f3284if);
            } catch (IOException e) {
                throw new xn0(e);
            }
        }
    }

    /* renamed from: case */
    public abstract do0 mo1375case();

    /* renamed from: catch  reason: not valid java name */
    public List<no0> m1898catch() {
        if (mo1387this() == 0) {
            return f3280for;
        }
        List<no0> mo1385super = mo1385super();
        ArrayList arrayList = new ArrayList(mo1385super.size());
        arrayList.addAll(mo1385super);
        return Collections.unmodifiableList(arrayList);
    }

    @Override // 
    /* renamed from: class */
    public no0 clone() {
        no0 mo1376const = mo1376const(null);
        LinkedList linkedList = new LinkedList();
        linkedList.add(mo1376const);
        while (!linkedList.isEmpty()) {
            no0 no0Var = (no0) linkedList.remove();
            int mo1387this = no0Var.mo1387this();
            for (int i = 0; i < mo1387this; i++) {
                List<no0> mo1385super = no0Var.mo1385super();
                no0 mo1376const2 = mo1385super.get(i).mo1376const(no0Var);
                mo1385super.set(i, mo1376const2);
                linkedList.add(mo1376const2);
            }
        }
        return mo1376const;
    }

    /* renamed from: const */
    public no0 mo1376const(@Nullable no0 no0Var) {
        try {
            no0 no0Var2 = (no0) super.clone();
            no0Var2.f3281do = no0Var;
            no0Var2.f3282if = no0Var == null ? 0 : this.f3282if;
            return no0Var2;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Nullable
    /* renamed from: default */
    public no0 mo1377default() {
        return this.f3281do;
    }

    /* renamed from: do */
    public String mo1741do(String str) {
        sb0.m2435transient(str);
        return (mo1381import() && mo1375case().m500this(str)) ? bo0.m247class(mo1378else(), mo1375case().m495goto(str)) : "";
    }

    /* renamed from: else */
    public abstract String mo1378else();

    public boolean equals(@Nullable Object obj) {
        return this == obj;
    }

    /* renamed from: extends  reason: not valid java name */
    public final void m1899extends(int i) {
        if (mo1387this() == 0) {
            return;
        }
        List<no0> mo1385super = mo1385super();
        while (i < mo1385super.size()) {
            mo1385super.get(i).f3282if = i;
            i++;
        }
    }

    /* renamed from: final */
    public abstract no0 mo1379final();

    /* renamed from: finally  reason: not valid java name */
    public void m1900finally() {
        sb0.m2418instanceof(this.f3281do);
        this.f3281do.mo1647package(this);
    }

    /* renamed from: goto  reason: not valid java name */
    public no0 m1901goto(int i) {
        return mo1385super().get(i);
    }

    public int hashCode() {
        return super.hashCode();
    }

    /* renamed from: if  reason: not valid java name */
    public void m1902if(int i, no0... no0VarArr) {
        boolean z;
        sb0.m2418instanceof(no0VarArr);
        if (no0VarArr.length == 0) {
            return;
        }
        List<no0> mo1385super = mo1385super();
        no0 mo1377default = no0VarArr[0].mo1377default();
        if (mo1377default != null && mo1377default.mo1387this() == no0VarArr.length) {
            List<no0> mo1385super2 = mo1377default.mo1385super();
            int length = no0VarArr.length;
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    z = true;
                    break;
                } else if (no0VarArr[i2] != mo1385super2.get(i2)) {
                    z = false;
                    break;
                } else {
                    length = i2;
                }
            }
            if (z) {
                boolean z2 = mo1387this() == 0;
                mo1377default.mo1379final();
                mo1385super.addAll(i, Arrays.asList(no0VarArr));
                int length2 = no0VarArr.length;
                while (true) {
                    int i3 = length2 - 1;
                    if (length2 <= 0) {
                        break;
                    }
                    no0VarArr[i3].f3281do = this;
                    length2 = i3;
                }
                if (z2 && no0VarArr[0].f3282if == 0) {
                    return;
                }
                m1899extends(i);
                return;
            }
        }
        for (no0 no0Var : no0VarArr) {
            if (no0Var == null) {
                throw new IllegalArgumentException("Array must not contain any null objects");
            }
        }
        for (no0 no0Var2 : no0VarArr) {
            if (no0Var2 != null) {
                sb0.m2418instanceof(this);
                no0 no0Var3 = no0Var2.f3281do;
                if (no0Var3 != null) {
                    no0Var3.mo1647package(no0Var2);
                }
                no0Var2.f3281do = this;
            } else {
                throw null;
            }
        }
        mo1385super.addAll(i, Arrays.asList(no0VarArr));
        m1899extends(i);
    }

    /* renamed from: import */
    public abstract boolean mo1381import();

    /* renamed from: native  reason: not valid java name */
    public void m1903native(Appendable appendable, int i, ho0.Cdo cdo) throws IOException {
        appendable.append('\n').append(bo0.m244break(i * cdo.f1913else));
    }

    /* renamed from: new */
    public String mo1742new(String str) {
        sb0.m2418instanceof(str);
        if (mo1381import()) {
            String m495goto = mo1375case().m495goto(str);
            return m495goto.length() > 0 ? m495goto : str.startsWith("abs:") ? mo1741do(str.substring(4)) : "";
        }
        return "";
    }

    /* renamed from: package */
    public void mo1647package(no0 no0Var) {
        sb0.m2422package(no0Var.f3281do == this);
        int i = no0Var.f3282if;
        mo1385super().remove(i);
        m1899extends(i);
        no0Var.f3281do = null;
    }

    /* renamed from: private */
    public no0 mo1382private() {
        no0 no0Var = this;
        while (true) {
            no0 no0Var2 = no0Var.f3281do;
            if (no0Var2 == null) {
                return no0Var;
            }
            no0Var = no0Var2;
        }
    }

    @Nullable
    /* renamed from: public  reason: not valid java name */
    public no0 m1904public() {
        no0 no0Var = this.f3281do;
        if (no0Var == null) {
            return null;
        }
        List<no0> mo1385super = no0Var.mo1385super();
        int i = this.f3282if + 1;
        if (mo1385super.size() > i) {
            return mo1385super.get(i);
        }
        return null;
    }

    /* renamed from: return */
    public abstract String mo669return();

    /* renamed from: static */
    public String mo1147static() {
        StringBuilder m253if = bo0.m253if();
        jp0.m1391do(new Cdo(m253if, sb0.b(this)), this);
        return bo0.m246catch(m253if);
    }

    /* renamed from: super */
    public abstract List<no0> mo1385super();

    /* renamed from: switch */
    public abstract void mo670switch(Appendable appendable, int i, ho0.Cdo cdo) throws IOException;

    /* renamed from: this */
    public abstract int mo1387this();

    /* renamed from: throws */
    public abstract void mo671throws(Appendable appendable, int i, ho0.Cdo cdo) throws IOException;

    public String toString() {
        return mo1147static();
    }

    /* renamed from: while */
    public boolean mo1744while(String str) {
        sb0.m2418instanceof(str);
        if (mo1381import()) {
            if (str.startsWith("abs:")) {
                String substring = str.substring(4);
                if (mo1375case().m500this(substring) && !mo1741do(substring).isEmpty()) {
                    return true;
                }
            }
            return mo1375case().m500this(str);
        }
        return false;
    }
}
