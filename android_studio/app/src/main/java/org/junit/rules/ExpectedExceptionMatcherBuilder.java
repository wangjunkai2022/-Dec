package org.junit.rules;

import java.util.ArrayList;
import java.util.List;
import org.hamcrest.CoreMatchers;
import org.hamcrest.Matcher;
import org.junit.matchers.JUnitMatchers;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class ExpectedExceptionMatcherBuilder {
    private final List<Matcher<?>> fMatchers = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(Matcher<?> matcher) {
        this.fMatchers.add(matcher);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean expectsThrowable() {
        return !this.fMatchers.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matcher<Throwable> build() {
        return JUnitMatchers.isThrowable(allOfTheMatchers());
    }

    private Matcher<Throwable> allOfTheMatchers() {
        return this.fMatchers.size() == 1 ? cast(this.fMatchers.get(0)) : CoreMatchers.allOf(castedMatchers());
    }

    private List<Matcher<? super Throwable>> castedMatchers() {
        return new ArrayList(this.fMatchers);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Matcher<Throwable> cast(Matcher<?> singleMatcher) {
        return singleMatcher;
    }
}
