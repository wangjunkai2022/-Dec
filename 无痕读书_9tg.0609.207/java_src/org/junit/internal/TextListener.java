package org.junit.internal;

import com.umeng.analytics.pro.ak;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.List;
import org.junit.runner.Description;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunListener;
/* loaded from: classes6.dex */
public class TextListener extends RunListener {
    private final PrintStream fWriter;

    public TextListener(JUnitSystem system) {
        this(system.out());
    }

    public TextListener(PrintStream writer) {
        this.fWriter = writer;
    }

    @Override // org.junit.runner.notification.RunListener
    public void testRunFinished(Result result) {
        printHeader(result.getRunTime());
        printFailures(result);
        printFooter(result);
    }

    @Override // org.junit.runner.notification.RunListener
    public void testStarted(Description description) {
        this.fWriter.append('.');
    }

    @Override // org.junit.runner.notification.RunListener
    public void testFailure(Failure failure) {
        this.fWriter.append('E');
    }

    @Override // org.junit.runner.notification.RunListener
    public void testIgnored(Description description) {
        this.fWriter.append('I');
    }

    private PrintStream getWriter() {
        return this.fWriter;
    }

    protected void printHeader(long runTime) {
        getWriter().println();
        getWriter().println("Time: " + elapsedTimeAsString(runTime));
    }

    protected void printFailures(Result result) {
        List<Failure> failures = result.getFailures();
        if (failures.size() != 0) {
            if (failures.size() == 1) {
                getWriter().println("There was " + failures.size() + " failure:");
            } else {
                getWriter().println("There were " + failures.size() + " failures:");
            }
            int i = 1;
            for (Failure each : failures) {
                printFailure(each, "" + i);
                i++;
            }
        }
    }

    protected void printFailure(Failure each, String prefix) {
        getWriter().println(prefix + ") " + each.getTestHeader());
        getWriter().print(each.getTrace());
    }

    protected void printFooter(Result result) {
        if (result.wasSuccessful()) {
            getWriter().println();
            getWriter().print("OK");
            getWriter().println(" (" + result.getRunCount() + " test" + (result.getRunCount() == 1 ? "" : ak.aB) + ")");
        } else {
            getWriter().println();
            getWriter().println("FAILURES!!!");
            getWriter().println("Tests run: " + result.getRunCount() + ",  Failures: " + result.getFailureCount());
        }
        getWriter().println();
    }

    protected String elapsedTimeAsString(long runTime) {
        return NumberFormat.getInstance().format(runTime / 1000.0d);
    }
}
