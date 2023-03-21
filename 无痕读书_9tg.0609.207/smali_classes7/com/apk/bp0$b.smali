.class public final enum Lcom/apk/bp0$b;
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

    if-eqz v0, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/apk/qo0;->break([C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apk/yo0$new;->break(Ljava/lang/String;)Lcom/apk/yo0$new;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->break(Lcom/apk/bp0;)V

    .line 4
    iget-object p2, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    invoke-virtual {p1, p2}, Lcom/apk/ap0;->goto(Lcom/apk/yo0;)V

    .line 5
    sget-object p2, Lcom/apk/bp0;->do:Lcom/apk/bp0;

    .line 6
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 7
    :cond_1
    sget-object p2, Lcom/apk/bp0;->i:Lcom/apk/bp0;

    .line 8
    iget-object v0, p1, Lcom/apk/ap0;->do:Lcom/apk/qo0;

    invoke-virtual {v0}, Lcom/apk/qo0;->do()V

    .line 9
    iput-object p2, p1, Lcom/apk/ap0;->for:Lcom/apk/bp0;

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p0}, Lcom/apk/ap0;->catch(Lcom/apk/bp0;)V

    .line 11
    invoke-virtual {p2}, Lcom/apk/qo0;->do()V

    .line 12
    iget-object p1, p1, Lcom/apk/ap0;->final:Lcom/apk/yo0$new;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lcom/apk/yo0$new;->this(C)Lcom/apk/yo0$new;

    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
