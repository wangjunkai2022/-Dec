.class public Lcom/apk/vk$if$do;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/apk/hs$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/hs$if<",
        "Lcom/apk/wk<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/vk$if;


# direct methods
.method public constructor <init>(Lcom/apk/vk$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/vk$if$do;->do:Lcom/apk/vk$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lcom/apk/wk;

    iget-object v0, p0, Lcom/apk/vk$if$do;->do:Lcom/apk/vk$if;

    iget-object v1, v0, Lcom/apk/vk$if;->do:Lcom/apk/km;

    iget-object v2, v0, Lcom/apk/vk$if;->if:Lcom/apk/km;

    iget-object v3, v0, Lcom/apk/vk$if;->for:Lcom/apk/km;

    iget-object v4, v0, Lcom/apk/vk$if;->new:Lcom/apk/km;

    iget-object v5, v0, Lcom/apk/vk$if;->try:Lcom/apk/xk;

    iget-object v6, v0, Lcom/apk/vk$if;->case:Lcom/apk/al$do;

    iget-object v7, v0, Lcom/apk/vk$if;->else:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/apk/wk;-><init>(Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/km;Lcom/apk/xk;Lcom/apk/al$do;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method
