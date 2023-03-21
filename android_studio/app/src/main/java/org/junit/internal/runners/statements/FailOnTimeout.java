package org.junit.internal.runners.statements;

import org.junit.runners.model.Statement;

/* loaded from: classes6.dex */
public class FailOnTimeout extends Statement {
    private final Statement fOriginalStatement;
    private final long fTimeout;

    public FailOnTimeout(Statement originalStatement, long timeout) {
        this.fOriginalStatement = originalStatement;
        this.fTimeout = timeout;
    }

    @Override // org.junit.runners.model.Statement
    public void evaluate() throws Throwable {
        StatementThread thread = evaluateStatement();
        if (!thread.fFinished) {
            throwExceptionForUnfinishedThread(thread);
        }
    }

    private StatementThread evaluateStatement() throws InterruptedException {
        StatementThread thread = new StatementThread(this.fOriginalStatement);
        thread.start();
        thread.join(this.fTimeout);
        if (!thread.fFinished) {
            thread.recordStackTrace();
        }
        thread.interrupt();
        return thread;
    }

    private void throwExceptionForUnfinishedThread(StatementThread thread) throws Throwable {
        if (thread.fExceptionThrownByOriginalStatement == null) {
            throwTimeoutException(thread);
            return;
        }
        throw thread.fExceptionThrownByOriginalStatement;
    }

    private void throwTimeoutException(StatementThread thread) throws Exception {
        Exception exception = new Exception(String.format("test timed out after %d milliseconds", Long.valueOf(this.fTimeout)));
        exception.setStackTrace(thread.getRecordedStackTrace());
        throw exception;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class StatementThread extends Thread {
        private final Statement fStatement;
        private boolean fFinished = false;
        private Throwable fExceptionThrownByOriginalStatement = null;
        private StackTraceElement[] fRecordedStackTrace = null;

        public StatementThread(Statement statement) {
            this.fStatement = statement;
        }

        public void recordStackTrace() {
            this.fRecordedStackTrace = getStackTrace();
        }

        public StackTraceElement[] getRecordedStackTrace() {
            return this.fRecordedStackTrace;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.fStatement.evaluate();
                this.fFinished = true;
            } catch (InterruptedException e) {
            } catch (Throwable e2) {
                this.fExceptionThrownByOriginalStatement = e2;
            }
        }
    }
}
