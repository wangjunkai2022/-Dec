.class public final Lcom/apk/hs;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/hs$for;,
        Lcom/apk/hs$new;,
        Lcom/apk/hs$try;,
        Lcom/apk/hs$if;
    }
.end annotation


# static fields
.field public static final do:Lcom/apk/hs$try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/hs$try<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/hs$do;

    invoke-direct {v0}, Lcom/apk/hs$do;-><init>()V

    sput-object v0, Lcom/apk/hs;->do:Lcom/apk/hs$try;

    return-void
.end method

.method public static do(ILcom/apk/hs$if;)Landroidx/core/util/Pools$Pool;
    .locals 2
    .param p1    # Lcom/apk/hs$if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/apk/hs$new;",
            ">(I",
            "Lcom/apk/hs$if<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 2
    sget-object p0, Lcom/apk/hs;->do:Lcom/apk/hs$try;

    .line 3
    new-instance v1, Lcom/apk/hs$for;

    invoke-direct {v1, v0, p1, p0}, Lcom/apk/hs$for;-><init>(Landroidx/core/util/Pools$Pool;Lcom/apk/hs$if;Lcom/apk/hs$try;)V

    return-object v1
.end method
