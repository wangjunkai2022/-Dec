package org.junit.rules;

import org.hamcrest.CoreMatchers;
import org.hamcrest.Matcher;
import org.hamcrest.StringDescription;
import org.junit.Assert;
import org.junit.internal.AssumptionViolatedException;
import org.junit.internal.matchers.ThrowableCauseMatcher;
import org.junit.internal.matchers.ThrowableMessageMatcher;
import org.junit.runner.Description;
import org.junit.runners.model.Statement;

/* loaded from: classes6.dex */
public class ExpectedException implements TestRule {
    private final ExpectedExceptionMatcherBuilder fMatcherBuilder = new ExpectedExceptionMatcherBuilder();
    private boolean handleAssumptionViolatedExceptions = false;
    private boolean handleAssertionErrors = false;

    public static ExpectedException none() {
        return new ExpectedException();
    }

    private ExpectedException() {
    }

    public ExpectedException handleAssertionErrors() {
        this.handleAssertionErrors = true;
        return this;
    }

    public ExpectedException handleAssumptionViolatedExceptions() {
        this.handleAssumptionViolatedExceptions = true;
        return this;
    }

    @Override // org.junit.rules.TestRule
    public Statement apply(Statement base, Description description) {
        return new ExpectedExceptionStatement(base);
    }

    public void expect(Matcher<?> matcher) {
        this.fMatcherBuilder.add(matcher);
    }

    public void expect(Class<? extends Throwable> type) {
        expect(CoreMatchers.instanceOf(type));
    }

    public void expectMessage(String substring) {
        expectMessage(CoreMatchers.containsString(substring));
    }

    public void expectMessage(Matcher<String> matcher) {
        expect(ThrowableMessageMatcher.hasMessage(matcher));
    }

    public void expectCause(Matcher<? extends Throwable> expectedCause) {
        expect(ThrowableCauseMatcher.hasCause(expectedCause));
    }

    /* loaded from: classes6.dex */
    private class ExpectedExceptionStatement extends Statement {
        private final Statement fNext;

        public ExpectedExceptionStatement(Statement base) {
            this.fNext = base;
        }

        @Override // org.junit.runners.model.Statement
        public void evaluate() throws Throwable {
            try {
                this.fNext.evaluate();
                if (ExpectedException.this.fMatcherBuilder.expectsThrowable()) {
                    ExpectedException.this.failDueToMissingException();
                }
            } catch (AssertionError e) {
                ExpectedException.this.optionallyHandleException(e, ExpectedException.this.handleAssertionErrors);
            } catch (AssumptionViolatedException e2) {
                ExpectedException.this.optionallyHandleException(e2, ExpectedException.this.handleAssumptionViolatedExceptions);
            } catch (Throwable e3) {
                ExpectedException.this.handleException(e3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failDueToMissingException() throws AssertionError {
        String expectation = StringDescription.toString(this.fMatcherBuilder.build());
        Assert.fail("Expected test to throw " + expectation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void optionallyHandleException(Throwable e, boolean handleException) throws Throwable {
        if (handleException) {
            handleException(e);
            return;
        }
        throw e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleException(Throwable e) throws Throwable {
        if (this.fMatcherBuilder.expectsThrowable()) {
            Assert.assertThat(e, this.fMatcherBuilder.build());
            return;
        }
        throw e;
    }
}
