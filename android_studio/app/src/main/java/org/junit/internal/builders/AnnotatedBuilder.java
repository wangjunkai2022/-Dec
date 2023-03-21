package org.junit.internal.builders;

import org.junit.runner.RunWith;
import org.junit.runner.Runner;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;

/* loaded from: classes6.dex */
public class AnnotatedBuilder extends RunnerBuilder {
    private static final String CONSTRUCTOR_ERROR_FORMAT = "Custom runner class %s should have a public constructor with signature %s(Class testClass)";
    private RunnerBuilder fSuiteBuilder;

    public AnnotatedBuilder(RunnerBuilder suiteBuilder) {
        this.fSuiteBuilder = suiteBuilder;
    }

    @Override // org.junit.runners.model.RunnerBuilder
    public Runner runnerForClass(Class<?> testClass) throws Exception {
        RunWith annotation = (RunWith) testClass.getAnnotation(RunWith.class);
        if (annotation != null) {
            return buildRunner(annotation.value(), testClass);
        }
        return null;
    }

    public Runner buildRunner(Class<? extends Runner> runnerClass, Class<?> testClass) throws Exception {
        try {
            return runnerClass.getConstructor(Class.class).newInstance(testClass);
        } catch (NoSuchMethodException e) {
            try {
                return runnerClass.getConstructor(Class.class, RunnerBuilder.class).newInstance(testClass, this.fSuiteBuilder);
            } catch (NoSuchMethodException e2) {
                String simpleName = runnerClass.getSimpleName();
                throw new InitializationError(String.format(CONSTRUCTOR_ERROR_FORMAT, simpleName, simpleName));
            }
        }
    }
}
