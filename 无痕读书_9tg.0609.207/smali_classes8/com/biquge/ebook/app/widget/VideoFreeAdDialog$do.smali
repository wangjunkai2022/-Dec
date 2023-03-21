.class public Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;
.super Lcom/apk/bg;
.source "VideoFreeAdDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904ea

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/RewardVideoActivity;->r(Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0904eb

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904dc

    if-ne p1, v0, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/VideoFreeAdDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoFreeAdDialog;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method
