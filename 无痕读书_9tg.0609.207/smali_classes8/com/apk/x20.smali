.class public Lcom/apk/x20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRecyclerView.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ZoomRecyclerView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ZoomRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/x20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/x20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/x20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/x20;->do:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/manhua/ui/widget/ZoomRecyclerView;->import:Z

    return-void
.end method
