.class public Lcom/apk/a10$do$do;
.super Ljava/lang/Object;
.source "ComicGroupDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/a10$do;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/a10$do;


# direct methods
.method public constructor <init>(Lcom/apk/a10$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a10$do$do;->do:Lcom/apk/a10$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/a10$do$do;->do:Lcom/apk/a10$do;

    iget-object v0, v0, Lcom/apk/a10$do;->do:Lcom/apk/a10;

    iget-object v0, v0, Lcom/apk/a10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/a10$do$do;->do:Lcom/apk/a10$do;

    iget-object v0, v0, Lcom/apk/a10$do;->do:Lcom/apk/a10;

    iget-object v0, v0, Lcom/apk/a10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicGroupDetailActivity;->else:Ljava/util/List;

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

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v1, v3, v3, v2}, Lcom/apk/n2;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/apk/a10$do$do;->do:Lcom/apk/a10$do;

    iget-object v0, v0, Lcom/apk/a10$do;->do:Lcom/apk/a10;

    iget-object v0, v0, Lcom/apk/a10;->do:Lcom/manhua/ui/activity/ComicGroupDetailActivity;

    new-instance v1, Lcom/apk/a10$do$do$do;

    invoke-direct {v1, p0}, Lcom/apk/a10$do$do$do;-><init>(Lcom/apk/a10$do$do;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
