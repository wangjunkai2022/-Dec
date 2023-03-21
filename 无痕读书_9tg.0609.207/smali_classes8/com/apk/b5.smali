.class public Lcom/apk/b5;
.super Ljava/lang/Object;
.source "UserPresenter.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Lcom/apk/g5;


# direct methods
.method public constructor <init>(Lcom/apk/g5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b5;->do:Lcom/apk/g5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/b5;->do:Lcom/apk/g5;

    .line 2
    iget-object v0, v0, Lcom/apk/g5;->new:Lcom/lxj/xpopup/core/BasePopupView;

    const v1, 0x7f0901c2

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppCheckBox;

    .line 4
    iget-object v1, p0, Lcom/apk/b5;->do:Lcom/apk/g5;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/apk/g5;->for(Lcom/apk/g5;ZZ)V

    return-void
.end method
