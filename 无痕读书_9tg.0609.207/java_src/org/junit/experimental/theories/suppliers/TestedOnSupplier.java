package org.junit.experimental.theories.suppliers;

import java.util.ArrayList;
import java.util.List;
import org.junit.experimental.theories.ParameterSignature;
import org.junit.experimental.theories.ParameterSupplier;
import org.junit.experimental.theories.PotentialAssignment;
/* loaded from: classes6.dex */
public class TestedOnSupplier extends ParameterSupplier {
    @Override // org.junit.experimental.theories.ParameterSupplier
    public List<PotentialAssignment> getValueSources(ParameterSignature sig) {
        List<PotentialAssignment> list = new ArrayList<>();
        TestedOn testedOn = (TestedOn) sig.getAnnotation(TestedOn.class);
        int[] ints = testedOn.ints();
        for (int i : ints) {
            list.add(PotentialAssignment.forValue("ints", Integer.valueOf(i)));
        }
        return list;
    }
}
