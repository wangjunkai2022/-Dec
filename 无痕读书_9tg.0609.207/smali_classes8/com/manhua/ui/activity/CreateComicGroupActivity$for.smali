.class public Lcom/manhua/ui/activity/CreateComicGroupActivity$for;
.super Lcom/apk/c1;
.source "CreateComicGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/CreateComicGroupActivity;->l(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/manhua/ui/activity/CreateComicGroupActivity;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicGroupActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->for:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    iput-object p2, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->if:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->for:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->do:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->for:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/activity/CreateComicGroupActivity;->do:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 7
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->do:Ljava/lang/String;

    iget-object v3, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->if:Ljava/lang/String;

    const/4 v4, 0x1

    .line 8
    invoke-static {v1, v2, v3, v4}, Lcom/apk/n2;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicGroupActivity$for;->for:Lcom/manhua/ui/activity/CreateComicGroupActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0, v0}, Lcom/manhua/ui/activity/CreateComicGroupActivity;->j(Lcom/manhua/ui/activity/CreateComicGroupActivity;ZZ)V

    return-void
.end method
