.class public final enum Lcom/apk/bp0$new;
.super Lcom/apk/bp0;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/bp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/bp0;-><init>(Ljava/lang/String;ILcom/apk/bp0$catch;)V

    return-void
.end method


# virtual methods
.method public case(Lcom/apk/ap0;Lcom/apk/qo0;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/apk/qo0;->goto()Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object v0, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v0, p2}, Lcom/apk/yo0$this;->final(Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/apk/bp0$new;->else(Lcom/apk/ap0;Lcom/apk/qo0;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/apk/ap0;->class()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 9
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apk/bp0$new;->else(Lcom/apk/ap0;Lcom/apk/qo0;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/apk/ap0;->class()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object p2, Lcom/apk/bp0;->c:Lcom/apk/bp0;

    .line 14
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/apk/bp0$new;->else(Lcom/apk/ap0;Lcom/apk/qo0;)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Lcom/apk/ap0;->class()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    sget-object p2, Lcom/apk/bp0;->interface:Lcom/apk/bp0;

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/apk/bp0$new;->else(Lcom/apk/ap0;Lcom/apk/qo0;)V

    :goto_0
    return-void
.end method

.method public final else(Lcom/apk/ap0;Lcom/apk/qo0;)V
    .locals 1

    const-string v0, "</"

    .line 1
    invoke-virtual {p1, v0}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Lcom/apk/ap0;->else(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 4
    sget-object p2, Lcom/apk/bp0;->for:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    return-void
.end method
