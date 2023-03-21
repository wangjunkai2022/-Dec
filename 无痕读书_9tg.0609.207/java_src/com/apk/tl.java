package com.apk;
/* compiled from: IntegerArrayAdapter.java */
/* loaded from: classes8.dex */
public final class tl implements ml<int[]> {
    @Override // com.apk.ml
    /* renamed from: do */
    public int mo1726do() {
        return 4;
    }

    @Override // com.apk.ml
    public String getTag() {
        return "IntegerArrayPool";
    }

    @Override // com.apk.ml
    /* renamed from: if */
    public int mo1727if(int[] iArr) {
        return iArr.length;
    }

    @Override // com.apk.ml
    public int[] newArray(int i) {
        return new int[i];
    }
}
