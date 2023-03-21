.class public final Lcom/apk/pw$do;
.super Ljava/lang/Object;
.source "XPopupUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/pw;->for(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/view/ViewGroup;

.field public final synthetic for:I

.field public final synthetic if:I

.field public final synthetic new:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;IILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    iput p2, p0, Lcom/apk/pw$do;->if:I

    iput p3, p0, Lcom/apk/pw$do;->for:I

    iput-object p4, p0, Lcom/apk/pw$do;->new:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 5
    iget v4, p0, Lcom/apk/pw$do;->if:I

    if-eqz v4, :cond_0

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    :cond_0
    iget-object v3, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 9
    iget-object v3, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 10
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    :cond_1
    iget v4, p0, Lcom/apk/pw$do;->for:I

    if-eqz v4, :cond_4

    .line 12
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/apk/pw;->const(Landroid/content/Context;)I

    move-result v5

    invoke-static {}, Lcom/apk/pw;->class()I

    move-result v6

    add-int/2addr v6, v5

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    iget v1, p0, Lcom/apk/pw$do;->for:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Lcom/apk/pw$do;->for:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/apk/pw$do;->do:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcom/apk/pw$do;->new:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method
