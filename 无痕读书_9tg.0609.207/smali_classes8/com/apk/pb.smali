.class public Lcom/apk/pb;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/apk/p$new;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/HomeFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 6
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->do(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public goto()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public instanceof()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for()V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->if(JJ)V

    :cond_0
    return-void
.end method

.method public static(Lcom/biquge/ebook/app/bean/NewVersionBean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    const v1, 0x7f090285

    .line 4
    invoke-virtual {v0, v1}, Lcom/apk/g6;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5
    check-cast v0, Landroid/view/ViewStub;

    .line 6
    iget-object v1, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 7
    iput-object v0, v1, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 15
    iget-object v1, p0, Lcom/apk/pb;->do:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, p1, v2}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/NewVersionBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
