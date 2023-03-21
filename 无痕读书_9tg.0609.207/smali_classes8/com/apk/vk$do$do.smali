.class public Lcom/apk/vk$do$do;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/apk/hs$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk$do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/hs$if<",
        "Lcom/apk/sk<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/vk$do;


# direct methods
.method public constructor <init>(Lcom/apk/vk$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vk$do$do;->do:Lcom/apk/vk$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/apk/sk;

    iget-object v1, p0, Lcom/apk/vk$do$do;->do:Lcom/apk/vk$do;

    iget-object v2, v1, Lcom/apk/vk$do;->do:Lcom/apk/sk$new;

    iget-object v1, v1, Lcom/apk/vk$do;->if:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v2, v1}, Lcom/apk/sk;-><init>(Lcom/apk/sk$new;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
