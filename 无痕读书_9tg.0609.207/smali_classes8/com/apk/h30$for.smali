.class public Lcom/apk/h30$for;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/h30;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h30;


# direct methods
.method public constructor <init>(Lcom/apk/h30;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    invoke-virtual {v1}, Lcom/apk/h30;->goto()F

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v3, v1

    .line 4
    iget-object v1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 5
    iget v1, v1, Lcom/apk/h30;->try:F

    float-to-double v5, v1

    const-wide v7, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    iget-object v3, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 7
    iget v3, v3, Lcom/apk/h30;->try:F

    .line 8
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/apk/h30;->break(FFFZ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    iget-object v3, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 10
    iget v3, v3, Lcom/apk/h30;->for:F

    .line 11
    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/apk/h30;->break(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 2
    iget-object v1, v0, Lcom/apk/h30;->public:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 4
    invoke-interface {v1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    invoke-virtual {v0}, Lcom/apk/h30;->for()Landroid/graphics/RectF;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 7
    iget-object v2, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 8
    iget-object v2, v2, Lcom/apk/h30;->native:Lcom/apk/g30;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 9
    check-cast v2, Lcom/apk/lz$new;

    .line 10
    iget-object v2, v2, Lcom/apk/lz$new;->do:Lcom/apk/lz;

    .line 11
    iget-object v2, v2, Lcom/apk/lz;->new:Lcom/apk/l30;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2, v1, p1, v3}, Lcom/apk/l30;->do(FFZ)V

    :cond_1
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    .line 15
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 16
    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    .line 17
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr p1, v0

    .line 18
    iget-object v0, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 19
    iget-object v2, v0, Lcom/apk/h30;->while:Lcom/apk/c30;

    if-eqz v2, :cond_2

    .line 20
    iget-object v0, v0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 21
    invoke-interface {v2, v0, v1, p1}, Lcom/apk/c30;->do(Landroid/widget/ImageView;FF)V

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/apk/h30$for;->do:Lcom/apk/h30;

    .line 23
    iget-object v0, p1, Lcom/apk/h30;->import:Lcom/apk/b30;

    if-eqz v0, :cond_4

    .line 24
    iget-object p1, p1, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 25
    invoke-interface {v0, p1}, Lcom/apk/b30;->do(Landroid/widget/ImageView;)V

    :cond_4
    return v3
.end method
