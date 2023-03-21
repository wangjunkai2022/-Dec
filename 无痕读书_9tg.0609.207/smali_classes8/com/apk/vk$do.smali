.class public Lcom/apk/vk$do;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/vk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/sk$new;

.field public for:I

.field public final if:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/apk/sk<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/sk$new;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/vk$do$do;

    invoke-direct {v0, p0}, Lcom/apk/vk$do$do;-><init>(Lcom/apk/vk$do;)V

    const/16 v1, 0x96

    .line 3
    invoke-static {v1, v0}, Lcom/apk/hs;->do(ILcom/apk/hs$if;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/vk$do;->if:Landroidx/core/util/Pools$Pool;

    .line 4
    iput-object p1, p0, Lcom/apk/vk$do;->do:Lcom/apk/sk$new;

    return-void
.end method
