.class public abstract Lcom/chad/library/adapter/base/listener/SimpleClickListener;
.super Ljava/lang/Object;
.source "SimpleClickListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "SimpleClickListener"


# instance fields
.field public baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

.field public mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public mIsPrepressed:Z

.field public mIsShowPress:Z

.field public mPressedView:Landroid/view/View;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsPrepressed:Z

    .line 3
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsShowPress:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mPressedView:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsPrepressed:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsPrepressed:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/chad/library/adapter/base/listener/SimpleClickListener;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mPressedView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mPressedView:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsShowPress:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/chad/library/adapter/base/listener/SimpleClickListener;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->isHeaderOrFooterPosition(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->setPressViewHotSpot(Landroid/view/MotionEvent;Landroid/view/View;)V

    return-void
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0x555

    if-eq p1, v0, :cond_2

    const/16 v0, 0x111

    if-eq p1, v0, :cond_2

    const/16 v0, 0x333

    if-eq p1, v0, :cond_2

    const/16 v0, 0x222

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isHeaderOrFooterView(I)Z
    .locals 1

    const/16 v0, 0x555

    if-eq p1, v0, :cond_1

    const/16 v0, 0x111

    if-eq p1, v0, :cond_1

    const/16 v0, 0x333

    if-eq p1, v0, :cond_1

    const/16 v0, 0x222

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setPressViewHotSpot(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 4
    aget v0, v0, v3

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpl-float v2, v4, v2

    if-gtz v2, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v4, v0

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 4
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;

    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    .line 5
    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->baseQuickAdapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 7
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    iget-object v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;

    iget-object v2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/chad/library/adapter/base/listener/SimpleClickListener$ItemTouchHelperGestureListener;-><init>(Lcom/chad/library/adapter/base/listener/SimpleClickListener;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v0, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsShowPress:Z

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mPressedView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 10
    iget-object p2, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/chad/library/adapter/base/BaseViewHolder;

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->isHeaderOrFooterView(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mPressedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 13
    :cond_3
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsShowPress:Z

    .line 14
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mIsPrepressed:Z

    :cond_4
    return v0
.end method

.method public abstract onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end method

.method public abstract onItemChildLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end method

.method public abstract onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end method

.method public abstract onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/chad/library/adapter/base/listener/SimpleClickListener;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
