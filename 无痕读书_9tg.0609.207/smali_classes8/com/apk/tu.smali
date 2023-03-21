.class public final Lcom/apk/tu;
.super Landroidx/fragment/app/Fragment;
.source "SupportRequestManagerFragment.java"


# instance fields
.field public do:Lcom/apk/ku;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/apk/tu;->do:Lcom/apk/ku;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/apk/ku;->do(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object v0, p0, Lcom/apk/tu;->do:Lcom/apk/ku;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/ku;->if(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/apk/tu;->do:Lcom/apk/ku;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/ku;->for()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/apk/tu;->do:Lcom/apk/ku;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/apk/tu;->do:Lcom/apk/ku;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/ku;->new()V

    :cond_0
    return-void
.end method
