package org.junit.internal.runners.statements;

import org.junit.internal.AssumptionViolatedException;
import org.junit.runners.model.Statement;
/* loaded from: classes6.dex */
public class ExpectException extends Statement {
    private final Class<? extends Throwable> fExpected;
    private Statement fNext;

    public ExpectException(Statement next, Class<? extends Throwable> expected) {
        this.fNext = next;
        this.fExpected = expected;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Exception {
        boolean complete = false;
        try {
            this.fNext.evaluate();
            complete = true;
        } catch (AssumptionViolatedException e) {
            throw e;
        } catch (Throwable e2) {
            if (!this.fExpected.isAssignableFrom(e2.getClass())) {
                String message = "Unexpected exception, expected<" + this.fExpected.getName() + "> but was<" + e2.getClass().getName() + ">";
                throw new Exception(message, e2);
            }
        }
        if (complete) {
            throw new AssertionError("Expected exception: " + this.fExpected.getName());
        }
    }
}
