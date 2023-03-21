.class public Lcom/apk/vk$for;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/apk/sk$new;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# instance fields
.field public final do:Lcom/apk/zl$do;

.field public volatile if:Lcom/apk/zl;


# direct methods
.method public constructor <init>(Lcom/apk/zl$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/vk$for;->do:Lcom/apk/zl$do;

    return-void
.end method


# virtual methods
.method public do()Lcom/apk/zl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    if-nez v0, :cond_5

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/apk/vk$for;->do:Lcom/apk/zl$do;

    check-cast v0, Lcom/apk/cm;

    .line 5
    iget-object v1, v0, Lcom/apk/cm;->if:Lcom/apk/cm$if;

    invoke-interface {v1}, Lcom/apk/cm$if;->do()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v2, v0, Lcom/apk/cm;->do:J

    .line 8
    new-instance v0, Lcom/apk/dm;

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/dm;-><init>(Ljava/io/File;J)V

    move-object v2, v0

    .line 9
    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    if-nez v0, :cond_4

    .line 11
    new-instance v0, Lcom/apk/am;

    invoke-direct {v0}, Lcom/apk/am;-><init>()V

    iput-object v0, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    .line 12
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/apk/vk$for;->if:Lcom/apk/zl;

    return-object v0
.end method
