.class public final Lcom/hjq/toast/CustomToast;
.super Lcom/hjq/toast/NormalToast;
.source "CustomToast.java"


# instance fields
.field public mGravity:I

.field public mHorizontalMargin:F

.field public final mToastHelper:Lcom/hjq/toast/ToastHelper;

.field public mVerticalMargin:F

.field public mView:Landroid/view/View;

.field public mXOffset:I

.field public mYOffset:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/NormalToast;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance v0, Lcom/hjq/toast/ToastHelper;

    invoke-direct {v0, p0, p1}, Lcom/hjq/toast/ToastHelper;-><init>(Landroid/widget/Toast;Landroid/app/Application;)V

    iput-object v0, p0, Lcom/hjq/toast/CustomToast;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    invoke-virtual {v0}, Lcom/hjq/toast/ToastHelper;->cancel()V

    return-void
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mGravity:I

    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mHorizontalMargin:F

    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mVerticalMargin:F

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mXOffset:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hjq/toast/CustomToast;->mYOffset:I

    return v0
.end method

.method public setGravity(III)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mGravity:I

    .line 2
    iput p2, p0, Lcom/hjq/toast/CustomToast;->mXOffset:I

    .line 3
    iput p3, p0, Lcom/hjq/toast/CustomToast;->mYOffset:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hjq/toast/CustomToast;->mHorizontalMargin:F

    .line 2
    iput p2, p0, Lcom/hjq/toast/CustomToast;->mVerticalMargin:F

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/CustomToast;->mView:Landroid/view/View;

    .line 2
    invoke-static {p1}, Lcom/hjq/toast/NormalToast;->findMessageView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hjq/toast/NormalToast;->setMessageView(Landroid/widget/TextView;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/CustomToast;->mToastHelper:Lcom/hjq/toast/ToastHelper;

    invoke-virtual {v0}, Lcom/hjq/toast/ToastHelper;->show()V

    return-void
.end method
