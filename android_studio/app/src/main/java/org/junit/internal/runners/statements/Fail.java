package org.junit.internal.runners.statements;

import org.junit.runners.model.Statement;

/* loaded from: classes6.dex */
public class Fail extends Statement {
    private final Throwable fError;

    public Fail(Throwable e) {
        this.fError = e;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Throwable {
        throw this.fError;
    }
}
