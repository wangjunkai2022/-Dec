.class public final enum Lcom/apk/bp0$continue;
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Lcom/apk/qo0;->case(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {v1, v0}, Lcom/apk/yo0$this;->catch(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    .line 5
    iput-boolean v2, v0, Lcom/apk/yo0$this;->break:Z

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/apk/qo0;->try()C

    move-result p2

    if-eqz p2, :cond_5

    const/16 v0, 0x22

    if-eq p2, v0, :cond_4

    const/16 v1, 0x26

    if-eq p2, v1, :cond_2

    const v0, 0xffff

    if-eq p2, v0, :cond_1

    .line 7
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->break(C)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 9
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 10
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/apk/ap0;->if(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_3

    .line 12
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->class([I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    invoke-virtual {p1, v1}, Lcom/apk/yo0$this;->break(C)V

    goto :goto_1

    .line 14
    :cond_4
    sget-object p2, Lcom/apk/bp0;->b:Lcom/apk/bp0;

    .line 15
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 17
    iget-object p1, p1, Lcom/apk/ap0;->this:Lcom/apk/yo0$this;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/apk/yo0$this;->break(C)V

    :goto_1
    return-void
.end method
