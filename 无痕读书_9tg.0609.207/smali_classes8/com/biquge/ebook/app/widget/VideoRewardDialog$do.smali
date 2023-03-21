.class public Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;
.super Lcom/apk/bg;
.source "VideoRewardDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/VideoRewardDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/VideoRewardDialog;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/VideoRewardDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoRewardDialog;

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
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoRewardDialog;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/VideoRewardDialog;->new:Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/biquge/ebook/app/widget/VideoRewardDialog$if;->do()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0904eb

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoRewardDialog;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100226

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9"

    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/VideoRewardDialog$do;->do:Lcom/biquge/ebook/app/widget/VideoRewardDialog;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
