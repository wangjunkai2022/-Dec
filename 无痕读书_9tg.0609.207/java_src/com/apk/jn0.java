package com.apk;

import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;
/* compiled from: TagInfo.java */
/* loaded from: classes7.dex */
public class jn0 {

    /* renamed from: do  reason: not valid java name */
    public String f2377do;

    /* renamed from: final  reason: not valid java name */
    public boolean f2379final;

    /* renamed from: if  reason: not valid java name */
    public um0 f2382if;

    /* renamed from: super  reason: not valid java name */
    public boolean f2384super;

    /* renamed from: this  reason: not valid java name */
    public lm0 f2385this;

    /* renamed from: for  reason: not valid java name */
    public Set<String> f2380for = new HashSet();

    /* renamed from: new  reason: not valid java name */
    public Set<String> f2383new = new HashSet();

    /* renamed from: try  reason: not valid java name */
    public Set<String> f2386try = new HashSet();

    /* renamed from: case  reason: not valid java name */
    public Set<String> f2373case = new HashSet();

    /* renamed from: else  reason: not valid java name */
    public Set<String> f2378else = new HashSet();

    /* renamed from: goto  reason: not valid java name */
    public Set<String> f2381goto = new HashSet();

    /* renamed from: break  reason: not valid java name */
    public Set<String> f2372break = new HashSet();

    /* renamed from: catch  reason: not valid java name */
    public Set<String> f2374catch = new HashSet();

    /* renamed from: class  reason: not valid java name */
    public String f2375class = null;

    /* renamed from: const  reason: not valid java name */
    public String f2376const = null;

    public jn0(String str, um0 um0Var, lm0 lm0Var, boolean z, boolean z2, rm0 rm0Var, vm0 vm0Var) {
        this.f2385this = lm0.BODY;
        this.f2377do = str;
        this.f2382if = um0Var;
        this.f2385this = lm0Var;
        this.f2379final = z;
        this.f2384super = z2;
    }

    /* renamed from: break  reason: not valid java name */
    public void m1360break(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            this.f2372break.add(nextToken);
            this.f2383new.add(nextToken);
        }
    }

    /* renamed from: case  reason: not valid java name */
    public void m1361case(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.f2381goto.add(stringTokenizer.nextToken());
        }
    }

    /* renamed from: do  reason: not valid java name */
    public boolean m1362do() {
        return um0.all == this.f2382if && this.f2386try.isEmpty();
    }

    /* renamed from: else  reason: not valid java name */
    public void m1363else(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            this.f2374catch.add(nextToken);
            this.f2383new.add(nextToken);
        }
    }

    /* renamed from: for  reason: not valid java name */
    public void m1364for(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.f2386try.add(stringTokenizer.nextToken());
        }
    }

    /* renamed from: goto  reason: not valid java name */
    public void m1365goto(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.f2373case.add(stringTokenizer.nextToken());
        }
    }

    /* renamed from: if  reason: not valid java name */
    public boolean m1366if(km0 km0Var) {
        if (this.f2382if != um0.none && (km0Var instanceof mn0) && "script".equals(((mn0) km0Var).mo1534try())) {
            return true;
        }
        int ordinal = this.f2382if.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    return false;
                }
                return !(km0Var instanceof mn0);
            } else if (km0Var instanceof tm0) {
                return ((tm0) km0Var).f4734for;
            } else {
                return !(km0Var instanceof mn0);
            }
        }
        if (!this.f2386try.isEmpty()) {
            if (km0Var instanceof mn0) {
                return this.f2386try.contains(((mn0) km0Var).mo1534try());
            }
        } else if (!this.f2373case.isEmpty() && (km0Var instanceof mn0)) {
            return !this.f2373case.contains(((mn0) km0Var).mo1534try());
        }
        return true;
    }

    /* renamed from: new  reason: not valid java name */
    public void m1367new(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            this.f2378else.add(nextToken);
            this.f2380for.add(nextToken);
        }
    }

    /* renamed from: this  reason: not valid java name */
    public void m1368this(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.f2383new.add(stringTokenizer.nextToken());
        }
    }

    /* renamed from: try  reason: not valid java name */
    public void m1369try(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str.toLowerCase(), ",");
        while (stringTokenizer.hasMoreTokens()) {
            this.f2380for.add(stringTokenizer.nextToken());
        }
    }
}
