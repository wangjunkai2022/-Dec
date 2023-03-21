package org.junit.rules;

import org.junit.internal.runners.statements.FailOnTimeout;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;
/* loaded from: classes6.dex */
public class Timeout implements TestRule {
    private final int fMillis;

    public Timeout(int millis) {
        this.fMillis = millis;
    }

    @Override // org.junit.rules.TestRule
    public Statement apply(Statement base, Description description) {
        return new FailOnTimeout(base, this.fMillis);
    }
}
