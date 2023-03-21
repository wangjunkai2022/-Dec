package com.apk;

import java.util.Stack;
/* compiled from: ChildBreaks.java */
/* loaded from: classes7.dex */
public class nm0 {

    /* renamed from: do  reason: not valid java name */
    public Stack<ln0> f3257do = new Stack<>();

    /* renamed from: if  reason: not valid java name */
    public Stack<ln0> f3258if = new Stack<>();

    /* renamed from: do  reason: not valid java name */
    public int m1893do() {
        if (this.f3258if.isEmpty()) {
            return -1;
        }
        return this.f3258if.peek().f2844do;
    }

    /* renamed from: if  reason: not valid java name */
    public ln0 m1894if() {
        this.f3258if.pop();
        return this.f3257do.pop();
    }
}
