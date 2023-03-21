.class public final enum Lcom/apk/bp0$j;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->super()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 3
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iput-boolean v1, p2, Lcom/apk/yo0$try;->case:Z

    .line 4
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 5
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 6
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 7
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/apk/qo0;->static([C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/apk/qo0;->do()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 9
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->return(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 12
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_2
    const-string v0, "PUBLIC"

    .line 14
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->public(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iput-object v0, p2, Lcom/apk/yo0$try;->for:Ljava/lang/String;

    .line 16
    sget-object p2, Lcom/apk/bp0;->p:Lcom/apk/bp0;

    .line 17
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_3
    const-string v0, "SYSTEM"

    .line 18
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->public(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iput-object v0, p2, Lcom/apk/yo0$try;->for:Ljava/lang/String;

    .line 20
    sget-object p2, Lcom/apk/bp0;->v:Lcom/apk/bp0;

    .line 21
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 23
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iput-boolean v1, p2, Lcom/apk/yo0$try;->case:Z

    .line 24
    sget-object p2, Lcom/apk/bp0;->A:Lcom/apk/bp0;

    .line 25
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 26
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
