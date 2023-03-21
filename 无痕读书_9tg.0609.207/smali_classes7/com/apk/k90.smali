.class public Lcom/apk/k90;
.super Ljava/lang/Object;
.source "TrReplyLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/k90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/apk/k90;->do:Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;

    invoke-static {v0, p1}, Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;->this(Lcom/tr/comment/sdk/commons/widget/TrReplyLayout;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
