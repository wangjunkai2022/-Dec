.class public Lcom/manhua/ui/fragment/ComicShelfFragment$try;
.super Lcom/apk/c1;
.source "ComicShelfFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$try;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$try;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment;->case:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/apk/p3;->for()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$try;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->k(Lcom/manhua/ui/fragment/ComicShelfFragment;)V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$try;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-static {}, Lcom/apk/da;->this()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/manhua/ui/fragment/ComicShelfFragment;->q(I)V

    return-void
.end method
