package org.junit.experimental.theories.internal;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import org.junit.experimental.theories.DataPoint;
import org.junit.experimental.theories.DataPoints;
import org.junit.experimental.theories.ParameterSignature;
import org.junit.experimental.theories.ParameterSupplier;
import org.junit.experimental.theories.PotentialAssignment;
import org.junit.runners.model.FrameworkMethod;
import org.junit.runners.model.TestClass;

/* loaded from: classes6.dex */
public class AllMembersSupplier extends ParameterSupplier {
    private final TestClass fClass;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class MethodParameterValue extends PotentialAssignment {
        private final FrameworkMethod fMethod;

        private MethodParameterValue(FrameworkMethod dataPointMethod) {
            this.fMethod = dataPointMethod;
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public Object getValue() throws PotentialAssignment.CouldNotGenerateValueException {
            try {
                return this.fMethod.invokeExplosively(null, new Object[0]);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("unexpected: getMethods returned an inaccessible method");
            } catch (IllegalArgumentException e2) {
                throw new RuntimeException("unexpected: argument length is checked");
            } catch (Throwable th) {
                throw new PotentialAssignment.CouldNotGenerateValueException();
            }
        }

        @Override // org.junit.experimental.theories.PotentialAssignment
        public String getDescription() throws PotentialAssignment.CouldNotGenerateValueException {
            return this.fMethod.getName();
        }
    }

    public AllMembersSupplier(TestClass type) {
        this.fClass = type;
    }

    @Override // org.junit.experimental.theories.ParameterSupplier
    public List<PotentialAssignment> getValueSources(ParameterSignature sig) {
        List<PotentialAssignment> list = new ArrayList<>();
        addFields(sig, list);
        addSinglePointMethods(sig, list);
        addMultiPointMethods(sig, list);
        return list;
    }

    private void addMultiPointMethods(ParameterSignature sig, List<PotentialAssignment> list) {
        for (FrameworkMethod dataPointsMethod : this.fClass.getAnnotatedMethods(DataPoints.class)) {
            try {
                addMultiPointArrayValues(sig, dataPointsMethod.getName(), list, dataPointsMethod.invokeExplosively(null, new Object[0]));
            } catch (Throwable th) {
            }
        }
    }

    private void addSinglePointMethods(ParameterSignature sig, List<PotentialAssignment> list) {
        for (FrameworkMethod dataPointMethod : this.fClass.getAnnotatedMethods(DataPoint.class)) {
            if (isCorrectlyTyped(sig, dataPointMethod.getType())) {
                list.add(new MethodParameterValue(dataPointMethod));
            }
        }
    }

    private void addFields(ParameterSignature sig, List<PotentialAssignment> list) {
        Field[] arr$ = this.fClass.getJavaClass().getFields();
        for (Field field : arr$) {
            if (Modifier.isStatic(field.getModifiers())) {
                Class<?> type = field.getType();
                if (sig.canAcceptArrayType(type) && field.getAnnotation(DataPoints.class) != null) {
                    try {
                        addArrayValues(field.getName(), list, getStaticFieldValue(field));
                    } catch (Throwable th) {
                    }
                } else if (sig.canAcceptType(type) && field.getAnnotation(DataPoint.class) != null) {
                    list.add(PotentialAssignment.forValue(field.getName(), getStaticFieldValue(field)));
                }
            }
        }
    }

    private void addArrayValues(String name, List<PotentialAssignment> list, Object array) {
        for (int i = 0; i < Array.getLength(array); i++) {
            list.add(PotentialAssignment.forValue(name + "[" + i + "]", Array.get(array, i)));
        }
    }

    private void addMultiPointArrayValues(ParameterSignature sig, String name, List<PotentialAssignment> list, Object array) throws Throwable {
        for (int i = 0; i < Array.getLength(array) && isCorrectlyTyped(sig, Array.get(array, i).getClass()); i++) {
            list.add(PotentialAssignment.forValue(name + "[" + i + "]", Array.get(array, i)));
        }
    }

    private boolean isCorrectlyTyped(ParameterSignature parameterSignature, Class<?> type) {
        return parameterSignature.canAcceptType(type);
    }

    private Object getStaticFieldValue(Field field) {
        try {
            return field.get(null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("unexpected: getFields returned an inaccessible field");
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException("unexpected: field from getClass doesn't exist on object");
        }
    }
}
