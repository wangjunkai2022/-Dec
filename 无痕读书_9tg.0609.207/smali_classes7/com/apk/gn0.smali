.class public Lcom/apk/gn0;
.super Lcom/apk/kn0;
.source "ProxyTagNode.java"


# instance fields
.field public final:Lcom/apk/tm0;

.field public super:Lcom/apk/sm0;

.field public throw:Lcom/apk/kn0;


# direct methods
.method public constructor <init>(Lcom/apk/sm0;Lcom/apk/kn0;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/apk/kn0;-><init>(Ljava/lang/String;Z)V

    .line 2
    iput-object p1, p0, Lcom/apk/gn0;->super:Lcom/apk/sm0;

    .line 3
    iput-object p2, p0, Lcom/apk/gn0;->throw:Lcom/apk/kn0;

    return-void
.end method

.method public constructor <init>(Lcom/apk/tm0;Lcom/apk/kn0;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/apk/kn0;-><init>(Ljava/lang/String;Z)V

    .line 5
    iput-object p1, p0, Lcom/apk/gn0;->final:Lcom/apk/tm0;

    .line 6
    iput-object p2, p0, Lcom/apk/gn0;->throw:Lcom/apk/kn0;

    return-void
.end method


# virtual methods
.method public for()Lcom/apk/kn0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public return()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/gn0;->throw:Lcom/apk/kn0;

    .line 2
    iget-object v1, p0, Lcom/apk/gn0;->final:Lcom/apk/tm0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apk/gn0;->super:Lcom/apk/sm0;

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/apk/kn0;->public(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method
