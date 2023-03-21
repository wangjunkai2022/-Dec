.class public final enum Lcom/apk/bp0$d;
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

    move-result p2

    const-string v0, "--"

    if-eqz p2, :cond_4

    const/16 v1, 0x21

    if-eq p2, v1, :cond_3

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 3
    iget-object v1, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {v1, v0}, Lcom/apk/yo0$new;->break(Ljava/lang/String;)Lcom/apk/yo0$new;

    invoke-virtual {v1, p2}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    .line 4
    sget-object p2, Lcom/apk/bp0;->h:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 7
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 8
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 12
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 14
    iget-object p1, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, v1}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 16
    sget-object p2, Lcom/apk/bp0;->k:Lcom/apk/bp0;

    .line 17
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 19
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p2, v0}, Lcom/apk/yo0$new;->break(Ljava/lang/String;)Lcom/apk/yo0$new;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    .line 20
    sget-object p2, Lcom/apk/bp0;->h:Lcom/apk/bp0;

    .line 21
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
