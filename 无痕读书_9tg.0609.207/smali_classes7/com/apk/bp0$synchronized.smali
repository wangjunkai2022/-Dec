.class public final enum Lcom/apk/bp0$synchronized;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 3
    sget-object p2, Lcom/apk/bp0;->h:Lcom/apk/bp0;

    .line 4
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 6
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 7
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 8
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 10
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 12
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p2, Lcom/apk/bp0;->g:Lcom/apk/bp0;

    .line 14
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 16
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    .line 17
    sget-object p2, Lcom/apk/bp0;->h:Lcom/apk/bp0;

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
