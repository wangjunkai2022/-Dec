.class public final enum Lcom/apk/bp0$while;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v0, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "<"

    .line 4
    invoke-virtual {p1, v0}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 6
    sget-object p2, Lcom/apk/bp0;->package:Lcom/apk/bp0;

    .line 7
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 8
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 9
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->return(C)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->extends:Lcom/apk/bp0;

    .line 12
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_1
    const/16 p2, 0x3c

    .line 14
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 15
    sget-object p2, Lcom/apk/bp0;->static:Lcom/apk/bp0;

    .line 16
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
