package org.junit.experimental.theories;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.junit.Assert;
import org.junit.experimental.theories.PotentialAssignment;
import org.junit.experimental.theories.internal.Assignments;
import org.junit.experimental.theories.internal.ParameterizedAssertionError;
import org.junit.internal.AssumptionViolatedException;
import org.junit.runners.BlockJUnit4ClassRunner;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.Statement;
import org.junit.runners.model.TestClass;
/* loaded from: classes6.dex */
public class Theories extends BlockJUnit4ClassRunner {
    public Theories(Class<?> klass) throws InitializationError {
        super(klass);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.runners.BlockJUnit4ClassRunner, org.junit.runners.ParentRunner
    public void collectInitializationErrors(List<Throwable> errors) {
        super.collectInitializationErrors(errors);
        validateDataPointFields(errors);
    }

    private void validateDataPointFields(List<Throwable> errors) {
        Field[] fields = getTestClass().getJavaClass().getDeclaredFields();
        for (Field field : fields) {
            if (field.getAnnotation(DataPoint.class) != null) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    errors.add(new Error("DataPoint field " + field.getName() + " must be static"));
                }
                if (!Modifier.isPublic(field.getModifiers())) {
                    errors.add(new Error("DataPoint field " + field.getName() + " must be public"));
                }
            }
        }
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    protected void validateConstructor(List<Throwable> errors) {
        validateOnlyOneConstructor(errors);
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    protected void validateTestMethods(List<Throwable> errors) {
        for (FrameworkMethod each : computeTestMethods()) {
            if (each.getAnnotation(Theory.class) != null) {
                each.validatePublicVoid(false, errors);
            } else {
                each.validatePublicVoidNoArg(false, errors);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public List<FrameworkMethod> computeTestMethods() {
        List<FrameworkMethod> testMethods = super.computeTestMethods();
        List<FrameworkMethod> theoryMethods = getTestClass().getAnnotatedMethods(Theory.class);
        testMethods.removeAll(theoryMethods);
        testMethods.addAll(theoryMethods);
        return testMethods;
    }

    @Override // org.junit.runners.BlockJUnit4ClassRunner
    public Statement methodBlock(FrameworkMethod method) {
        return new TheoryAnchor(method, getTestClass());
    }

    /* loaded from: classes6.dex */
    public static class TheoryAnchor extends Statement {
        private TestClass fTestClass;
        private FrameworkMethod fTestMethod;
        private int successes = 0;
        private List<AssumptionViolatedException> fInvalidParameters = new ArrayList();

        public TheoryAnchor(FrameworkMethod method, TestClass testClass) {
            this.fTestMethod = method;
            this.fTestClass = testClass;
        }

        private TestClass getTestClass() {
            return this.fTestClass;
        }

        @Override // org.junit.runners.model.Statement
        public void evaluate() throws Throwable {
            runWithAssignment(Assignments.allUnassigned(this.fTestMethod.getMethod(), getTestClass()));
            if (this.successes == 0) {
                Assert.fail("Never found parameters that satisfied method assumptions.  Violated assumptions: " + this.fInvalidParameters);
            }
        }

        protected void runWithAssignment(Assignments parameterAssignment) throws Throwable {
            if (!parameterAssignment.isComplete()) {
                runWithIncompleteAssignment(parameterAssignment);
            } else {
                runWithCompleteAssignment(parameterAssignment);
            }
        }

        protected void runWithIncompleteAssignment(Assignments incomplete) throws InstantiationException, IllegalAccessException, Throwable {
            for (PotentialAssignment source : incomplete.potentialsForNextUnassigned()) {
                runWithAssignment(incomplete.assignNext(source));
            }
        }

        protected void runWithCompleteAssignment(final Assignments complete) throws InstantiationException, IllegalAccessException, InvocationTargetException, NoSuchMethodException, Throwable {
            new BlockJUnit4ClassRunner(getTestClass().getJavaClass()) { // from class: org.junit.experimental.theories.Theories.TheoryAnchor.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.junit.runners.BlockJUnit4ClassRunner, org.junit.runners.ParentRunner
                public void collectInitializationErrors(List<Throwable> errors) {
                }

                @Override // org.junit.runners.BlockJUnit4ClassRunner
                public Statement methodBlock(FrameworkMethod method) {
                    final Statement statement = super.methodBlock(method);
                    return new Statement() { // from class: org.junit.experimental.theories.Theories.TheoryAnchor.1.1
                        @Override // org.junit.runners.model.Statement
                        public void evaluate() throws Throwable {
                            try {
                                statement.evaluate();
                                TheoryAnchor.this.handleDataPointSuccess();
                            } catch (AssumptionViolatedException e) {
                                TheoryAnchor.this.handleAssumptionViolation(e);
                            } catch (Throwable e2) {
                                TheoryAnchor.this.reportParameterizedError(e2, complete.getArgumentStrings(TheoryAnchor.this.nullsOk()));
                            }
                        }
                    };
                }

                @Override // org.junit.runners.BlockJUnit4ClassRunner
                protected Statement methodInvoker(FrameworkMethod method, Object test) {
                    return TheoryAnchor.this.methodCompletesWithParameters(method, complete, test);
                }

                @Override // org.junit.runners.BlockJUnit4ClassRunner
                public Object createTest() throws Exception {
                    return getTestClass().getOnlyConstructor().newInstance(complete.getConstructorArguments(TheoryAnchor.this.nullsOk()));
                }
            }.methodBlock(this.fTestMethod).evaluate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Statement methodCompletesWithParameters(final FrameworkMethod method, final Assignments complete, final Object freshInstance) {
            return new Statement() { // from class: org.junit.experimental.theories.Theories.TheoryAnchor.2
                @Override // org.junit.runners.model.Statement
                public void evaluate() throws Throwable {
                    try {
                        Object[] values = complete.getMethodArguments(TheoryAnchor.this.nullsOk());
                        method.invokeExplosively(freshInstance, values);
                    } catch (PotentialAssignment.CouldNotGenerateValueException e) {
                    }
                }
            };
        }

        protected void handleAssumptionViolation(AssumptionViolatedException e) {
            this.fInvalidParameters.add(e);
        }

        protected void reportParameterizedError(Throwable e, Object... params) throws Throwable {
            if (params.length == 0) {
                throw e;
            }
            throw new ParameterizedAssertionError(e, this.fTestMethod.getName(), params);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean nullsOk() {
            Theory annotation = (Theory) this.fTestMethod.getMethod().getAnnotation(Theory.class);
            if (annotation == null) {
                return false;
            }
            return annotation.nullsAccepted();
        }

        protected void handleDataPointSuccess() {
            this.successes++;
        }
    }
}
