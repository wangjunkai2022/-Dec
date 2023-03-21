.class public Lcom/manhua/ui/fragment/ComicShelfFragment$break$if$do;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if$do;->do:Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if$do;->do:Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;

    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;->do:Lcom/manhua/ui/fragment/ComicShelfFragment$break;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicShelfFragment$break;->if:Lcom/manhua/data/bean/ComicCollectBean;

    .line 3
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getGroupBooks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/data/bean/ComicCollectBean;

    .line 6
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v3, v3, v2}, Lcom/apk/n2;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/apk/ze;->V()V

    :cond_1
    return-void
.end method
