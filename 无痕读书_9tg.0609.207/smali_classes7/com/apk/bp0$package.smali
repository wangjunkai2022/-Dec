.class public final enum Lcom/apk/bp0$package;
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
    .locals 5

    .line 1
    sget-object v0, Lcom/apk/bp0;->C:[C

    invoke-virtual {p2, v0}, Lcom/apk/qo0;->catch([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    const v4, 0xfffd

    .line 3
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 4
    iput-boolean v3, v1, Lcom/apk/yo0$this;->case:Z

    .line 5
    iget-object v3, v1, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6
    iget-object v4, v1, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iput-object v2, v1, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    iput-object v0, v1, Lcom/apk/yo0$this;->try:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v1, Lcom/apk/yo0$this;->new:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_5

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_3

    const v0, 0xffff

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    .line 12
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->this(C)V

    goto :goto_1

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 14
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 16
    :pswitch_1
    sget-object p2, Lcom/apk/bp0;->implements:Lcom/apk/bp0;

    .line 17
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 19
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 20
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 21
    :cond_3
    sget-object p2, Lcom/apk/bp0;->c:Lcom/apk/bp0;

    .line 22
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 23
    :cond_4
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 24
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->this(C)V

    goto :goto_1

    .line 25
    :cond_5
    sget-object p2, Lcom/apk/bp0;->transient:Lcom/apk/bp0;

    .line 26
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_1
    return-void

    .line 27
    :cond_6
    throw v2

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
