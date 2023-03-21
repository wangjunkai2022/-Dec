package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import com.apk.Cgoto;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes8.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    public final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public boolean equals(Object obj) {
        if (obj instanceof TransitionValues) {
            TransitionValues transitionValues = (TransitionValues) obj;
            return this.view == transitionValues.view && this.values.equals(transitionValues.values);
        }
        return false;
    }

    public int hashCode() {
        return this.values.hashCode() + (this.view.hashCode() * 31);
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("TransitionValues@");
        m1016super.append(Integer.toHexString(hashCode()));
        m1016super.append(":\n");
        StringBuilder m1025while = Cgoto.m1025while(m1016super.toString(), "    view = ");
        m1025while.append(this.view);
        m1025while.append("\n");
        String m989case = Cgoto.m989case(m1025while.toString(), "    values:");
        for (String str : this.values.keySet()) {
            m989case = m989case + "    " + str + ": " + this.values.get(str) + "\n";
        }
        return m989case;
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }
}
