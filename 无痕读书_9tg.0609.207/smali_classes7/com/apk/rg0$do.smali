.class public final Lcom/apk/rg0$do;
.super Lcom/apk/od0;
.source "Handshake.kt"

# interfaces
.implements Lcom/apk/hd0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/rg0;-><init>(Lcom/apk/gh0;Lcom/apk/eg0;Ljava/util/List;Lcom/apk/hd0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic do:Lcom/apk/hd0;


# direct methods
.method public constructor <init>(Lcom/apk/hd0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/rg0$do;->do:Lcom/apk/hd0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/rg0$do;->do:Lcom/apk/hd0;

    invoke-interface {v0}, Lcom/apk/hd0;->do()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/apk/xc0;->do:Lcom/apk/xc0;

    :goto_0
    return-object v0
.end method
