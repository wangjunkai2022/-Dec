.class public final enum Lcom/apk/bp0$a0;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->new(Z)Lcom/apk/yo0$this;

    .line 4
    sget-object p2, Lcom/apk/bp0;->break:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    const/16 p2, 0x3c

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 8
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/apk/ap0;->for()V

    .line 11
    sget-object p2, Lcom/apk/bp0;->d:Lcom/apk/bp0;

    .line 12
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p2, Lcom/apk/bp0;->this:Lcom/apk/bp0;

    .line 14
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 16
    :cond_3
    sget-object p2, Lcom/apk/bp0;->e:Lcom/apk/bp0;

    .line 17
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 18
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
