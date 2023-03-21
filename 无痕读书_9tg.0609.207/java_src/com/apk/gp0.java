package com.apk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Elements.java */
/* loaded from: classes7.dex */
public class gp0 extends ArrayList<jo0> {
    public gp0() {
    }

    @Override // java.util.ArrayList
    public Object clone() {
        gp0 gp0Var = new gp0(size());
        Iterator<jo0> it = iterator();
        while (it.hasNext()) {
            gp0Var.add(it.next().clone());
        }
        return gp0Var;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        StringBuilder m253if = bo0.m253if();
        Iterator<jo0> it = iterator();
        while (it.hasNext()) {
            jo0 next = it.next();
            if (m253if.length() != 0) {
                m253if.append("\n");
            }
            m253if.append(next.mo1147static());
        }
        return bo0.m246catch(m253if);
    }

    public gp0(int i) {
        super(i);
    }

    public gp0(List<jo0> list) {
        super(list);
    }
}
