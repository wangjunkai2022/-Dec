.class public Lcom/apk/ly;
.super Lcom/apk/my;
.source "PostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/my<",
        "TT;",
        "Lcom/apk/ly<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public else(Lcom/apk/bh0;)Lcom/apk/zg0;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/my;->const(Lcom/apk/bh0;)Lcom/apk/zg0$do;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "body"

    .line 2
    invoke-static {p1, v1}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "POST"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/apk/zg0$do;->try(Ljava/lang/String;Lcom/apk/bh0;)Lcom/apk/zg0$do;

    .line 4
    iget-object p1, p0, Lcom/apk/qy;->do:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    iget-object p1, p0, Lcom/apk/qy;->new:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/apk/zg0$do;->else(Ljava/lang/Object;)Lcom/apk/zg0$do;

    invoke-virtual {v0}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
