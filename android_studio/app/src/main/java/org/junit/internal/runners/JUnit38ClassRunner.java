package org.junit.internal.runners;

import java.lang.annotation.Annotation;
import junit.extensions.TestDecorator;
import junit.framework.AssertionFailedError;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestListener;
import junit.framework.TestResult;
import junit.framework.TestSuite;
import org.junit.runner.Describable;
import org.junit.runner.Description;
import org.junit.runner.Runner;
import org.junit.runner.manipulation.Filter;
import org.junit.runner.manipulation.Filterable;
import org.junit.runner.manipulation.NoTestsRemainException;
import org.junit.runner.manipulation.Sortable;
import org.junit.runner.manipulation.Sorter;
import org.junit.runner.notification.Failure;
import org.junit.runner.notification.RunNotifier;

/* loaded from: classes6.dex */
public class JUnit38ClassRunner extends Runner implements Filterable, Sortable {
    private Test fTest;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class OldTestClassAdaptingListener implements TestListener {
        private final RunNotifier fNotifier;

        private OldTestClassAdaptingListener(RunNotifier notifier) {
            this.fNotifier = notifier;
        }

        @Override // junit.framework.TestListener
        public void endTest(Test test) {
            this.fNotifier.fireTestFinished(asDescription(test));
        }

        @Override // junit.framework.TestListener
        public void startTest(Test test) {
            this.fNotifier.fireTestStarted(asDescription(test));
        }

        @Override // junit.framework.TestListener
        public void addError(Test test, Throwable t) {
            Failure failure = new Failure(asDescription(test), t);
            this.fNotifier.fireTestFailure(failure);
        }

        private Description asDescription(Test test) {
            if (test instanceof Describable) {
                Describable facade = (Describable) test;
                return facade.getDescription();
            }
            return Description.createTestDescription(getEffectiveClass(test), getName(test));
        }

        private Class<? extends Test> getEffectiveClass(Test test) {
            return test.getClass();
        }

        private String getName(Test test) {
            return test instanceof TestCase ? ((TestCase) test).getName() : test.toString();
        }

        @Override // junit.framework.TestListener
        public void addFailure(Test test, AssertionFailedError t) {
            addError(test, t);
        }
    }

    public JUnit38ClassRunner(Class<?> klass) {
        this(new TestSuite(klass.asSubclass(TestCase.class)));
    }

    public JUnit38ClassRunner(Test test) {
        setTest(test);
    }

    @Override // org.junit.runner.Runner
    public void run(RunNotifier notifier) {
        TestResult result = new TestResult();
        result.addListener(createAdaptingListener(notifier));
        getTest().run(result);
    }

    public TestListener createAdaptingListener(RunNotifier notifier) {
        return new OldTestClassAdaptingListener(notifier);
    }

    @Override // org.junit.runner.Runner, org.junit.runner.Describable
    public Description getDescription() {
        return makeDescription(getTest());
    }

    private static Description makeDescription(Test test) {
        if (test instanceof TestCase) {
            TestCase tc = (TestCase) test;
            return Description.createTestDescription(tc.getClass(), tc.getName());
        } else if (test instanceof TestSuite) {
            TestSuite ts = (TestSuite) test;
            String name = ts.getName() == null ? createSuiteDescription(ts) : ts.getName();
            Description description = Description.createSuiteDescription(name, new Annotation[0]);
            int n = ts.testCount();
            for (int i = 0; i < n; i++) {
                Description made = makeDescription(ts.testAt(i));
                description.addChild(made);
            }
            return description;
        } else if (test instanceof Describable) {
            Describable adapter = (Describable) test;
            return adapter.getDescription();
        } else if (test instanceof TestDecorator) {
            TestDecorator decorator = (TestDecorator) test;
            return makeDescription(decorator.getTest());
        } else {
            return Description.createSuiteDescription(test.getClass());
        }
    }

    private static String createSuiteDescription(TestSuite ts) {
        int count = ts.countTestCases();
        String example = count == 0 ? "" : String.format(" [example: %s]", ts.testAt(0));
        return String.format("TestSuite with %s tests%s", Integer.valueOf(count), example);
    }

    @Override // org.junit.runner.manipulation.Filterable
    public void filter(Filter filter) throws NoTestsRemainException {
        if (getTest() instanceof Filterable) {
            Filterable adapter = (Filterable) getTest();
            adapter.filter(filter);
        } else if (getTest() instanceof TestSuite) {
            TestSuite suite = (TestSuite) getTest();
            TestSuite filtered = new TestSuite(suite.getName());
            int n = suite.testCount();
            for (int i = 0; i < n; i++) {
                Test test = suite.testAt(i);
                if (filter.shouldRun(makeDescription(test))) {
                    filtered.addTest(test);
                }
            }
            setTest(filtered);
        }
    }

    @Override // org.junit.runner.manipulation.Sortable
    public void sort(Sorter sorter) {
        if (getTest() instanceof Sortable) {
            Sortable adapter = (Sortable) getTest();
            adapter.sort(sorter);
        }
    }

    private void setTest(Test test) {
        this.fTest = test;
    }

    private Test getTest() {
        return this.fTest;
    }
}
