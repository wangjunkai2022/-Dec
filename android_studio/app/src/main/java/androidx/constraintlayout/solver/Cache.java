package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.Pools;

/* loaded from: classes8.dex */
public class Cache {
    public Pools.Pool<ArrayRow> arrayRowPool = new Pools.SimplePool(256);
    public Pools.Pool<SolverVariable> solverVariablePool = new Pools.SimplePool(256);
    public SolverVariable[] mIndexedVariables = new SolverVariable[32];
}
