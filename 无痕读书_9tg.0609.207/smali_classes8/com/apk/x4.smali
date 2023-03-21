.class public Lcom/apk/x4;
.super Lcom/apk/p1;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/x4$goto;
    }
.end annotation


# instance fields
.field public final for:Lcom/apk/w5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/w5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/x4;->for:Lcom/apk/w5;

    return-void
.end method

.method public static break(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SP_HOST_APP_INIT_KEY"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "SP_HOST_XZ_XS_KEY"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v0, "SP_HOST_CHAP_XS_KEY"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v0, "SP_HOST_SHUC_XS_KEY"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "SP_HOST_CHAP_MH_KEY"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "SP_HOST_INFO_DEX_MH_KEY"

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v0, "SP_HOST_SHUC_MH_KEY"

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    invoke-static {v0}, Lcom/apk/p0;->case(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/apk/p0;->public(Ljava/lang/String;I)V

    goto :goto_0

    :cond_6
    const-string v0, "SP_HOST_XZ_MH_KEY"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static synthetic case(Lcom/apk/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public static class(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/apk/xw;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/ly;

    invoke-direct {v0, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p2, v1

    if-gtz p0, :cond_0

    move-wide p2, v1

    .line 2
    :cond_0
    iput-wide p2, v0, Lcom/apk/qy;->goto:J

    .line 3
    iput-object p4, v0, Lcom/apk/qy;->case:Lcom/apk/xw;

    const/4 p0, 0x0

    new-array p2, p0, [Z

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/apk/qy;->class(Ljava/util/Map;[Z)Lcom/apk/qy;

    new-instance p1, Lcom/apk/ox;

    invoke-direct {p1}, Lcom/apk/ox;-><init>()V

    .line 5
    iput-object p1, v0, Lcom/apk/qy;->final:Lcom/apk/nx;

    .line 6
    invoke-virtual {v0}, Lcom/apk/qy;->try()Lcom/apk/iy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public static const(Lcom/apk/iy;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apk/iy<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/iy;->do()I

    move-result v0

    const/16 v1, 0x193

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apk/iy;->do()I

    move-result v0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apk/iy;->do()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    .line 4
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljavax/net/ssl/SSLHandshakeException;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static default(Ljava/lang/String;Ljava/util/Map;Lcom/apk/mx;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v4, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/apk/x4;->throws(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public static synthetic else(Lcom/apk/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/p1;->do()V

    return-void
.end method

.method public static extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    sget-object v5, Lcom/apk/xw;->if:Lcom/apk/xw;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/apk/x4;->finally(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static final(Ljava/lang/String;)Lcom/apk/fy;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/fy;

    invoke-direct {v0}, Lcom/apk/fy;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/w;->native()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "SP_LOGIN_COOKIE_VALUE"

    const-string v1, ""

    .line 3
    invoke-static {p0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cookie"

    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static finally(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J",
            "Lcom/apk/xw;",
            "Lcom/apk/x4$goto;",
            "Ljava/lang/String;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance p1, Lcom/apk/ky;

    invoke-direct {p1, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/apk/x4;->final(Ljava/lang/String;)Lcom/apk/fy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

    cmp-long p2, p3, v2

    if-gtz p2, :cond_1

    move-wide p3, v2

    .line 4
    :cond_1
    iput-wide p3, p1, Lcom/apk/qy;->goto:J

    .line 5
    iput-object p5, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 6
    new-instance p2, Lcom/apk/ox;

    invoke-direct {p2}, Lcom/apk/ox;-><init>()V

    .line 7
    iput-object p2, p1, Lcom/apk/qy;->final:Lcom/apk/nx;

    .line 8
    invoke-virtual {p1}, Lcom/apk/qy;->try()Lcom/apk/iy;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    .line 9
    new-instance p2, Lcom/apk/ly;

    invoke-direct {p2, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/apk/x4;->final(Ljava/lang/String;)Lcom/apk/fy;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

    cmp-long v5, p3, v2

    if-gtz v5, :cond_3

    move-wide p3, v2

    .line 11
    :cond_3
    iput-wide p3, p2, Lcom/apk/qy;->goto:J

    .line 12
    iput-object p5, p2, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 13
    new-instance p3, Lcom/apk/ox;

    invoke-direct {p3}, Lcom/apk/ox;-><init>()V

    .line 14
    iput-object p3, p2, Lcom/apk/qy;->final:Lcom/apk/nx;

    new-array p3, v1, [Z

    .line 15
    invoke-virtual {p2, p1, p3}, Lcom/apk/qy;->class(Ljava/util/Map;[Z)Lcom/apk/qy;

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 17
    :goto_1
    iput-boolean p1, p2, Lcom/apk/my;->while:Z

    .line 18
    invoke-virtual {p2}, Lcom/apk/qy;->try()Lcom/apk/iy;

    move-result-object p1

    goto :goto_2

    .line 19
    :cond_5
    new-instance p1, Lcom/apk/ly;

    invoke-direct {p1, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/apk/x4;->final(Ljava/lang/String;)Lcom/apk/fy;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/apk/qy;->catch(Lcom/apk/fy;)Lcom/apk/qy;

    cmp-long v5, p3, v2

    if-gtz v5, :cond_6

    move-wide p3, v2

    .line 21
    :cond_6
    iput-wide p3, p1, Lcom/apk/qy;->goto:J

    .line 22
    iput-object p5, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 23
    new-instance p3, Lcom/apk/ox;

    invoke-direct {p3}, Lcom/apk/ox;-><init>()V

    .line 24
    iput-object p3, p1, Lcom/apk/qy;->final:Lcom/apk/nx;

    .line 25
    invoke-virtual {p1, p2}, Lcom/apk/my;->final(Lorg/json/JSONObject;)Lcom/apk/my;

    .line 26
    invoke-virtual {p1}, Lcom/apk/qy;->try()Lcom/apk/iy;

    move-result-object p1

    :goto_2
    const/16 p2, 0xc8

    if-eqz p1, :cond_a

    .line 27
    invoke-virtual {p1}, Lcom/apk/iy;->for()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 28
    invoke-static {}, Lcom/apk/w;->native()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 29
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p0

    .line 30
    iget-object p3, p1, Lcom/apk/iy;->new:Lcom/apk/ch0;

    if-nez p3, :cond_7

    move-object p3, v4

    goto :goto_3

    .line 31
    :cond_7
    iget-object p3, p3, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 32
    :goto_3
    invoke-virtual {p0, p3}, Lcom/apk/v0;->final(Lcom/apk/sg0;)V

    :cond_8
    if-eqz p6, :cond_9

    .line 33
    invoke-interface {p6, v0, p2, v4}, Lcom/apk/x4$goto;->do(ZILjava/lang/String;)V

    .line 34
    :cond_9
    new-instance p0, Lorg/json/JSONObject;

    .line 35
    iget-object p1, p1, Lcom/apk/iy;->do:Ljava/lang/Object;

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_a
    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result p0

    if-ne p0, p2, :cond_b

    return-object v4

    .line 38
    :cond_b
    invoke-virtual {p1}, Lcom/apk/iy;->do()I

    move-result p0

    .line 39
    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 40
    invoke-virtual {p1}, Lcom/apk/iy;->new()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 41
    :cond_c
    iget-object p2, p1, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    if-eqz p2, :cond_d

    .line 42
    iget-object p2, p1, Lcom/apk/iy;->if:Ljava/lang/Throwable;

    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_d
    move-object p2, v4

    goto :goto_4

    :cond_e
    move-object p2, v4

    const/4 p0, 0x0

    :goto_4
    if-eqz p6, :cond_10

    .line 44
    invoke-interface {p6, v1, p0, p2}, Lcom/apk/x4$goto;->do(ZILjava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/apk/x4;->const(Lcom/apk/iy;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 46
    invoke-static {p7}, Lcom/apk/x4;->break(Ljava/lang/String;)V

    .line 47
    invoke-interface {p6}, Lcom/apk/x4$goto;->if()V

    .line 48
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    if-eqz p0, :cond_f

    goto :goto_5

    .line 49
    :cond_f
    throw v4

    .line 50
    :cond_10
    :goto_5
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p0, :cond_11

    goto :goto_6

    .line 52
    :cond_11
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-object v4
.end method

.method public static synthetic for(Lcom/apk/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/p1;->if()V

    return-void
.end method

.method public static import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Lcom/apk/xw;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/ky;

    invoke-direct {v0, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p1, v1

    if-gtz p0, :cond_0

    move-wide p1, v1

    .line 2
    :cond_0
    iput-wide p1, v0, Lcom/apk/qy;->goto:J

    .line 3
    iput-object p3, v0, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 4
    invoke-virtual {v0, p4}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    return-void
.end method

.method public static native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Lcom/apk/xw;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/ky;

    invoke-direct {v0, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p1, v1

    if-gtz p0, :cond_0

    move-wide p1, v1

    .line 2
    :cond_0
    iput-wide p1, v0, Lcom/apk/qy;->goto:J

    .line 3
    iput-object p3, v0, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 4
    invoke-virtual {v0, p4}, Lcom/apk/qy;->case(Lcom/apk/mx;)V

    return-void
.end method

.method public static synthetic new(Lcom/apk/x4;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/apk/p1;->do()V

    return-void
.end method

.method public static public(Ljava/lang/String;)V
    .locals 4

    const-string v0, "action"

    const-string v1, "verifycode"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "sourceType"

    const-string v3, "Novel"

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "platform"

    .line 4
    invoke-static {}, Lcom/apk/ze;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "packageName"

    .line 5
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    .line 6
    invoke-static {}, Lcom/apk/ze;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    .line 7
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceno"

    .line 8
    invoke-static {}, Lcom/apk/eg;->super()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ts"

    .line 9
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 10
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "data"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/apk/w;->const()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "status"

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 15
    sget-object p0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_NEW_SHARE_REPORT_KEY"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public static super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .line 1
    sget-object v5, Lcom/apk/xw;->if:Lcom/apk/xw;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/apk/x4;->finally(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 1
    invoke-static/range {v0 .. v7}, Lcom/apk/x4;->finally(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Ljava/lang/String;Ljava/util/Map;JLcom/apk/xw;Lcom/apk/mx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/apk/xw;",
            "Lcom/apk/mx<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/ly;

    invoke-direct {v0, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    cmp-long p0, p2, v1

    if-gtz p0, :cond_0

    move-wide p2, v1

    .line 2
    :cond_0
    iput-wide p2, v0, Lcom/apk/qy;->goto:J

    .line 3
    iput-object p4, v0, Lcom/apk/qy;->case:Lcom/apk/xw;

    const/4 p0, 0x0

    new-array p2, p0, [Z

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/apk/qy;->class(Ljava/util/Map;[Z)Lcom/apk/qy;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    .line 6
    :cond_1
    iput-boolean p0, v0, Lcom/apk/my;->while:Z

    .line 7
    invoke-virtual {v0, p5}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    return-void
.end method

.method public static try(Ljava/lang/String;)V
    .locals 10

    const-string v0, "bcolor"

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "data"

    .line 4
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v2, "bg_colors"

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "fcolor"

    const-string v4, "alias"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    .line 7
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 8
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9
    new-instance v8, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v8}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    const-string v9, "4"

    .line 10
    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setIcon(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgColor(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "bg_imgs"

    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 17
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 18
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 19
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    new-instance v6, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    invoke-direct {v6}, Lcom/biquge/ebook/app/bean/RedBgImageBean;-><init>()V

    const-string v7, "3"

    .line 21
    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setType(Ljava/lang/String;)V

    const-string v7, "bimg_alum"

    .line 22
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setIcon(Ljava/lang/String;)V

    const-string v7, "bimg"

    .line 23
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setBgImage(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setfColor(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->getBgImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/rt;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/biquge/ebook/app/bean/RedBgImageBean;->setFileName(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 29
    const-class p0, Lcom/biquge/ebook/app/bean/RedBgImageBean;

    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 30
    invoke-static {v1}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public final abstract(Lcom/biquge/ebook/app/bean/Book;ZLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/apk/x4;->this(Ljava/lang/String;ZLjava/lang/String;Z)V

    const v0, 0x7f1000fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/apk/zu$do;

    iget-object v3, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iget-object v4, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v3, v4, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 7
    new-instance v3, Lcom/apk/x4$for;

    invoke-direct {v3, p0, p1}, Lcom/apk/x4$for;-><init>(Lcom/apk/x4;Lcom/biquge/ebook/app/bean/Book;)V

    .line 8
    iget-object v4, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v3, v4, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v3, 0x7f100239

    .line 9
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/apk/x4$if;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/apk/x4$if;-><init>(Lcom/apk/x4;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;Z)V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/apk/zu$do;->case(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object p1

    const p2, 0x7f1000fd

    .line 10
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    iput-object p2, p1, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    const p2, 0x7f1000fb

    .line 12
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 15
    invoke-static {}, Lcom/apk/ze;->case()V

    return-void

    .line 16
    :cond_0
    throw v1
.end method

.method public catch(Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "tgver9#"

    const-string v2, "tgver9mh#"

    const-string v3, "FromShare#"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "cid"

    const/4 v6, 0x1

    const-string v7, "istop"

    const-string v8, "author"

    const-string v9, "name"

    const-string v10, "id"

    const/4 v11, 0x0

    const-string v12, ""

    if-eqz v4, :cond_2

    .line 3
    invoke-virtual {p1, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 11
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 14
    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, v3}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v4}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v1, v6, v7}, Lcom/apk/x4;->abstract(Lcom/biquge/ebook/app/bean/Book;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_0
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v8, Lcom/apk/y4;

    move-object v1, v8

    move-object v2, p0

    move v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/apk/y4;-><init>(Lcom/apk/x4;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 20
    :cond_1
    throw v11

    .line 21
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p1, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v1, v7, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 30
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 32
    new-instance v1, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v1}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 33
    invoke-virtual {v1, v0}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v3}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v4}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1, v6, v7}, Lcom/apk/x4;->private(Lcom/manhua/data/bean/ComicBean;ZLjava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_3
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v8, Lcom/apk/z4;

    move-object v1, v8

    move-object v2, p0

    move v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/apk/z4;-><init>(Lcom/apk/x4;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 39
    :cond_4
    throw v11

    .line 40
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 42
    invoke-virtual {p1, v3, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SP_NEW_SHARE_REPORT_KEY"

    invoke-static {v1}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 44
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v2, Lcom/apk/v2;

    invoke-direct {v2, v0}, Lcom/apk/v2;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v0, v1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_6

    .line 46
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final continue(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "first_show"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 2
    invoke-static {}, Lcom/apk/w0;->this()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "showinterval"

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const-wide/16 v2, 0x0

    const-string v4, "SP_HOME_HAIBAO_IMAGE_INTERBAL_KEY"

    .line 4
    invoke-static {v4, v2, v3}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/apk/w5;->try(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final goto(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v7, Lcom/apk/x4$else;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/apk/x4$else;-><init>(Lcom/apk/x4;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public package(Ljava/lang/String;ILjava/lang/String;Lcom/biquge/ebook/app/bean/SearchPlatform;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-string v1, "movie"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const-string v5, "{nameorauthor}"

    const-string v6, "{page}"

    if-nez v2, :cond_2

    const-string v2, "tingshu"

    .line 2
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p4, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 5
    invoke-static {}, Lcom/apk/w;->return()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 7
    new-instance v1, Lcom/apk/u4;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/apk/u4;-><init>(Lcom/apk/x4;Ljava/lang/String;J)V

    invoke-static {p2, v3, v4, v0, v1}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto/16 :goto_3

    .line 8
    :cond_1
    sget-object p4, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {p4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    .line 10
    invoke-static {}, Lcom/apk/w;->public()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v1, Lcom/apk/a5;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/apk/a5;-><init>(Lcom/apk/x4;Ljava/lang/String;J)V

    invoke-static {p2, v3, v4, v0, v1}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    goto :goto_3

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, ""

    if-eqz p3, :cond_3

    .line 14
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getUrl()Ljava/lang/String;

    move-result-object p3

    const-string v5, "{keywords}"

    .line 15
    invoke-virtual {p3, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p3, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-virtual {p3, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-virtual {p3, v6, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 20
    :goto_1
    invoke-virtual {p4}, Lcom/biquge/ebook/app/bean/SearchPlatform;->getPid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x4

    goto :goto_2

    :cond_4
    const/4 p3, 0x5

    .line 21
    :goto_2
    new-instance p4, Lcom/apk/v4;

    invoke-direct {p4, p0, p1, p3}, Lcom/apk/v4;-><init>(Lcom/apk/x4;Ljava/lang/String;I)V

    invoke-static {p2, v3, v4, v0, p4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final private(Lcom/manhua/data/bean/ComicBean;ZLjava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/apk/x4;->goto(Ljava/lang/String;ZLjava/lang/String;Z)V

    const v0, 0x7f1000fc

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/apk/zu$do;

    iget-object v3, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iget-object v4, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v3, v4, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 7
    new-instance v3, Lcom/apk/x4$case;

    invoke-direct {v3, p0, p1}, Lcom/apk/x4$case;-><init>(Lcom/apk/x4;Lcom/manhua/data/bean/ComicBean;)V

    .line 8
    iget-object v4, v2, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object v3, v4, Lcom/apk/lv;->throw:Lcom/apk/yv;

    const v3, 0x7f100239

    .line 9
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/apk/x4$try;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/apk/x4$try;-><init>(Lcom/apk/x4;Ljava/lang/String;Lcom/manhua/data/bean/ComicBean;Z)V

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/apk/zu$do;->case(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/apk/uv;Lcom/apk/sv;)Lcom/lxj/xpopup/impl/ConfirmPopupView;

    move-result-object p1

    const p2, 0x7f1000fd

    .line 10
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 11
    iput-object p2, p1, Lcom/lxj/xpopup/impl/ConfirmPopupView;->catch:Ljava/lang/CharSequence;

    const p2, 0x7f1000fb

    .line 12
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/lxj/xpopup/impl/ConfirmPopupView;->break:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    .line 15
    invoke-static {}, Lcom/apk/ze;->case()V

    return-void

    .line 16
    :cond_0
    throw v1
.end method

.method public return(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "search_history_key"

    .line 1
    invoke-static {p1}, Lcom/apk/n2;->switch(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "search_comic_history_key"

    .line 2
    invoke-static {p1}, Lcom/apk/n2;->switch(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/w5;->for(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static(Z)V
    .locals 5

    const-string v0, "/StaticFiles/NewHotBook.html"

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-wide/32 v0, 0xf731400

    .line 3
    sget-object v2, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v3, Lcom/apk/x4$do;

    const-string v4, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v3, p0, v4}, Lcom/apk/x4$do;-><init>(Lcom/apk/x4;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public final strictfp(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "first_show"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 2
    invoke-static {}, Lcom/apk/w0;->this()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "showinterval"

    .line 3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    const-wide/16 v2, 0x0

    const-string v4, "SP_HOME_HAIBAO_TEXT_INTERBAL_KEY"

    .line 4
    invoke-static {v4, v2, v3}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/apk/w5;->try(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final this(Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v7, Lcom/apk/x4$new;

    move-object v1, v7

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/apk/x4$new;-><init>(Lcom/apk/x4;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method

.method public final volatile(Lorg/json/JSONArray;ZZ)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "pkg"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v3}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/apk/x4;->for:Lcom/apk/w5;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v0, p2, p3}, Lcom/apk/w5;->case(Ljava/util/List;ZZ)V

    :cond_3
    return-void
.end method

.method public while(Z)Z
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ver9/base"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/initconf2.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    sget-object v5, Lcom/apk/xw;->case:Lcom/apk/xw;

    const-wide/32 v3, 0x2bf20

    const/4 v6, 0x0

    const-string v7, "SP_HOST_SHUC_XS_KEY"

    invoke-static/range {v2 .. v7}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    const-string v2, "code"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "data"

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v2, "error_conf"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_ERROR_CONF_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v2, "nr_cloud"

    .line 8
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 11
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "cloud"

    .line 12
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "yu"

    .line 13
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SP_NOVEL_CLOUD_HOST_KEY"

    .line 14
    invoke-static {v6, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v6, v5, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "new_host"

    .line 16
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    const-string v4, "app_init"

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_APP_INIT_KEY"

    .line 19
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_3
    const-string v4, "chap_xs"

    .line 20
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 21
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_CHAP_XS_KEY"

    .line 22
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_4
    const-string v4, "xz_xs"

    .line 23
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 24
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_XZ_XS_KEY"

    .line 25
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_5
    const-string v4, "imagehost"

    .line 26
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "URL_HOST_IMAGE_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    const-string v4, "dynichost_xs"

    .line 29
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "URL_HOST_DYNIC_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    const-string v4, "souhost_xs"

    .line 32
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 33
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "URL_HOST_SOUSUO_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_8
    const-string v4, "info_dex_xs"

    .line 35
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 36
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_INFO_DEX_XS_KEY"

    .line 37
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_9
    const-string v4, "shuc_xs"

    .line 38
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 39
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_SHUC_XS_KEY"

    .line 40
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_a
    const-string v4, "xzxs_zip"

    .line 41
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 42
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "NOVEL_CACHE_ZIP_HOST_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_b
    const-string v4, "chap_mh"

    .line 44
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 45
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_CHAP_MH_KEY"

    .line 46
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_c
    const-string v4, "info_dex_mh"

    .line 47
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 48
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_INFO_DEX_MH_KEY"

    .line 49
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_d
    const-string v4, "shuc_mh"

    .line 50
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 51
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const-string v5, "SP_HOST_SHUC_MH_KEY"

    .line 52
    invoke-static {v5, v4}, Lcom/apk/p0;->while(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_e
    const-string v4, "img_mh"

    .line 53
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 54
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 55
    new-instance v5, Lcom/manhua/data/bean/ComicImageConifg;

    invoke-direct {v5}, Lcom/manhua/data/bean/ComicImageConifg;-><init>()V

    const-string v6, "key"

    .line 56
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    .line 57
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "domain"

    .line 58
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mhimghost"

    .line 59
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 60
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_10

    .line 61
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 62
    :cond_f
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 63
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 64
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 65
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 66
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_f

    .line 68
    invoke-virtual {v13, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 70
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    .line 71
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 72
    :cond_10
    invoke-virtual {v5, v6}, Lcom/manhua/data/bean/ComicImageConifg;->setKey(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v7}, Lcom/manhua/data/bean/ComicImageConifg;->setLabel(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5, v8}, Lcom/manhua/data/bean/ComicImageConifg;->setDomain(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v5, v9}, Lcom/manhua/data/bean/ComicImageConifg;->setHostKeys(Ljava/util/Map;)V

    goto :goto_2

    :cond_11
    move-object v5, v3

    .line 76
    :goto_2
    sput-object v5, Lcom/apk/p0;->this:Lcom/manhua/data/bean/ComicImageConifg;

    :cond_12
    const-string v4, "dynichost_mh"

    .line 77
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 78
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 79
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "COMIC_URL_HOST_DYN_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_13
    const-string v4, "souhost_mh"

    .line 80
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 81
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "COMIC_URL_HOST_SOUSUO_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_14
    const-string v4, "ucenterhost"

    .line 83
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 84
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "URL_HOST_LIEBIAN_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_15
    const-string v4, "lb_host"

    .line 86
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 87
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 88
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "URL_HOST_SHARE_LIEBIAN_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_16
    const-string v4, "zwyd"

    .line 89
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 90
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1b

    const-string v4, "def_yu"

    .line 91
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 93
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_WEB_SEARCH_HOST_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_17
    const-string v4, "hy_url"

    .line 94
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 96
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_WEB_ACCURATE_SEARCH_HOST_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    const-string v4, "lx_def_yu"

    .line 97
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 99
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_WEB_FAST_SEARCH_HOST_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_19
    const-string v4, "lx_url"

    .line 100
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 102
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_WEB_SEARCH_FAST_URL_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    const-string v4, "dyn_yu"

    .line 103
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 105
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v5, "SP_WEB_DYNIC_URL_KEY"

    invoke-virtual {v4, v5, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1b
    const-string v2, "my_msg"

    .line 106
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "REFRESH_CHECK_TASK_RED_KEY"

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v2, :cond_1d

    .line 107
    const-class v7, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    invoke-static {v7, v2}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    if-eqz v2, :cond_1d

    .line 108
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/MyInfoMsgBean;->getVer()I

    move-result v7

    const-string v8, "SP_MYINFO_MSG_RED_TAG_VER_KEY"

    .line 109
    invoke-static {v8, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "SP_MYINFO_MSG_KEY"

    if-eq v7, v9, :cond_1c

    .line 110
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v10, v6}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 111
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v8, v7}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    :cond_1c
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v7

    .line 113
    iput-object v2, v7, Lcom/apk/continue;->throws:Lcom/biquge/ebook/app/bean/MyInfoMsgBean;

    .line 114
    invoke-static {v4, v3}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    invoke-static {v10, v3}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1d
    const-string v2, "pkgs3"

    .line 116
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "&"

    if-nez v7, :cond_1e

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_3

    :cond_1e
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_22

    const-string v2, "msg_notice"

    .line 119
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 120
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/apk/uf;

    invoke-direct {v7}, Lcom/apk/uf;-><init>()V

    .line 121
    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 122
    invoke-static {v2, v7}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_22

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_22

    .line 124
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 125
    const-class v9, Lcom/biquge/ebook/app/bean/InitConfNews;

    new-array v10, v1, [J

    invoke-static {v9, v10}, Lorg/litepal/LitePal;->findAll(Ljava/lang/Class;[J)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 126
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1f

    .line 127
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biquge/ebook/app/bean/InitConfNews;

    .line 128
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/InitConfNews;->getNid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 129
    :cond_1f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/biquge/ebook/app/bean/InitConfNews;

    if-eqz v10, :cond_20

    .line 131
    invoke-virtual {v10}, Lcom/biquge/ebook/app/bean/InitConfNews;->getNid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_20

    const-string v11, "false"

    .line 132
    invoke-virtual {v10, v11}, Lcom/biquge/ebook/app/bean/InitConfNews;->setDelete(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v10, v1}, Lcom/biquge/ebook/app/bean/InitConfNews;->setRead(Z)V

    .line 134
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 135
    :cond_21
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 136
    invoke-static {v9}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 137
    invoke-static {v4, v3}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_22
    if-eqz p1, :cond_23

    return v1

    :cond_23
    const-string p1, "pkgs"

    .line 138
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_7

    :cond_24
    const/4 p1, 0x1

    :goto_7
    const-string v2, "pkgs2"

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_8

    :cond_25
    const/4 v2, 0x1

    :goto_8
    const-string v3, "use_this"

    .line 144
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2c

    const-string p1, "pubnotice"

    .line 145
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "products"

    .line 146
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    if-eqz v4, :cond_2c

    .line 149
    invoke-virtual {p0, v4}, Lcom/apk/x4;->strictfp(Lorg/json/JSONObject;)Z

    move-result p1

    goto :goto_9

    .line 150
    :cond_26
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    if-eqz v8, :cond_2c

    .line 151
    invoke-virtual {p0, v8}, Lcom/apk/x4;->continue(Lorg/json/JSONObject;)Z

    move-result p1

    goto :goto_9

    .line 152
    :cond_27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "1"

    if-eqz v4, :cond_28

    .line 153
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    const-string v7, "2"

    if-eqz v8, :cond_29

    .line 154
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2c

    const-string v9, "SP_MAIN_PUBLIC_NEWS_POSITION_KEY"

    .line 156
    invoke-static {v9, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v10

    .line 157
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v10, v11, :cond_2a

    const/4 v10, 0x0

    .line 158
    :cond_2a
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    add-int/2addr v10, v6

    .line 159
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v11, v9, v10}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v4, :cond_2c

    .line 161
    invoke-virtual {p0, v4}, Lcom/apk/x4;->strictfp(Lorg/json/JSONObject;)Z

    move-result p1

    goto :goto_9

    .line 162
    :cond_2b
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    if-eqz v8, :cond_2c

    .line 163
    invoke-virtual {p0, v8}, Lcom/apk/x4;->continue(Lorg/json/JSONObject;)Z

    move-result p1

    :goto_9
    move v1, p1

    .line 164
    :cond_2c
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 165
    iget-object p1, p1, Lcom/apk/continue;->return:Lorg/json/JSONArray;

    if-eqz p1, :cond_2d

    .line 166
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 167
    iget-boolean v0, v0, Lcom/apk/continue;->static:Z

    .line 168
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 169
    iget-boolean v2, v2, Lcom/apk/continue;->switch:Z

    .line 170
    invoke-virtual {p0, p1, v0, v2}, Lcom/apk/x4;->volatile(Lorg/json/JSONArray;ZZ)V

    goto :goto_a

    :cond_2d
    if-eqz v2, :cond_2f

    const-string p1, "topmsg"

    .line 171
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2f

    const-string v2, "topmsg_close"

    .line 172
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "topmsg_red"

    .line 173
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "topmsg_ver"

    .line 174
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 175
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "SP_HOME_TOPMSG_RED_TAG_VER_KEY"

    .line 176
    invoke-static {v4, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v5

    if-eq v0, v5, :cond_2e

    .line 177
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v4, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-static {v6}, Lcom/apk/w0;->volatile(Z)V

    .line 179
    :cond_2e
    invoke-virtual {p0, p1, v2, v3}, Lcom/apk/x4;->volatile(Lorg/json/JSONArray;ZZ)V

    :cond_2f
    :goto_a
    return v1
.end method
