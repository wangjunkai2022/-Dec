package junit.framework;

/* loaded from: classes6.dex */
public class ComparisonFailure extends AssertionFailedError {
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private String fActual;
    private String fExpected;

    public ComparisonFailure(String message, String expected, String actual) {
        super(message);
        this.fExpected = expected;
        this.fActual = actual;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return new ComparisonCompactor(20, this.fExpected, this.fActual).compact(super.getMessage());
    }

    public String getActual() {
        return this.fActual;
    }

    public String getExpected() {
        return this.fExpected;
    }
}
