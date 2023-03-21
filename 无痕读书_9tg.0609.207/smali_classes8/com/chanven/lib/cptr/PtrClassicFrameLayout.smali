.class public Lcom/chanven/lib/cptr/PtrClassicFrameLayout;
.super Lcom/apk/ss;
.source "PtrClassicFrameLayout.java"


# instance fields
.field public abstract:F

.field public continue:Z

.field public package:Lcom/apk/rs;

.field public private:F

.field public strictfp:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/ss;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->super()V

    .line 3
    invoke-virtual {p0}, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->super()V

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/apk/rs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->package:Lcom/apk/rs;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->continue:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 5
    iget v4, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->abstract:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 6
    iget v4, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->private:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 7
    iget v4, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->strictfp:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    .line 8
    iput-boolean v2, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->continue:Z

    return v1

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->continue:Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->private:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->abstract:F

    .line 12
    iput-boolean v1, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->continue:Z

    .line 13
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final super()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->strictfp:I

    .line 2
    new-instance v0, Lcom/apk/rs;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apk/rs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->package:Lcom/apk/rs;

    .line 3
    invoke-virtual {p0, v0}, Lcom/apk/ss;->setHeaderView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/chanven/lib/cptr/PtrClassicFrameLayout;->package:Lcom/apk/rs;

    .line 5
    iget-object v1, p0, Lcom/apk/ss;->catch:Lcom/apk/vs;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez v1, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    iget-object v2, v1, Lcom/apk/vs;->do:Lcom/apk/us;

    if-nez v2, :cond_2

    .line 7
    iput-object v0, v1, Lcom/apk/vs;->do:Lcom/apk/us;

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/apk/vs;->do:Lcom/apk/us;

    if-eqz v2, :cond_3

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    iget-object v2, v1, Lcom/apk/vs;->if:Lcom/apk/vs;

    if-nez v2, :cond_5

    .line 10
    new-instance v2, Lcom/apk/vs;

    invoke-direct {v2}, Lcom/apk/vs;-><init>()V

    .line 11
    iput-object v0, v2, Lcom/apk/vs;->do:Lcom/apk/us;

    .line 12
    iput-object v2, v1, Lcom/apk/vs;->if:Lcom/apk/vs;

    :goto_2
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method
