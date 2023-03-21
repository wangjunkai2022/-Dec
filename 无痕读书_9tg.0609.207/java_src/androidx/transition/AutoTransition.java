package androidx.transition;

import android.content.Context;
import android.util.AttributeSet;
/* loaded from: classes8.dex */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        init();
    }

    private void init() {
        setOrdering(1);
        addTransition(new Fade(2)).addTransition(new ChangeBounds()).addTransition(new Fade(1));
    }

    public AutoTransition(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }
}
