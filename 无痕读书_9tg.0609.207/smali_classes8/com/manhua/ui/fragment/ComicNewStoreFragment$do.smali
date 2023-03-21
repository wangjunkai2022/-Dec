.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;
.super Lcom/apk/bg;
.source "ComicNewStoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicNewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902bf

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-class v2, Lcom/manhua/ui/activity/ComicUpdateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902bb

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/manhua/ui/activity/ComicNewReleaseActivity;->k(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902bc

    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-static {p1}, Lcom/manhua/ui/activity/ComicRankActivity;->i(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0902be

    if-ne v0, v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-class v2, Lcom/manhua/ui/activity/ComicListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902bd

    if-ne p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$do;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const-class v2, Lcom/manhua/ui/activity/ComicCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
