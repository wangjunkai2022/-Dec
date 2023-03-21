.class public Lcom/manhua/ui/widget/ReadLoadingView;
.super Landroid/widget/FrameLayout;
.source "ReadLoadingView.java"


# instance fields
.field public mLogingTxt:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090295
    .end annotation
.end field

.field public mReloadLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09037a
    .end annotation
.end field


# virtual methods
.method public setBgColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setReloadListener(Lcom/apk/bg;)V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/widget/ReadLoadingView;->mLogingTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
