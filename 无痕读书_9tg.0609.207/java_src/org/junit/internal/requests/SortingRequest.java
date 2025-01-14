package org.junit.internal.requests;

import java.util.Comparator;
import org.junit.runner.Description;
import org.junit.runner.Request;
import org.junit.runner.Runner;
import org.junit.runner.manipulation.Sorter;
/* loaded from: classes6.dex */
public class SortingRequest extends Request {
    private final Comparator<Description> fComparator;
    private final Request fRequest;

    public SortingRequest(Request request, Comparator<Description> comparator) {
        this.fRequest = request;
        this.fComparator = comparator;
    }

    @Override // org.junit.runner.Request
    public Runner getRunner() {
        Runner runner = this.fRequest.getRunner();
        new Sorter(this.fComparator).apply(runner);
        return runner;
    }
}
