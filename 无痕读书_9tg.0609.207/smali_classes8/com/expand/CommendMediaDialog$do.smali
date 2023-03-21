.class public Lcom/expand/CommendMediaDialog$do;
.super Lcom/apk/bg;
.source "CommendMediaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/expand/CommendMediaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/CommendMediaDialog;


# direct methods
.method public constructor <init>(Lcom/expand/CommendMediaDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/CommendMediaDialog$do;->do:Lcom/expand/CommendMediaDialog;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09048d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/expand/CommendMediaDialog$do;->do:Lcom/expand/CommendMediaDialog;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09048e

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090491

    if-ne v0, v1, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/expand/CommendMediaDialog$do;->do:Lcom/expand/CommendMediaDialog;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;

    invoke-static {v0, p1}, Lcom/expand/CommendMediaDialog;->if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;)V

    :cond_2
    :goto_0
    return-void
.end method
