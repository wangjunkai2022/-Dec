.class public final enum Lcom/apk/bp0$try;
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

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->return(C)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 3
    sget-object p2, Lcom/apk/bp0;->super:Lcom/apk/bp0;

    .line 4
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_0
    const/16 p2, 0x3c

    .line 6
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 7
    sget-object p2, Lcom/apk/bp0;->try:Lcom/apk/bp0;

    .line 8
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
