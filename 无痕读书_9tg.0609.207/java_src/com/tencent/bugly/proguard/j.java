package com.tencent.bugly.proguard;

import java.io.Serializable;
/* compiled from: BUGLY */
/* loaded from: classes7.dex */
public abstract class j implements Serializable {
    public abstract void a(h hVar);

    public abstract void a(i iVar);

    public abstract void a(StringBuilder sb, int i);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        a(sb, 0);
        return sb.toString();
    }
}
