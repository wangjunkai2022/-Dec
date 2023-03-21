.class public final enum Lcom/apk/bp0$finally;
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

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 2
    iget-object v0, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v0}, Lcom/apk/yo0$this;->public()V

    .line 3
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 4
    sget-object p2, Lcom/apk/bp0;->protected:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 7
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Lcom/apk/ap0;->this()V

    .line 9
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 12
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 14
    :cond_1
    sget-object p2, Lcom/apk/bp0;->c:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 16
    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 17
    iget-object p2, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p2}, Lcom/apk/yo0$this;->public()V

    .line 18
    iget-object p2, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p2, v0}, Lcom/apk/yo0$this;->this(C)V

    .line 19
    sget-object p2, Lcom/apk/bp0;->protected:Lcom/apk/bp0;

    .line 20
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 22
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 23
    iget-object p2, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p2}, Lcom/apk/yo0$this;->public()V

    .line 24
    sget-object p2, Lcom/apk/bp0;->protected:Lcom/apk/bp0;

    .line 25
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
