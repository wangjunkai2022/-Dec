.class public final enum Lcom/apk/bp0$goto;
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
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    const-string v2, "<"

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/apk/qo0;->private()V

    .line 4
    sget-object p2, Lcom/apk/bp0;->case:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 8
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/apk/yo0;->goto(Ljava/lang/StringBuilder;)V

    .line 11
    sget-object p2, Lcom/apk/bp0;->import:Lcom/apk/bp0;

    .line 12
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_2
    const-string p2, "<!"

    .line 13
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 14
    sget-object p2, Lcom/apk/bp0;->public:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
