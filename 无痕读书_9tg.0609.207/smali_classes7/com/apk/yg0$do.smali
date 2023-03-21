.class public final Lcom/apk/yg0$do;
.super Ljava/lang/Object;
.source "Protocol.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/yg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# direct methods
.method public constructor <init>(Lcom/apk/md0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/String;)Lcom/apk/yg0;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/apk/yg0;->else:Lcom/apk/yg0;

    sget-object v1, Lcom/apk/yg0;->new:Lcom/apk/yg0;

    sget-object v2, Lcom/apk/yg0;->try:Lcom/apk/yg0;

    sget-object v3, Lcom/apk/yg0;->case:Lcom/apk/yg0;

    sget-object v4, Lcom/apk/yg0;->for:Lcom/apk/yg0;

    sget-object v5, Lcom/apk/yg0;->if:Lcom/apk/yg0;

    const-string v6, "protocol"

    invoke-static {p1, v6}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v6, v5, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 2
    invoke-static {p1, v6}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_0

    .line 3
    :cond_0
    iget-object v5, v4, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 4
    invoke-static {p1, v5}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 5
    :cond_1
    iget-object v4, v3, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 6
    invoke-static {p1, v4}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_0

    .line 7
    :cond_2
    iget-object v3, v2, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 8
    invoke-static {p1, v3}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, v1, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 10
    invoke-static {p1, v2}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/apk/yg0;->do:Ljava/lang/String;

    .line 12
    invoke-static {p1, v1}, Lcom/apk/nd0;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    return-object v0

    .line 13
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected protocol: "

    invoke-static {v1, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
