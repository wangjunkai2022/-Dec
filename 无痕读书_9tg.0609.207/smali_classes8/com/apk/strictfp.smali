.class public abstract Lcom/apk/strictfp;
.super Landroid/widget/FrameLayout;
.source "AdBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/strictfp$do;
    }
.end annotation


# instance fields
.field public do:I

.field public for:Z

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/apk/strictfp;->for:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/apk/strictfp;->for:Z

    return-void
.end method


# virtual methods
.method public abstract do()V
.end method

.method public setAdHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/strictfp;->if:I

    return-void
.end method

.method public setAdWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/apk/strictfp;->do:I

    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apk/strictfp;->for:Z

    return-void
.end method
