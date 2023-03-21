.class public final enum Lcom/apk/bp0$h;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    invoke-virtual {p2}, Lcom/apk/yo0$try;->else()Lcom/apk/yo0;

    .line 3
    sget-object p2, Lcom/apk/bp0;->n:Lcom/apk/bp0;

    .line 4
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    if-eqz p2, :cond_2

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0xd

    if-eq p2, v0, :cond_3

    .line 6
    iget-object v0, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    invoke-virtual {v0}, Lcom/apk/yo0$try;->else()Lcom/apk/yo0;

    .line 7
    iget-object v0, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iget-object v0, v0, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    sget-object p2, Lcom/apk/bp0;->n:Lcom/apk/bp0;

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 11
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    invoke-virtual {p2}, Lcom/apk/yo0$try;->else()Lcom/apk/yo0;

    .line 12
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/apk/yo0$try;->case:Z

    .line 13
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 14
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 17
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    invoke-virtual {p2}, Lcom/apk/yo0$try;->else()Lcom/apk/yo0;

    .line 18
    iget-object p2, p1, Lcom/apk/ap0;->const:Lcom/apk/yo0$try;

    iget-object p2, p2, Lcom/apk/yo0$try;->if:Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    sget-object p2, Lcom/apk/bp0;->n:Lcom/apk/bp0;

    .line 20
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :cond_3
    :goto_0
    return-void
.end method
