.class public final enum Lcom/apk/bp0$super;
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
    invoke-virtual {p2}, Lcom/apk/qo0;->super()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 3
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 4
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    if-eqz p2, :cond_3

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_1

    .line 6
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 7
    sget-object p2, Lcom/apk/bp0;->static:Lcom/apk/bp0;

    .line 8
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Lcom/apk/bp0;->default:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 12
    sget-object p2, Lcom/apk/bp0;->throws:Lcom/apk/bp0;

    .line 13
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    const p2, 0xfffd

    .line 15
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->try(C)V

    .line 16
    sget-object p2, Lcom/apk/bp0;->static:Lcom/apk/bp0;

    .line 17
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
