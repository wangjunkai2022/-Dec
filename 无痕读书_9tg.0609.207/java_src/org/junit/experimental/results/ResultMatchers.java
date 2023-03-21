package org.junit.experimental.results;

import org.hamcrest.BaseMatcher;
import org.hamcrest.Description;
import org.hamcrest.Matcher;
import org.hamcrest.TypeSafeMatcher;
/* loaded from: classes6.dex */
public class ResultMatchers {
    public static Matcher<PrintableResult> isSuccessful() {
        return failureCountIs(0);
    }

    public static Matcher<PrintableResult> failureCountIs(final int count) {
        return new TypeSafeMatcher<PrintableResult>() { // from class: org.junit.experimental.results.ResultMatchers.1
            public void describeTo(Description description) {
                description.appendText("has " + count + " failures");
            }

            public boolean matchesSafely(PrintableResult item) {
                return item.failureCount() == count;
            }
        };
    }

    public static Matcher<Object> hasSingleFailureContaining(final String string) {
        return new BaseMatcher<Object>() { // from class: org.junit.experimental.results.ResultMatchers.2
            public boolean matches(Object item) {
                return item.toString().contains(string) && ResultMatchers.failureCountIs(1).matches(item);
            }

            public void describeTo(Description description) {
                description.appendText("has single failure containing " + string);
            }
        };
    }

    public static Matcher<PrintableResult> hasFailureContaining(final String string) {
        return new BaseMatcher<PrintableResult>() { // from class: org.junit.experimental.results.ResultMatchers.3
            public boolean matches(Object item) {
                return item.toString().contains(string);
            }

            public void describeTo(Description description) {
                description.appendText("has failure containing " + string);
            }
        };
    }
}
