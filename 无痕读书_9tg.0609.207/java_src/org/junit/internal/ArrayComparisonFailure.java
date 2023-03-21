package org.junit.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class ArrayComparisonFailure extends AssertionError {
    private static final long serialVersionUID = 1;
    private final AssertionError fCause;
    private List<Integer> fIndices = new ArrayList();
    private final String fMessage;

    public ArrayComparisonFailure(String message, AssertionError cause, int index) {
        this.fMessage = message;
        this.fCause = cause;
        addDimension(index);
    }

    public void addDimension(int index) {
        this.fIndices.add(0, Integer.valueOf(index));
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder builder = new StringBuilder();
        if (this.fMessage != null) {
            builder.append(this.fMessage);
        }
        builder.append("arrays first differed at element ");
        for (Integer num : this.fIndices) {
            int each = num.intValue();
            builder.append("[");
            builder.append(each);
            builder.append("]");
        }
        builder.append("; ");
        builder.append(this.fCause.getMessage());
        return builder.toString();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getMessage();
    }
}
