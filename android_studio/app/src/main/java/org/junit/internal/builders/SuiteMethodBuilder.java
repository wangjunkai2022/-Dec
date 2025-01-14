package org.junit.internal.builders;

import junit.runner.BaseTestRunner;
import org.junit.internal.runners.SuiteMethod;
import org.junit.runner.Runner;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes6.dex */
public class SuiteMethodBuilder extends RunnerBuilder {
    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> each) throws Throwable {
        if (hasSuiteMethod(each)) {
            return new SuiteMethod(each);
        }
        return null;
    }

    public boolean hasSuiteMethod(Class<?> testClass) {
        try {
            testClass.getMethod(BaseTestRunner.SUITE_METHODNAME, new Class[0]);
            return true;
        } catch (NoSuchMethodException e) {
            return false;
        }
    }
}
