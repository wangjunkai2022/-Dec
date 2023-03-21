package org.junit.internal.matchers;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Throwable;
import org.hamcrest.Description;
import org.hamcrest.Factory;
import org.hamcrest.Matcher;
/* loaded from: classes6.dex */
public class StacktracePrintingMatcher<T extends Throwable> extends org.hamcrest.TypeSafeMatcher<T> {
    private final Matcher<T> fThrowableMatcher;

    /* JADX WARN: Multi-variable type inference failed */
    protected /* bridge */ /* synthetic */ void describeMismatchSafely(Object x0, Description x1) {
        describeMismatchSafely((StacktracePrintingMatcher<T>) ((Throwable) x0), x1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected /* bridge */ /* synthetic */ boolean matchesSafely(Object x0) {
        return matchesSafely((StacktracePrintingMatcher<T>) ((Throwable) x0));
    }

    public StacktracePrintingMatcher(Matcher<T> throwableMatcher) {
        this.fThrowableMatcher = throwableMatcher;
    }

    public void describeTo(Description description) {
        this.fThrowableMatcher.describeTo(description);
    }

    protected boolean matchesSafely(T item) {
        return this.fThrowableMatcher.matches(item);
    }

    protected void describeMismatchSafely(T item, Description description) {
        this.fThrowableMatcher.describeMismatch(item, description);
        description.appendText("\nStacktrace was: ");
        description.appendText(readStacktrace(item));
    }

    private String readStacktrace(Throwable throwable) {
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    @Factory
    public static <T extends Throwable> Matcher<T> isThrowable(Matcher<T> throwableMatcher) {
        return new StacktracePrintingMatcher(throwableMatcher);
    }

    @Factory
    public static <T extends Exception> Matcher<T> isException(Matcher<T> exceptionMatcher) {
        return new StacktracePrintingMatcher(exceptionMatcher);
    }
}
