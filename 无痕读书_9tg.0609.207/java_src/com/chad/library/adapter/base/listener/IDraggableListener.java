package com.chad.library.adapter.base.listener;

import android.graphics.Canvas;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes8.dex */
public interface IDraggableListener {
    boolean hasToggleView();

    boolean isItemDraggable();

    boolean isItemSwipeEnable();

    void onItemDragEnd(RecyclerView.ViewHolder viewHolder);

    void onItemDragMoving(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

    void onItemDragStart(RecyclerView.ViewHolder viewHolder);

    void onItemSwipeClear(RecyclerView.ViewHolder viewHolder);

    void onItemSwipeStart(RecyclerView.ViewHolder viewHolder);

    void onItemSwiped(RecyclerView.ViewHolder viewHolder);

    void onItemSwiping(Canvas canvas, RecyclerView.ViewHolder viewHolder, float f, float f2, boolean z);
}
