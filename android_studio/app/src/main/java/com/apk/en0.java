package com.apk;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* compiled from: OpenTags.java */
/* loaded from: classes7.dex */
public class en0 {

    /* renamed from: do  reason: not valid java name */
    public final zm0 f1098do;

    /* renamed from: for  reason: not valid java name */
    public ln0 f1099for;

    /* renamed from: if  reason: not valid java name */
    public List<ln0> f1100if = new ArrayList();

    /* renamed from: new  reason: not valid java name */
    public Set<String> f1101new = new HashSet();

    public en0(zm0 zm0Var) {
        this.f1098do = zm0Var;
    }

    /* renamed from: do  reason: not valid java name */
    public ln0 m653do(String str, om0 om0Var) {
        boolean z;
        if (str != null) {
            List<ln0> list = this.f1100if;
            ListIterator<ln0> listIterator = list.listIterator(list.size());
            jn0 m3223this = this.f1098do.m3223this(str, om0Var);
            while (listIterator.hasPrevious()) {
                if (Thread.currentThread().isInterrupted()) {
                    if (this.f1098do != null) {
                        return null;
                    }
                    throw null;
                }
                ln0 previous = listIterator.previous();
                if (str.equals(previous.f2846if)) {
                    return previous;
                }
                if (m3223this != null) {
                    String str2 = previous.f2846if;
                    Iterator<String> it = m3223this.f2374catch.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            z = false;
                            break;
                        } else if (str2.equals(it.next())) {
                            z = true;
                            break;
                        }
                    }
                    if (z) {
                        break;
                    }
                }
            }
        }
        return null;
    }
}
