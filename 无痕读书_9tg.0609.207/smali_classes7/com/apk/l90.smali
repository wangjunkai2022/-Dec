.class public Lcom/apk/l90;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrReplyLayout.java"


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/l90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/apk/l90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/l90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 4
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->import:Lcom/apk/i80;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/apk/s80;->import()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/l90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    .line 7
    iget-object p1, p1, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->new:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/tr/comment/sdk/commons/widget/TrStateView;->try()V

    :cond_1
    return-void
.end method
