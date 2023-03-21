package com.apk;
/* compiled from: TagNodeNameCondition.java */
/* loaded from: classes7.dex */
public class wn0 implements tn0 {

    /* renamed from: do  reason: not valid java name */
    public String f5357do;

    public wn0(String str) {
        this.f5357do = str;
    }

    @Override // com.apk.tn0
    /* renamed from: do */
    public boolean mo2609do(kn0 kn0Var) {
        if (kn0Var == null) {
            return false;
        }
        return kn0Var.mo1534try().equalsIgnoreCase(this.f5357do);
    }
}
