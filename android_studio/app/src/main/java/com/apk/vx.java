package com.apk;

/* compiled from: ColumnEntity.java */
/* loaded from: classes8.dex */
public class vx {

    /* renamed from: case  reason: not valid java name */
    public boolean f5203case;

    /* renamed from: do  reason: not valid java name */
    public String f5204do;

    /* renamed from: for  reason: not valid java name */
    public String[] f5205for;

    /* renamed from: if  reason: not valid java name */
    public String f5206if;

    /* renamed from: new  reason: not valid java name */
    public boolean f5207new;

    /* renamed from: try  reason: not valid java name */
    public boolean f5208try;

    public vx(String... strArr) {
        this.f5205for = strArr;
    }

    public vx(String str, String str2) {
        this.f5204do = str;
        this.f5206if = str2;
        this.f5207new = false;
        this.f5208try = false;
        this.f5203case = false;
    }

    public vx(String str, String str2, boolean z, boolean z2) {
        this.f5204do = str;
        this.f5206if = str2;
        this.f5207new = z;
        this.f5208try = z2;
        this.f5203case = false;
    }
}
