package org.junit.rules;

import org.junit.runner.Description;

/* loaded from: classes6.dex */
public class TestName extends TestWatcher {
    private String fName;

    @Override // org.junit.rules.TestWatcher
    protected void starting(Description d) {
        this.fName = d.getMethodName();
    }

    public String getMethodName() {
        return this.fName;
    }
}
