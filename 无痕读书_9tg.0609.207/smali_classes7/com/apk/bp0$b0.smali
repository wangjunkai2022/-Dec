.class public final enum Lcom/apk/bp0$b0;
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

    const-string p2, "</"

    .line 3
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->case(Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 5
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/apk/qo0;->switch()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p1, p2}, Lcom/apk/ap0;->new(Z)Lcom/apk/yo0$this;

    .line 8
    sget-object p2, Lcom/apk/bp0;->break:Lcom/apk/bp0;

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    .line 10
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->return(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 12
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 13
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 14
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 16
    invoke-virtual {p1}, Lcom/apk/ap0;->for()V

    .line 17
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    .line 18
    sget-object p2, Lcom/apk/bp0;->d:Lcom/apk/bp0;

    .line 19
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    :goto_0
    return-void
.end method
