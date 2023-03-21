.class public final Lcom/apk/zh0;
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
        "Ljava/security/cert/Certificate;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/bg0;

.field public final synthetic for:Lcom/apk/uf0;

.field public final synthetic if:Lcom/apk/rg0;


# direct methods
.method public constructor <init>(Lcom/apk/bg0;Lcom/apk/rg0;Lcom/apk/uf0;)V
    .locals 0

    iput-object p1, p0, Lcom/apk/zh0;->do:Lcom/apk/bg0;

    iput-object p2, p0, Lcom/apk/zh0;->if:Lcom/apk/rg0;

    iput-object p3, p0, Lcom/apk/zh0;->for:Lcom/apk/uf0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apk/od0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/zh0;->do:Lcom/apk/bg0;

    .line 2
    iget-object v0, v0, Lcom/apk/bg0;->if:Lcom/apk/kk0;

    .line 3
    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/apk/zh0;->if:Lcom/apk/rg0;

    invoke-virtual {v1}, Lcom/apk/rg0;->for()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/apk/zh0;->for:Lcom/apk/uf0;

    .line 5
    iget-object v2, v2, Lcom/apk/uf0;->do:Lcom/apk/tg0;

    .line 6
    iget-object v2, v2, Lcom/apk/tg0;->try:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/apk/kk0;->do(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
