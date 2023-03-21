package org.junit.internal.matchers;

import java.lang.Throwable;
import org.hamcrest.Description;
import org.hamcrest.Factory;
import org.hamcrest.Matcher;

/* loaded from: classes6.dex */
public class ThrowableCauseMatcher<T extends Throwable> extends org.hamcrest.TypeSafeMatcher<T> {
    private final Matcher<T> fMatcher;

    /* JADX WARN: Multi-variable type inference failed */
    protected /* bridge */ /* synthetic */ void describeMismatchSafely(Object x0, Description x1) {
        describeMismatchSafely((ThrowableCauseMatcher<T>) ((Throwable) x0), x1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected /* bridge */ /* synthetic */ boolean matchesSafely(Object x0) {
        return matchesSafely((ThrowableCauseMatcher<T>) ((Throwable) x0));
    }

    public ThrowableCauseMatcher(Matcher<T> matcher) {
        this.fMatcher = matcher;
    }

    public void describeTo(Description description) {
        description.appendText("exception with cause ");
        description.appendDescriptionOf(this.fMatcher);
    }

    protected boolean matchesSafely(T item) {
        return this.fMatcher.matches(item.getCause());
    }

    protected void describeMismatchSafely(T item, Description description) {
        description.appendText("cause ");
        this.fMatcher.describeMismatch(item.getCause(), description);
    }

    @Factory
    public static <T extends Throwable> Matcher<T> hasCause(Matcher<T> matcher) {
        return new ThrowableCauseMatcher(matcher);
    }
}
