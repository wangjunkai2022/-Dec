.class public Lcom/apk/l30$if;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GestureDetectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/l30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/l30;


# direct methods
.method public constructor <init>(Lcom/apk/l30;Lcom/apk/l30$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l30$if;->do:Lcom/apk/l30;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/r0;->catch()Lcom/apk/r0;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Lcom/apk/n0;->extends:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apk/l30$if;->do:Lcom/apk/l30;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/apk/l30;->do(FFZ)V

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/l30$if;->do:Lcom/apk/l30;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/apk/l30;->do(FFZ)V

    return v2
.end method
