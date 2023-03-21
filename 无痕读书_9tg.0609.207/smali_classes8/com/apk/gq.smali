.class public Lcom/apk/gq;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/gq$do;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public case:Landroid/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final do:Lcom/apk/wp;

.field public final for:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/apk/gq;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/iq;

.field public new:Lcom/apk/qi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public try:Lcom/apk/gq;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/wp;

    invoke-direct {v0}, Lcom/apk/wp;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v1, Lcom/apk/gq$do;

    invoke-direct {v1, p0}, Lcom/apk/gq$do;-><init>(Lcom/apk/gq;)V

    iput-object v1, p0, Lcom/apk/gq;->if:Lcom/apk/iq;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/apk/gq;->for:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Lcom/apk/gq;->do:Lcom/apk/wp;

    return-void
.end method


# virtual methods
.method public final do(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/apk/gq;->if()V

    .line 2
    invoke-static {p1}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/ii;->else:Lcom/apk/hq;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Lcom/apk/hq;->case(Landroid/content/Context;)Z

    move-result p1

    .line 5
    invoke-virtual {v0, v2, v1, p1}, Lcom/apk/hq;->new(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Lcom/apk/gq;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lcom/apk/gq;->try:Lcom/apk/gq;

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/apk/gq;->try:Lcom/apk/gq;

    .line 9
    iget-object p1, p1, Lcom/apk/gq;->for:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 10
    :cond_1
    throw v1
.end method

.method public final if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/gq;->try:Lcom/apk/gq;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/gq;->for:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/apk/gq;->try:Lcom/apk/gq;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/apk/gq;->do(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const-string v0, "RMFragment"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/apk/gq;->do:Lcom/apk/wp;

    invoke-virtual {v0}, Lcom/apk/wp;->for()V

    .line 3
    invoke-virtual {p0}, Lcom/apk/gq;->if()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/gq;->if()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/apk/gq;->do:Lcom/apk/wp;

    invoke-virtual {v0}, Lcom/apk/wp;->new()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/apk/gq;->do:Lcom/apk/wp;

    invoke-virtual {v0}, Lcom/apk/wp;->try()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/gq;->case:Landroid/app/Fragment;

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
