.class public final enum Lcom/apk/bp0$for;
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/apk/ap0;->new(Z)Lcom/apk/yo0$this;

    .line 3
    iget-object v0, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apk/yo0$this;->const(C)V

    .line 4
    iget-object v0, p1, Lcom/apk/ap0;->goto:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/apk/qo0;->const()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    sget-object p2, Lcom/apk/bp0;->const:Lcom/apk/bp0;

    .line 6
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 7
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_0
    const-string p2, "</"

    .line 8
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/apk/bp0;->for:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
