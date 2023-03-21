.class public Lcom/apk/c$do;
.super Ljava/lang/Object;
.source "FullVideoAdHelper.java"

# interfaces
.implements Lcom/apk/v60;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/c;->else(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/c;


# direct methods
.method public constructor <init>(Lcom/apk/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/b70;->case()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public else()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/b70;->else()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 6
    throw v0
.end method

.method public if(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    invoke-virtual {v0, p1}, Lcom/apk/f;->do(I)V

    .line 2
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    .line 3
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1, p1, p2}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAdClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    .line 4
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/v60;->onAdClick()V

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    throw v1
.end method

.method public onAdClose()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    .line 4
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/v60;->onAdClose()V

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    throw v1
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    .line 2
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/v60;->onAdLoaded()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    throw v1

    .line 9
    :cond_3
    throw v1
.end method

.method public onAdShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    invoke-virtual {v0}, Lcom/apk/f;->if()V

    .line 2
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/v60;->onAdShow()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public onVideoCached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    .line 2
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apk/v60;

    invoke-interface {v1}, Lcom/apk/v60;->onVideoCached()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/c$do;->do:Lcom/apk/c;

    invoke-virtual {v0}, Lcom/apk/f;->for()V

    return-void
.end method
