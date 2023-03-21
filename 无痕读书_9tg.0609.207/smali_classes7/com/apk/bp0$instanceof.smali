.class public final enum Lcom/apk/bp0$instanceof;
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

    const-string v0, "--"

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p2}, Lcom/apk/yo0$new;->else()Lcom/apk/yo0;

    .line 3
    sget-object p2, Lcom/apk/bp0;->f:Lcom/apk/bp0;

    .line 4
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_0
    const-string v0, "DOCTYPE"

    .line 5
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->public(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Lcom/apk/bp0;->l:Lcom/apk/bp0;

    .line 7
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_1
    const-string v0, "[CDATA["

    .line 8
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->native(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p2, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 10
    sget-object p2, Lcom/apk/bp0;->B:Lcom/apk/bp0;

    .line 11
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 13
    invoke-virtual {p1}, Lcom/apk/ap0;->for()V

    .line 14
    sget-object p2, Lcom/apk/bp0;->d:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
