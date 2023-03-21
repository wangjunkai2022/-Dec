package com.apk;

/* compiled from: Strings.kt */
/* loaded from: classes7.dex */
public final class je0 extends od0 implements jd0<CharSequence, Integer, jc0<? extends Integer, ? extends Integer>> {

    /* renamed from: do  reason: not valid java name */
    public final /* synthetic */ char[] f2312do;

    /* renamed from: if  reason: not valid java name */
    public final /* synthetic */ boolean f2313if;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public je0(char[] cArr, boolean z) {
        super(2);
        this.f2312do = cArr;
        this.f2313if = z;
    }

    @Override // com.apk.jd0
    /* renamed from: for */
    public jc0<? extends Integer, ? extends Integer> mo1309for(CharSequence charSequence, Integer num) {
        CharSequence charSequence2 = charSequence;
        int intValue = num.intValue();
        nd0.m1875new(charSequence2, "$receiver");
        int m1191catch = ie0.m1191catch(charSequence2, this.f2312do, intValue, this.f2313if);
        if (m1191catch < 0) {
            return null;
        }
        return new jc0<>(Integer.valueOf(m1191catch), 1);
    }
}
