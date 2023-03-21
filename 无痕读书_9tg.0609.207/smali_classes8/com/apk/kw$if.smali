.class public Lcom/apk/kw$if;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/kw;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/kw;


# direct methods
.method public constructor <init>(Lcom/apk/kw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kw$if;->do:Lcom/apk/kw;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/kw$if;->do:Lcom/apk/kw;

    .line 2
    iget-object v1, v0, Lcom/apk/kw;->switch:Lcom/apk/gw;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/apk/kw;->goto()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/kw$if;->do:Lcom/apk/kw;

    .line 7
    iget-object v0, v0, Lcom/apk/kw;->switch:Lcom/apk/gw;

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/apk/gw;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/kw$if;->do:Lcom/apk/kw;

    .line 2
    iget-object v0, p1, Lcom/apk/kw;->return:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/apk/kw;->goto:Landroid/widget/ImageView;

    .line 4
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method
