.class public final enum Lcom/apk/bp0$interface;
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
    sget-object v0, Lcom/apk/bp0;->D:[C

    invoke-virtual {p2, v0}, Lcom/apk/qo0;->catch([C)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v1, v0}, Lcom/apk/yo0$this;->catch(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    if-eqz p2, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v0, 0x60

    if-eq p2, v0, :cond_4

    const v0, 0xffff

    if-eq p2, v0, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_5

    const/16 v0, 0xa

    if-eq p2, v0, :cond_5

    const/16 v0, 0xc

    if-eq p2, v0, :cond_5

    const/16 v0, 0xd

    if-eq p2, v0, :cond_5

    const/16 v0, 0x26

    if-eq p2, v0, :cond_1

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    packed-switch p2, :pswitch_data_0

    .line 5
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->break(C)V

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 7
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 8
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_1
    const/16 p2, 0x3e

    .line 9
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/apk/ap0;->if(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->class([I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, v0}, Lcom/apk/yo0$this;->break(C)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 13
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 14
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 15
    :cond_4
    :pswitch_1
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 16
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->break(C)V

    goto :goto_0

    .line 17
    :cond_5
    sget-object p2, Lcom/apk/bp0;->interface:Lcom/apk/bp0;

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 20
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->break(C)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
