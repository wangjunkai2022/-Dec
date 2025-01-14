package org.junit.internal.runners.model;

import org.junit.internal.AssumptionViolatedException;
import org.junit.runner.Description;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunNotifier;

/* loaded from: classes6.dex */
public class EachTestNotifier {
    private final Description fDescription;
    private final RunNotifier fNotifier;

    public EachTestNotifier(RunNotifier notifier, Description description) {
        this.fNotifier = notifier;
        this.fDescription = description;
    }

    public void addFailure(Throwable targetException) {
        if (targetException instanceof org.junit.runners.model.MultipleFailureException) {
            addMultipleFailureException((org.junit.runners.model.MultipleFailureException) targetException);
        } else {
            this.fNotifier.fireTestFailure(new Failure(this.fDescription, targetException));
        }
    }

    private void addMultipleFailureException(org.junit.runners.model.MultipleFailureException mfe) {
        for (Throwable each : mfe.getFailures()) {
            addFailure(each);
        }
    }

    public void addFailedAssumption(AssumptionViolatedException e) {
        this.fNotifier.fireTestAssumptionFailed(new Failure(this.fDescription, e));
    }

    public void fireTestFinished() {
        this.fNotifier.fireTestFinished(this.fDescription);
    }

    public void fireTestStarted() {
        this.fNotifier.fireTestStarted(this.fDescription);
    }

    public void fireTestIgnored() {
        this.fNotifier.fireTestIgnored(this.fDescription);
    }
}
