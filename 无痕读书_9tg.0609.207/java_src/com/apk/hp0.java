package com.apk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.litepal.parser.LitePalParser;
/* compiled from: Evaluator.java */
/* loaded from: classes7.dex */
public abstract class hp0 {

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$abstract  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cabstract extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            gp0 gp0Var;
            no0 no0Var = jo0Var2.f3281do;
            jo0 jo0Var3 = (jo0) no0Var;
            if (jo0Var3 == null || (jo0Var3 instanceof ho0)) {
                return false;
            }
            if (no0Var == null) {
                gp0Var = new gp0(0);
            } else {
                List<jo0> m1384strictfp = ((jo0) no0Var).m1384strictfp();
                gp0 gp0Var2 = new gp0(m1384strictfp.size() - 1);
                for (jo0 jo0Var4 : m1384strictfp) {
                    if (jo0Var4 != jo0Var2) {
                        gp0Var2.add(jo0Var4);
                    }
                }
                gp0Var = gp0Var2;
            }
            return gp0Var.isEmpty();
        }

        public String toString() {
            return ":only-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$break  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cbreak extends Cfor {
        public Cbreak(String str, String str2) {
            super(str, str2, false);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1942do) && sb0.m2437volatile(jo0Var2.mo1742new(this.f1942do)).startsWith(this.f1943if);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.f1942do, this.f1943if);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$case  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ccase extends Cfor {
        public Ccase(String str, String str2) {
            super(str, str2, true);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1942do) && sb0.m2437volatile(jo0Var2.mo1742new(this.f1942do)).contains(this.f1943if);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.f1942do, this.f1943if);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$catch  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ccatch extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1938do;

        public Ccatch(String str) {
            this.f1938do = str;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            String str = this.f1938do;
            do0 do0Var = jo0Var2.f2397else;
            if (do0Var != null) {
                String m495goto = do0Var.m495goto(LitePalParser.ATTR_CLASS);
                int length = m495goto.length();
                int length2 = str.length();
                if (length != 0 && length >= length2) {
                    if (length == length2) {
                        return str.equalsIgnoreCase(m495goto);
                    }
                    boolean z = false;
                    int i = 0;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (Character.isWhitespace(m495goto.charAt(i2))) {
                            if (!z) {
                                continue;
                            } else if (i2 - i == length2 && m495goto.regionMatches(true, i, str, 0, length2)) {
                                return true;
                            } else {
                                z = false;
                            }
                        } else if (!z) {
                            i = i2;
                            z = true;
                        }
                    }
                    if (z && length - i == length2) {
                        return m495goto.regionMatches(true, i, str, 0, length2);
                    }
                }
            }
            return false;
        }

        public String toString() {
            return String.format(".%s", this.f1938do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$class  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cclass extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1939do;

        public Cclass(String str) {
            this.f1939do = sb0.m2437volatile(str);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return sb0.m2437volatile(jo0Var2.m1383protected()).contains(this.f1939do);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.f1939do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$const  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cconst extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1940do;

        public Cconst(String str) {
            this.f1940do = sb0.m2437volatile(bo0.m255this(str));
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return sb0.m2437volatile(jo0Var2.m1386synchronized()).contains(this.f1940do);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.f1940do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$continue  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ccontinue extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            if (jo0Var3 == null || (jo0Var3 instanceof ho0)) {
                return false;
            }
            Iterator<jo0> it = jo0Var3.m1389volatile().iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().f2398new.equals(jo0Var2.f2398new)) {
                    i++;
                }
            }
            return i == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$default  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdefault extends Cpackage {
        public Cdefault() {
            super(0, 1);
        }

        @Override // com.apk.hp0.Csuper
        public String toString() {
            return ":last-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$do  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cdo extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$else  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Celse extends Cfor {
        public Celse(String str, String str2) {
            super(str, str2, false);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1942do) && sb0.m2437volatile(jo0Var2.mo1742new(this.f1942do)).endsWith(this.f1943if);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.f1942do, this.f1943if);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$extends  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cextends extends Csuper {
        public Cextends(int i, int i2) {
            super(i, i2);
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: for  reason: not valid java name */
        public String mo1155for() {
            return "nth-child";
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: if  reason: not valid java name */
        public int mo1156if(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.m1388transient() + 1;
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$final  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cfinal extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1941do;

        public Cfinal(String str) {
            this.f1941do = sb0.m2437volatile(bo0.m255this(str));
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return sb0.m2437volatile(jo0Var2.e()).contains(this.f1941do);
        }

        public String toString() {
            return String.format(":contains(%s)", this.f1941do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$finally  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cfinally extends Csuper {
        public Cfinally(int i, int i2) {
            super(i, i2);
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: for */
        public String mo1155for() {
            return "nth-last-child";
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: if */
        public int mo1156if(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            if (jo0Var3 == null) {
                return 0;
            }
            return jo0Var3.m1389volatile().size() - jo0Var2.m1388transient();
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$for  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cfor extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public String f1942do;

        /* renamed from: if  reason: not valid java name */
        public String f1943if;

        public Cfor(String str, String str2, boolean z) {
            String m2437volatile;
            sb0.m2435transient(str);
            sb0.m2435transient(str2);
            this.f1942do = sb0.m2424protected(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            if (z) {
                m2437volatile = sb0.m2424protected(str2);
            } else {
                m2437volatile = z2 ? sb0.m2437volatile(str2) : sb0.m2424protected(str2);
            }
            this.f1943if = m2437volatile;
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$goto  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cgoto extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public String f1944do;

        /* renamed from: if  reason: not valid java name */
        public Pattern f1945if;

        public Cgoto(String str, Pattern pattern) {
            this.f1944do = sb0.m2424protected(str);
            this.f1945if = pattern;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1944do) && this.f1945if.matcher(jo0Var2.mo1742new(this.f1944do)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.f1944do, this.f1945if.toString());
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$if  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cif extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1946do;

        public Cif(String str) {
            this.f1946do = str;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1946do);
        }

        public String toString() {
            return String.format("[%s]", this.f1946do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$implements  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cimplements extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1947do;

        public Cimplements(String str) {
            this.f1947do = str;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.f2398new.f5716if.endsWith(this.f1947do);
        }

        public String toString() {
            return String.format("%s", this.f1947do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$import  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Cimport extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public int f1948do;

        public Cimport(int i) {
            this.f1948do = i;
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$interface  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cinterface extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final Pattern f1949do;

        public Cinterface(Pattern pattern) {
            this.f1949do = pattern;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return this.f1949do.matcher(jo0Var2.e()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.f1949do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$native  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cnative extends Cimport {
        public Cnative(int i) {
            super(i);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.m1388transient() > this.f1948do;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f1948do));
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$new  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cnew extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1950do;

        public Cnew(String str) {
            sb0.m2435transient(str);
            this.f1950do = sb0.m2437volatile(str);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            do0 mo1375case = jo0Var2.mo1375case();
            if (mo1375case != null) {
                ArrayList arrayList = new ArrayList(mo1375case.f948do);
                for (int i = 0; i < mo1375case.f948do; i++) {
                    if (!mo1375case.m494final(mo1375case.f950if[i])) {
                        arrayList.add(new co0(mo1375case.f950if[i], mo1375case.f949for[i], mo1375case));
                    }
                }
                for (co0 co0Var : Collections.unmodifiableList(arrayList)) {
                    if (sb0.m2437volatile(co0Var.f699do).startsWith(this.f1950do)) {
                        return true;
                    }
                }
                return false;
            }
            throw null;
        }

        public String toString() {
            return String.format("[^%s]", this.f1950do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$package  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cpackage extends Csuper {
        public Cpackage(int i, int i2) {
            super(i, i2);
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: for */
        public String mo1155for() {
            return "nth-last-of-type";
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: if */
        public int mo1156if(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            int i = 0;
            if (jo0Var3 == null) {
                return 0;
            }
            gp0 m1389volatile = jo0Var3.m1389volatile();
            for (int m1388transient = jo0Var2.m1388transient(); m1388transient < m1389volatile.size(); m1388transient++) {
                if (m1389volatile.get(m1388transient).f2398new.equals(jo0Var2.f2398new)) {
                    i++;
                }
            }
            return i;
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$private  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static class Cprivate extends Csuper {
        public Cprivate(int i, int i2) {
            super(i, i2);
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: for */
        public String mo1155for() {
            return "nth-of-type";
        }

        @Override // com.apk.hp0.Csuper
        /* renamed from: if */
        public int mo1156if(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            int i = 0;
            if (jo0Var3 == null) {
                return 0;
            }
            Iterator<jo0> it = jo0Var3.m1389volatile().iterator();
            while (it.hasNext()) {
                jo0 next = it.next();
                if (next.f2398new.equals(jo0Var2.f2398new)) {
                    i++;
                    continue;
                }
                if (next == jo0Var2) {
                    break;
                }
            }
            return i;
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$protected  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cprotected extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final Pattern f1951do;

        public Cprotected(Pattern pattern) {
            this.f1951do = pattern;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return this.f1951do.matcher(jo0Var2.m1386synchronized()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.f1951do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$public  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cpublic extends Cimport {
        public Cpublic(int i) {
            super(i);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var != jo0Var2 && jo0Var2.m1388transient() < this.f1948do;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f1948do));
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$return  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Creturn extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            for (no0 no0Var : jo0Var2.m1898catch()) {
                if (!(no0Var instanceof fo0) && !(no0Var instanceof io0)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$static  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cstatic extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            return (jo0Var3 == null || (jo0Var3 instanceof ho0) || jo0Var2.m1388transient() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$strictfp  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cstrictfp extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            if (jo0Var instanceof ho0) {
                jo0Var = jo0Var.m1384strictfp().get(0);
            }
            return jo0Var2 == jo0Var;
        }

        public String toString() {
            return ":root";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$super  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static abstract class Csuper extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final int f1952do;

        /* renamed from: if  reason: not valid java name */
        public final int f1953if;

        public Csuper(int i, int i2) {
            this.f1952do = i;
            this.f1953if = i2;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            if (jo0Var3 == null || (jo0Var3 instanceof ho0)) {
                return false;
            }
            int mo1156if = mo1156if(jo0Var, jo0Var2);
            int i = this.f1952do;
            if (i == 0) {
                return mo1156if == this.f1953if;
            }
            int i2 = this.f1953if;
            return (mo1156if - i2) * i >= 0 && (mo1156if - i2) % i == 0;
        }

        /* renamed from: for */
        public abstract String mo1155for();

        /* renamed from: if */
        public abstract int mo1156if(jo0 jo0Var, jo0 jo0Var2);

        public String toString() {
            return this.f1952do == 0 ? String.format(":%s(%d)", mo1155for(), Integer.valueOf(this.f1953if)) : this.f1953if == 0 ? String.format(":%s(%dn)", mo1155for(), Integer.valueOf(this.f1952do)) : String.format(":%s(%dn%+d)", mo1155for(), Integer.valueOf(this.f1952do), Integer.valueOf(this.f1953if));
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$switch  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cswitch extends Cprivate {
        public Cswitch() {
            super(0, 1);
        }

        @Override // com.apk.hp0.Csuper
        public String toString() {
            return ":first-of-type";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$this  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cthis extends Cfor {
        public Cthis(String str, String str2) {
            super(str, str2, true);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return !this.f1943if.equalsIgnoreCase(jo0Var2.mo1742new(this.f1942do));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.f1942do, this.f1943if);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$throw  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cthrow extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1954do;

        public Cthrow(String str) {
            this.f1954do = str;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            String str = this.f1954do;
            do0 do0Var = jo0Var2.f2397else;
            return str.equals(do0Var != null ? do0Var.m495goto("id") : "");
        }

        public String toString() {
            return String.format("#%s", this.f1954do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$throws  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cthrows extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            jo0 jo0Var3 = (jo0) jo0Var2.f3281do;
            return (jo0Var3 == null || (jo0Var3 instanceof ho0) || jo0Var2.m1388transient() != jo0Var3.m1389volatile().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$transient  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ctransient extends hp0 {

        /* renamed from: do  reason: not valid java name */
        public final String f1955do;

        public Ctransient(String str) {
            this.f1955do = str;
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.f2398new.f5716if.equals(this.f1955do);
        }

        public String toString() {
            return String.format("%s", this.f1955do);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$try  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Ctry extends Cfor {
        public Ctry(String str, String str2) {
            super(str, str2, true);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.mo1744while(this.f1942do) && this.f1943if.equalsIgnoreCase(jo0Var2.mo1742new(this.f1942do).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.f1942do, this.f1943if);
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$volatile  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cvolatile extends hp0 {
        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            if (jo0Var2 instanceof oo0) {
                return true;
            }
            if (jo0Var2 != null) {
                ArrayList arrayList = new ArrayList();
                for (no0 no0Var : jo0Var2.f2396case) {
                    if (no0Var instanceof po0) {
                        arrayList.add((po0) no0Var);
                    }
                }
                Iterator it = Collections.unmodifiableList(arrayList).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    po0 po0Var = (po0) it.next();
                    oo0 oo0Var = new oo0(xo0.m3028do(jo0Var2.f2398new.f5712do, vo0.f5184new), jo0Var2.mo1378else(), jo0Var2.mo1375case());
                    if (po0Var != null) {
                        sb0.m2418instanceof(oo0Var);
                        sb0.m2418instanceof(po0Var.f3281do);
                        no0 no0Var2 = po0Var.f3281do;
                        if (no0Var2 != null) {
                            sb0.m2422package(no0Var2 == no0Var2);
                            sb0.m2418instanceof(oo0Var);
                            no0 no0Var3 = oo0Var.f3281do;
                            if (no0Var3 != null) {
                                no0Var3.mo1647package(oo0Var);
                            }
                            int i = po0Var.f3282if;
                            no0Var2.mo1385super().set(i, oo0Var);
                            oo0Var.f3281do = no0Var2;
                            oo0Var.f3282if = i;
                            po0Var.f3281do = null;
                            oo0Var.m1374abstract(po0Var);
                        } else {
                            throw null;
                        }
                    } else {
                        throw null;
                    }
                }
            } else {
                throw null;
            }
        }

        public String toString() {
            return ":matchText";
        }
    }

    /* compiled from: Evaluator.java */
    /* renamed from: com.apk.hp0$while  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class Cwhile extends Cimport {
        public Cwhile(int i) {
            super(i);
        }

        @Override // com.apk.hp0
        /* renamed from: do */
        public boolean mo872do(jo0 jo0Var, jo0 jo0Var2) {
            return jo0Var2.m1388transient() == this.f1948do;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f1948do));
        }
    }

    /* renamed from: do */
    public abstract boolean mo872do(jo0 jo0Var, jo0 jo0Var2);
}
