.class public Lcom/apk/ss$for;
.super Ljava/lang/Object;
.source "PtrFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/ss;

.field public do:I

.field public for:Z

.field public if:Landroid/widget/Scroller;

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Lcom/apk/ss;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/apk/ss$for;->for:Z

    .line 3
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/ss$for;->for:Z

    .line 2
    iput v0, p0, Lcom/apk/ss$for;->do:I

    .line 3
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public if(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    .line 2
    iget-object v0, v0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 3
    iget v0, v0, Lcom/apk/xs;->try:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    .line 5
    iget-object v3, v0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    .line 6
    iget v3, v3, Lcom/apk/xs;->try:I

    .line 7
    iput v3, p0, Lcom/apk/ss$for;->new:I

    .line 8
    iput p1, p0, Lcom/apk/ss$for;->try:I

    sub-int v8, p1, v3

    .line 9
    sget-boolean p1, Lcom/apk/ss;->extends:Z

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    iput v1, p0, Lcom/apk/ss$for;->do:I

    .line 12
    iget-object p1, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 15
    iget-object p1, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 16
    iput-boolean v2, p0, Lcom/apk/ss$for;->for:Z

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v2, p0, Lcom/apk/ss$for;->if:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    .line 3
    iget v3, p0, Lcom/apk/ss$for;->do:I

    sub-int v3, v2, v3

    .line 4
    sget-boolean v4, Lcom/apk/ss;->extends:Z

    if-nez v0, :cond_2

    .line 5
    iput v2, p0, Lcom/apk/ss$for;->do:I

    .line 6
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    int-to-float v1, v3

    .line 7
    invoke-virtual {v0, v1}, Lcom/apk/ss;->new(F)V

    .line 8
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/apk/ss$for;->do()V

    .line 10
    iget-object v0, p0, Lcom/apk/ss$for;->case:Lcom/apk/ss;

    .line 11
    iget-object v2, v0, Lcom/apk/ss;->switch:Lcom/apk/xs;

    invoke-virtual {v2}, Lcom/apk/xs;->if()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/apk/ss;->for()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lcom/apk/ss;->else(Z)V

    :cond_3
    :goto_2
    return-void
.end method
