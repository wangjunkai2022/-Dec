package androidx.constraintlayout.solver;

import androidx.exifinterface.media.ExifInterface;
import com.apk.Cgoto;
import java.util.Arrays;

/* loaded from: classes8.dex */
public class SolverVariable {
    public static final boolean INTERNAL_DEBUG = false;
    public static final int MAX_STRENGTH = 7;
    public static final int STRENGTH_BARRIER = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 6;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    public static int uniqueConstantId = 1;
    public static int uniqueErrorId = 1;
    public static int uniqueId = 1;
    public static int uniqueSlackId = 1;
    public static int uniqueUnrestrictedId = 1;
    public float computedValue;
    public int definitionId;
    public int id;
    public ArrayRow[] mClientEquations;
    public int mClientEquationsCount;
    public String mName;
    public Type mType;
    public int strength;
    public float[] strengthVector;
    public int usageInRowCount;

    /* renamed from: androidx.constraintlayout.solver.SolverVariable$1  reason: invalid class name */
    /* loaded from: classes8.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type = iArr;
            try {
                Type type = Type.UNRESTRICTED;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type2 = Type.CONSTANT;
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type3 = Type.SLACK;
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type4 = Type.ERROR;
                iArr4[3] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;
                Type type5 = Type.UNKNOWN;
                iArr5[4] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes8.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mName = str;
        this.mType = type;
    }

    public static String getUniqueName(Type type, String str) {
        if (str != null) {
            StringBuilder m1016super = Cgoto.m1016super(str);
            m1016super.append(uniqueErrorId);
            return m1016super.toString();
        }
        int ordinal = type.ordinal();
        if (ordinal == 0) {
            StringBuilder m1016super2 = Cgoto.m1016super("U");
            int i = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = i;
            m1016super2.append(i);
            return m1016super2.toString();
        } else if (ordinal == 1) {
            StringBuilder m1016super3 = Cgoto.m1016super("C");
            int i2 = uniqueConstantId + 1;
            uniqueConstantId = i2;
            m1016super3.append(i2);
            return m1016super3.toString();
        } else if (ordinal == 2) {
            StringBuilder m1016super4 = Cgoto.m1016super(ExifInterface.LATITUDE_SOUTH);
            int i3 = uniqueSlackId + 1;
            uniqueSlackId = i3;
            m1016super4.append(i3);
            return m1016super4.toString();
        } else if (ordinal == 3) {
            StringBuilder m1016super5 = Cgoto.m1016super("e");
            int i4 = uniqueErrorId + 1;
            uniqueErrorId = i4;
            m1016super5.append(i4);
            return m1016super5.toString();
        } else if (ordinal == 4) {
            StringBuilder m1016super6 = Cgoto.m1016super(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            int i5 = uniqueId + 1;
            uniqueId = i5;
            m1016super6.append(i5);
            return m1016super6.toString();
        } else {
            throw new AssertionError(type.name());
        }
    }

    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.mClientEquationsCount;
            if (i < i2) {
                if (this.mClientEquations[i] == arrayRow) {
                    return;
                }
                i++;
            } else {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (i2 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i3 = this.mClientEquationsCount;
                arrayRowArr2[i3] = arrayRow;
                this.mClientEquationsCount = i3 + 1;
                return;
            }
        }
    }

    public void clearStrengths() {
        for (int i = 0; i < 7; i++) {
            this.strengthVector[i] = 0.0f;
        }
    }

    public String getName() {
        return this.mName;
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i = this.mClientEquationsCount;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.mClientEquations[i2] == arrayRow) {
                for (int i3 = 0; i3 < (i - i2) - 1; i3++) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int i4 = i2 + i3;
                    arrayRowArr[i4] = arrayRowArr[i4 + 1];
                }
                this.mClientEquationsCount--;
                return;
            }
        }
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    public String strengthsToString() {
        String str = this + "[";
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < this.strengthVector.length; i++) {
            StringBuilder m1016super = Cgoto.m1016super(str);
            m1016super.append(this.strengthVector[i]);
            String sb = m1016super.toString();
            float[] fArr = this.strengthVector;
            if (fArr[i] > 0.0f) {
                z = false;
            } else if (fArr[i] < 0.0f) {
                z = true;
            }
            if (this.strengthVector[i] != 0.0f) {
                z2 = false;
            }
            if (i < this.strengthVector.length - 1) {
                str = Cgoto.m989case(sb, ", ");
            } else {
                str = Cgoto.m989case(sb, "] ");
            }
        }
        if (z) {
            str = Cgoto.m989case(str, " (-)");
        }
        return z2 ? Cgoto.m989case(str, " (*)") : str;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("");
        m1016super.append(this.mName);
        return m1016super.toString();
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int i = this.mClientEquationsCount;
        for (int i2 = 0; i2 < i; i2++) {
            ArrayRow[] arrayRowArr = this.mClientEquations;
            arrayRowArr[i2].variables.updateFromRow(arrayRowArr[i2], arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mType = type;
    }
}
