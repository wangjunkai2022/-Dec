.class public final Lcom/apk/qg0;
.super Lcom/apk/od0;
.source "Handshake.kt"

# interfaces
.implements Lcom/apk/hd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/od0;",
        "Lcom/apk/hd0<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/qg0;->do:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/qg0;->do:Ljava/util/List;

    return-object v0
.end method
