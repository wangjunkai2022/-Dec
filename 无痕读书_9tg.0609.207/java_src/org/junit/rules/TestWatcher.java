package org.junit.rules;

import java.util.ArrayList;
import java.util.List;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runners.model.MultipleFailureException;
import org.junit.runners.model.Statement;
/* loaded from: classes6.dex */
public abstract class TestWatcher implements TestRule {
    @Override // org.junit.rules.TestRule
    public Statement apply(final Statement base, final Description description) {
        return new Statement() { // from class: org.junit.rules.TestWatcher.1
            @Override // org.junit.runners.model.Statement
            public void evaluate() throws Throwable {
                List<Throwable> errors = new ArrayList<>();
                TestWatcher.this.startingQuietly(description, errors);
                try {
                    base.evaluate();
                    TestWatcher.this.succeededQuietly(description, errors);
                } catch (AssumptionViolatedException e) {
                    errors.add(e);
                    TestWatcher.this.skippedQuietly(e, description, errors);
                } catch (Throwable t) {
                    errors.add(t);
                    TestWatcher.this.failedQuietly(t, description, errors);
                } finally {
                    TestWatcher.this.finishedQuietly(description, errors);
                }
                MultipleFailureException.assertEmpty(errors);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void succeededQuietly(Description description, List<Throwable> errors) {
        try {
            succeeded(description);
        } catch (Throwable t) {
            errors.add(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failedQuietly(Throwable t, Description description, List<Throwable> errors) {
        try {
            failed(t, description);
        } catch (Throwable t1) {
            errors.add(t1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void skippedQuietly(AssumptionViolatedException e, Description description, List<Throwable> errors) {
        try {
            skipped(e, description);
        } catch (Throwable t) {
            errors.add(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startingQuietly(Description description, List<Throwable> errors) {
        try {
            starting(description);
        } catch (Throwable t) {
            errors.add(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishedQuietly(Description description, List<Throwable> errors) {
        try {
            finished(description);
        } catch (Throwable t) {
            errors.add(t);
        }
    }

    protected void succeeded(Description description) {
    }

    protected void failed(Throwable e, Description description) {
    }

    protected void skipped(AssumptionViolatedException e, Description description) {
    }

    protected void starting(Description description) {
    }

    protected void finished(Description description) {
    }
}
