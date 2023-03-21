.class public final enum Lcom/apk/bp0$do;
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
    .locals 13

    .line 1
    invoke-virtual {p2}, Lcom/apk/qo0;->if()V

    .line 2
    iget v0, p2, Lcom/apk/qo0;->try:I

    .line 3
    iget v1, p2, Lcom/apk/qo0;->for:I

    .line 4
    iget-object v2, p2, Lcom/apk/qo0;->do:[C

    move v3, v0

    :goto_0
    const/16 v4, 0x3e

    const/16 v5, 0x3c

    const/16 v6, 0x2f

    const/16 v7, 0x20

    const/16 v8, 0xd

    const/16 v9, 0xc

    const/16 v10, 0xa

    const/16 v11, 0x9

    if-ge v3, v1, :cond_0

    .line 5
    aget-char v12, v2, v3

    if-eq v12, v11, :cond_0

    if-eq v12, v10, :cond_0

    if-eq v12, v9, :cond_0

    if-eq v12, v8, :cond_0

    if-eq v12, v7, :cond_0

    if-eq v12, v6, :cond_0

    if-eq v12, v5, :cond_0

    if-eq v12, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v3, p2, Lcom/apk/qo0;->try:I

    if-le v3, v0, :cond_1

    .line 7
    iget-object v1, p2, Lcom/apk/qo0;->do:[C

    iget-object v2, p2, Lcom/apk/qo0;->goto:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lcom/apk/qo0;->for([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 8
    :goto_1
    iget-object v1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v1, v0}, Lcom/apk/yo0$this;->final(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v7, :cond_6

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_4

    const p2, 0xffff

    if-eq v0, p2, :cond_2

    if-eq v0, v11, :cond_6

    if-eq v0, v10, :cond_6

    if-eq v0, v9, :cond_6

    if-eq v0, v8, :cond_6

    .line 10
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, v0}, Lcom/apk/yo0$this;->const(C)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 12
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 15
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 17
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_2

    .line 19
    :cond_5
    sget-object p2, Lcom/apk/bp0;->c:Lcom/apk/bp0;

    .line 20
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_2

    .line 21
    :cond_6
    sget-object p2, Lcom/apk/bp0;->interface:Lcom/apk/bp0;

    .line 22
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_2

    .line 23
    :cond_7
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    .line 24
    sget-object p2, Lcom/apk/bp0;->E:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->final(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
