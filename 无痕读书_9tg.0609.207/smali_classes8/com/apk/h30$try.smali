.class public Lcom/apk/h30$try;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "try"
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/h30;

.field public final do:F

.field public final for:J

.field public final if:F

.field public final new:F

.field public final try:F


# direct methods
.method public constructor <init>(Lcom/apk/h30;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/apk/h30$try;->do:F

    .line 3
    iput p5, p0, Lcom/apk/h30$try;->if:F

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/apk/h30$try;->for:J

    .line 5
    iput p2, p0, Lcom/apk/h30$try;->new:F

    .line 6
    iput p3, p0, Lcom/apk/h30$try;->try:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apk/h30$try;->for:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    .line 2
    iget v2, v2, Lcom/apk/h30;->if:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    .line 5
    iget-object v2, v2, Lcom/apk/h30;->do:Landroid/view/animation/Interpolator;

    .line 6
    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 7
    iget v2, p0, Lcom/apk/h30$try;->new:F

    iget v3, p0, Lcom/apk/h30$try;->try:F

    invoke-static {v3, v2, v0, v2}, Lcom/apk/goto;->do(FFFF)F

    move-result v2

    .line 8
    iget-object v3, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    invoke-virtual {v3}, Lcom/apk/h30;->goto()F

    move-result v3

    div-float/2addr v2, v3

    .line 9
    iget-object v3, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    .line 10
    iget-object v3, v3, Lcom/apk/h30;->continue:Lcom/apk/z20;

    .line 11
    iget v4, p0, Lcom/apk/h30$try;->do:F

    iget v5, p0, Lcom/apk/h30$try;->if:F

    check-cast v3, Lcom/apk/h30$do;

    invoke-virtual {v3, v2, v4, v5}, Lcom/apk/h30$do;->do(FFF)V

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/apk/h30$try;->case:Lcom/apk/h30;

    .line 13
    iget-object v0, v0, Lcom/apk/h30;->goto:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
