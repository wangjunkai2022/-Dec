.class public Lcom/chad/library/adapter/base/animation/AlphaInAnimation;
.super Ljava/lang/Object;
.source "AlphaInAnimation.java"

# interfaces
.implements Lcom/chad/library/adapter/base/animation/BaseAnimation;


# static fields
.field public static final DEFAULT_ALPHA_FROM:F


# instance fields
.field public final mFrom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;->mFrom:F

    return-void
.end method


# virtual methods
.method public getAnimators(Landroid/view/View;)[Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1
    iget v3, p0, Lcom/chad/library/adapter/base/animation/AlphaInAnimation;->mFrom:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v4

    return-object v1
.end method
