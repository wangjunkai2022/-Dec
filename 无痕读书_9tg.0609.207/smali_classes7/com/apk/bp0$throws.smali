.class public final enum Lcom/apk/bp0$throws;
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
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_3

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 3
    sget-object p2, Lcom/apk/bp0;->private:Lcom/apk/bp0;

    .line 4
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 6
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 7
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 9
    sget-object p2, Lcom/apk/bp0;->case:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 12
    sget-object p2, Lcom/apk/bp0;->strictfp:Lcom/apk/bp0;

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    const p2, 0xfffd

    .line 16
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 17
    sget-object p2, Lcom/apk/bp0;->private:Lcom/apk/bp0;

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
