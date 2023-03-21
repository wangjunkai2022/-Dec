.class public Lcom/apk/dv$do;
.super Ljava/lang/Object;
.source "ScaleAlphaAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/dv;->for()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/dv;


# direct methods
.method public constructor <init>(Lcom/apk/dv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/dv$do;->do:Lcom/apk/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/dv$do;->do:Lcom/apk/dv;

    .line 2
    iget-object v1, v0, Lcom/apk/cv;->if:Lcom/apk/ov;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 4
    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 6
    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 8
    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setPivotX(F)V

    .line 10
    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 12
    iget-object v0, v0, Lcom/apk/cv;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method
