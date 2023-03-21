.class public final enum Lcom/apk/bp0$implements;
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
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const/16 v1, 0x3e

    invoke-virtual {p2, v1}, Lcom/apk/qo0;->this(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/apk/yo0$new;->break(Ljava/lang/String;)Lcom/apk/yo0$new;

    .line 2
    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result v0

    if-eq v0, v1, :cond_0

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    .line 4
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 5
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 6
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :cond_1
    return-void
.end method
