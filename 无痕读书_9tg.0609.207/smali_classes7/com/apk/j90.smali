.class public Lcom/apk/j90;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TrReplyLayout.java"


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/j90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/apk/j90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->break(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;Z)V

    return-void
.end method
