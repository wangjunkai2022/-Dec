.class public final Lcom/apk/cg0;
.super Lcom/apk/od0;
.source "CertificatePinner.kt"

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
.field public final synthetic do:Lcom/apk/bg0;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/apk/bg0;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/cg0;->do:Lcom/apk/bg0;

    iput-object p2, p0, Lcom/apk/cg0;->if:Ljava/util/List;

    iput-object p3, p0, Lcom/apk/cg0;->for:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/cg0;->do:Lcom/apk/bg0;

    .line 2
    iget-object v0, v0, Lcom/apk/bg0;->if:Lcom/apk/kk0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/cg0;->if:Ljava/util/List;

    iget-object v2, p0, Lcom/apk/cg0;->for:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/apk/kk0;->do(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apk/cg0;->if:Ljava/util/List;

    .line 4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/apk/sb0;->native(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_1

    .line 7
    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1
.end method
