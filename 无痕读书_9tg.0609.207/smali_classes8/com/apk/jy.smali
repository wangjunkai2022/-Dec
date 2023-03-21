.class public Lcom/apk/jy;
.super Lcom/apk/my;
.source "DeleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apk/my<",
        "TT;",
        "Lcom/apk/jy<",
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
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/my;->const(Lcom/apk/bh0;)Lcom/apk/zg0$do;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/apk/zg0$do;->delete(Lcom/apk/bh0;)Lcom/apk/zg0$do;

    move-result-object p1

    iget-object v0, p0, Lcom/apk/qy;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apk/zg0$do;->goto(Ljava/lang/String;)Lcom/apk/zg0$do;

    iget-object v0, p0, Lcom/apk/qy;->new:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/apk/zg0$do;->else(Ljava/lang/Object;)Lcom/apk/zg0$do;

    invoke-virtual {p1}, Lcom/apk/zg0$do;->if()Lcom/apk/zg0;

    move-result-object p1

    return-object p1
.end method
