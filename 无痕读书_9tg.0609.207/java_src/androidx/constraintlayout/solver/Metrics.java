package androidx.constraintlayout.solver;

import com.apk.Cgoto;
import java.util.ArrayList;
/* loaded from: classes8.dex */
public class Metrics {
    public long additionalMeasures;
    public long barrierConnectionResolved;
    public long bfs;
    public long centerConnectionResolved;
    public long chainConnectionResolved;
    public long constraints;
    public long errors;
    public long extravariables;
    public long fullySolved;
    public long graphOptimizer;
    public long iterations;
    public long lastTableSize;
    public long matchConnectionResolved;
    public long maxRows;
    public long maxTableSize;
    public long maxVariables;
    public long measures;
    public long minimize;
    public long minimizeGoal;
    public long nonresolvedWidgets;
    public long oldresolvedWidgets;
    public long optimize;
    public long pivots;
    public ArrayList<String> problematicLayouts = new ArrayList<>();
    public long resolutions;
    public long resolvedWidgets;
    public long simpleconstraints;
    public long slackvariables;
    public long tableSizeIncrease;
    public long variables;

    public void reset() {
        this.measures = 0L;
        this.additionalMeasures = 0L;
        this.resolutions = 0L;
        this.tableSizeIncrease = 0L;
        this.maxTableSize = 0L;
        this.lastTableSize = 0L;
        this.maxVariables = 0L;
        this.maxRows = 0L;
        this.minimize = 0L;
        this.minimizeGoal = 0L;
        this.constraints = 0L;
        this.simpleconstraints = 0L;
        this.optimize = 0L;
        this.iterations = 0L;
        this.pivots = 0L;
        this.bfs = 0L;
        this.variables = 0L;
        this.errors = 0L;
        this.slackvariables = 0L;
        this.extravariables = 0L;
        this.fullySolved = 0L;
        this.graphOptimizer = 0L;
        this.resolvedWidgets = 0L;
        this.oldresolvedWidgets = 0L;
        this.nonresolvedWidgets = 0L;
        this.centerConnectionResolved = 0L;
        this.matchConnectionResolved = 0L;
        this.chainConnectionResolved = 0L;
        this.barrierConnectionResolved = 0L;
        this.problematicLayouts.clear();
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("\n*** Metrics ***\nmeasures: ");
        m1016super.append(this.measures);
        m1016super.append("\nadditionalMeasures: ");
        m1016super.append(this.additionalMeasures);
        m1016super.append("\nresolutions passes: ");
        m1016super.append(this.resolutions);
        m1016super.append("\ntable increases: ");
        m1016super.append(this.tableSizeIncrease);
        m1016super.append("\nmaxTableSize: ");
        m1016super.append(this.maxTableSize);
        m1016super.append("\nmaxVariables: ");
        m1016super.append(this.maxVariables);
        m1016super.append("\nmaxRows: ");
        m1016super.append(this.maxRows);
        m1016super.append("\n\nminimize: ");
        m1016super.append(this.minimize);
        m1016super.append("\nminimizeGoal: ");
        m1016super.append(this.minimizeGoal);
        m1016super.append("\nconstraints: ");
        m1016super.append(this.constraints);
        m1016super.append("\nsimpleconstraints: ");
        m1016super.append(this.simpleconstraints);
        m1016super.append("\noptimize: ");
        m1016super.append(this.optimize);
        m1016super.append("\niterations: ");
        m1016super.append(this.iterations);
        m1016super.append("\npivots: ");
        m1016super.append(this.pivots);
        m1016super.append("\nbfs: ");
        m1016super.append(this.bfs);
        m1016super.append("\nvariables: ");
        m1016super.append(this.variables);
        m1016super.append("\nerrors: ");
        m1016super.append(this.errors);
        m1016super.append("\nslackvariables: ");
        m1016super.append(this.slackvariables);
        m1016super.append("\nextravariables: ");
        m1016super.append(this.extravariables);
        m1016super.append("\nfullySolved: ");
        m1016super.append(this.fullySolved);
        m1016super.append("\ngraphOptimizer: ");
        m1016super.append(this.graphOptimizer);
        m1016super.append("\nresolvedWidgets: ");
        m1016super.append(this.resolvedWidgets);
        m1016super.append("\noldresolvedWidgets: ");
        m1016super.append(this.oldresolvedWidgets);
        m1016super.append("\nnonresolvedWidgets: ");
        m1016super.append(this.nonresolvedWidgets);
        m1016super.append("\ncenterConnectionResolved: ");
        m1016super.append(this.centerConnectionResolved);
        m1016super.append("\nmatchConnectionResolved: ");
        m1016super.append(this.matchConnectionResolved);
        m1016super.append("\nchainConnectionResolved: ");
        m1016super.append(this.chainConnectionResolved);
        m1016super.append("\nbarrierConnectionResolved: ");
        m1016super.append(this.barrierConnectionResolved);
        m1016super.append("\nproblematicsLayouts: ");
        m1016super.append(this.problematicLayouts);
        m1016super.append("\n");
        return m1016super.toString();
    }
}
