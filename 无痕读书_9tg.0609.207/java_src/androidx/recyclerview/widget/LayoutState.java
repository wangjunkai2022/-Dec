package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.apk.Cgoto;
/* loaded from: classes8.dex */
public class LayoutState {
    public static final int INVALID_LAYOUT = Integer.MIN_VALUE;
    public static final int ITEM_DIRECTION_HEAD = -1;
    public static final int ITEM_DIRECTION_TAIL = 1;
    public static final int LAYOUT_END = 1;
    public static final int LAYOUT_START = -1;
    public int mAvailable;
    public int mCurrentPosition;
    public boolean mInfinite;
    public int mItemDirection;
    public int mLayoutDirection;
    public boolean mStopInFocusable;
    public boolean mRecycle = true;
    public int mStartLine = 0;
    public int mEndLine = 0;

    public boolean hasMore(RecyclerView.State state) {
        int i = this.mCurrentPosition;
        return i >= 0 && i < state.getItemCount();
    }

    public View next(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
        this.mCurrentPosition += this.mItemDirection;
        return viewForPosition;
    }

    public String toString() {
        StringBuilder m1016super = Cgoto.m1016super("LayoutState{mAvailable=");
        m1016super.append(this.mAvailable);
        m1016super.append(", mCurrentPosition=");
        m1016super.append(this.mCurrentPosition);
        m1016super.append(", mItemDirection=");
        m1016super.append(this.mItemDirection);
        m1016super.append(", mLayoutDirection=");
        m1016super.append(this.mLayoutDirection);
        m1016super.append(", mStartLine=");
        m1016super.append(this.mStartLine);
        m1016super.append(", mEndLine=");
        m1016super.append(this.mEndLine);
        m1016super.append('}');
        return m1016super.toString();
    }
}
