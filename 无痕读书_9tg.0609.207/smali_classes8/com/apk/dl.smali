.class public final Lcom/apk/dl;
.super Ljava/lang/Object;
.source "Jobs.java"


# instance fields
.field public final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apk/kj;",
            "Lcom/apk/wk<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apk/kj;",
            "Lcom/apk/wk<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/dl;->do:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/dl;->if:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final do(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Lcom/apk/kj;",
            "Lcom/apk/wk<",
            "*>;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/dl;->if:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apk/dl;->do:Ljava/util/Map;

    :goto_0
    return-object p1
.end method
