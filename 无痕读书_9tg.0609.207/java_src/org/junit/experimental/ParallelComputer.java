package org.junit.experimental;

import androidx.recyclerview.widget.RecyclerView;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.junit.runner.Computer;
import org.junit.runner.Runner;
import org.junit.runners.ParentRunner;
import org.junit.runners.model.InitializationError;
import org.junit.runners.model.RunnerBuilder;
import org.junit.runners.model.RunnerScheduler;
/* loaded from: classes6.dex */
public class ParallelComputer extends Computer {
    private final boolean fClasses;
    private final boolean fMethods;

    public ParallelComputer(boolean classes, boolean methods) {
        this.fClasses = classes;
        this.fMethods = methods;
    }

    public static Computer classes() {
        return new ParallelComputer(true, false);
    }

    public static Computer methods() {
        return new ParallelComputer(false, true);
    }

    private static Runner parallelize(Runner runner) {
        if (runner instanceof ParentRunner) {
            ((ParentRunner) runner).setScheduler(new RunnerScheduler() { // from class: org.junit.experimental.ParallelComputer.1
                private final ExecutorService fService = Executors.newCachedThreadPool();

                @Override // org.junit.runners.model.RunnerScheduler
                public void schedule(Runnable childStatement) {
                    this.fService.submit(childStatement);
                }

                @Override // org.junit.runners.model.RunnerScheduler
                public void finished() {
                    try {
                        this.fService.shutdown();
                        this.fService.awaitTermination(RecyclerView.FOREVER_NS, TimeUnit.NANOSECONDS);
                    } catch (InterruptedException e) {
                        e.printStackTrace(System.err);
                    }
                }
            });
        }
        return runner;
    }

    @Override // org.junit.runner.Computer
    public Runner getSuite(RunnerBuilder builder, Class<?>[] classes) throws InitializationError {
        Runner suite = super.getSuite(builder, classes);
        return this.fClasses ? parallelize(suite) : suite;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.junit.runner.Computer
    public Runner getRunner(RunnerBuilder builder, Class<?> testClass) throws Throwable {
        Runner runner = super.getRunner(builder, testClass);
        return this.fMethods ? parallelize(runner) : runner;
    }
}
