package org.junit.internal;

import java.io.PrintStream;
/* loaded from: classes6.dex */
public class RealSystem implements JUnitSystem {
    @Override // org.junit.internal.JUnitSystem
    public PrintStream out() {
        return System.out;
    }
}
