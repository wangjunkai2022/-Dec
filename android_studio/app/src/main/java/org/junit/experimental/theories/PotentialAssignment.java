package org.junit.experimental.theories;

/* loaded from: classes6.dex */
public abstract class PotentialAssignment {

    /* loaded from: classes6.dex */
    public static class CouldNotGenerateValueException extends Exception {
        private static final long serialVersionUID = 1;
    }

    public abstract String getDescription() throws CouldNotGenerateValueException;

    public abstract Object getValue() throws CouldNotGenerateValueException;

    public static PotentialAssignment forValue(final String name, final Object value) {
        return new PotentialAssignment() { // from class: org.junit.experimental.theories.PotentialAssignment.1
            @Override // org.junit.experimental.theories.PotentialAssignment
            public Object getValue() throws CouldNotGenerateValueException {
                return value;
            }

            public String toString() {
                return String.format("[%s]", value);
            }

            @Override // org.junit.experimental.theories.PotentialAssignment
            public String getDescription() throws CouldNotGenerateValueException {
                return name;
            }
        };
    }
}
