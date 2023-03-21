package com.apk;

import com.apk.ri;

/* compiled from: TransitionOptions.java */
/* loaded from: classes8.dex */
public abstract class ri<CHILD extends ri<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: do  reason: not valid java name */
    public tr<? super TranscodeType> f4057do = (tr<? super TranscodeType>) rr.f4192if;

    public Object clone() throws CloneNotSupportedException {
        try {
            return (ri) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: do  reason: not valid java name */
    public final CHILD m2274do() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
