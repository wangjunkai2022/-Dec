.class public Lcom/apk/n90;
.super Ljava/lang/Object;
.source "TrStateView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic do:Lcom/tr/comment/sdk/commons/widget/TrStateView;


# direct methods
.method public constructor <init>(Lcom/tr/comment/sdk/commons/widget/TrStateView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n90;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/n90;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/apk/n90;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 3
    iput v1, v0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->goto:I

    .line 4
    iget-object v0, p0, Lcom/apk/n90;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 5
    iput v1, v0, Lcom/tr/comment/sdk/commons/widget/TrStateView;->this:I

    .line 6
    iget-object v0, p0, Lcom/apk/n90;->do:Lcom/tr/comment/sdk/commons/widget/TrStateView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
