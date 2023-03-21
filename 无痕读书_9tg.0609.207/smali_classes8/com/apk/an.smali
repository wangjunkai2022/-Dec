.class public Lcom/apk/an;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/an$do;
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/cn;

.field public final if:Lcom/apk/an$do;


# direct methods
.method public constructor <init>(Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .param p1    # Landroidx/core/util/Pools$Pool;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/cn;

    invoke-direct {v0, p1}, Lcom/apk/cn;-><init>(Landroidx/core/util/Pools$Pool;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lcom/apk/an$do;

    invoke-direct {p1}, Lcom/apk/an$do;-><init>()V

    iput-object p1, p0, Lcom/apk/an;->if:Lcom/apk/an$do;

    .line 4
    iput-object v0, p0, Lcom/apk/an;->do:Lcom/apk/cn;

    return-void
.end method
