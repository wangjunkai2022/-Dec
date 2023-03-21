.class public Lcom/apk/b7$for;
.super Ljava/lang/Object;
.source "BaseReadActivity.java"

# interfaces
.implements Lcom/apk/p$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/b7;->l(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/b7;


# direct methods
.method public constructor <init>(Lcom/apk/b7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 2
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 5
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

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
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 2
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 5
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public instanceof()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 2
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 5
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->for()V

    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 2
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 5
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

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
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 2
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 4
    iget-object v1, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 5
    iput-object v0, v1, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 7
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 9
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 10
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    .line 12
    iget-object v0, v0, Lcom/apk/b7;->for:Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;

    .line 13
    iget-object v1, p0, Lcom/apk/b7$for;->do:Lcom/apk/b7;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/biquge/ebook/app/ui/view/AppUpgradeLayout;->new(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/NewVersionBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
