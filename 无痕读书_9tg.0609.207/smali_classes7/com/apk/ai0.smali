.class public final Lcom/apk/ai0;
.super Lcom/apk/od0;
.source "RealConnection.kt"

# interfaces
.implements Lcom/apk/hd0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/od0;",
        "Lcom/apk/hd0<",
        "Ljava/util/List<",
        "+",
        "Ljava/security/cert/X509Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/bi0;


# direct methods
.method public constructor <init>(Lcom/apk/bi0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/ai0;->do:Lcom/apk/bi0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ai0;->do:Lcom/apk/bi0;

    .line 2
    iget-object v0, v0, Lcom/apk/bi0;->new:Lcom/apk/rg0;

    .line 3
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/apk/rg0;->for()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_0

    .line 7
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v1
.end method
