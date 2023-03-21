.class public final Lcom/apk/ba;
.super Ljava/lang/Object;
.source "BookUtil.java"

# interfaces
.implements Lcom/apk/x4$goto;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ba;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/ba;->if:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public if()V
    .locals 6

    .line 1
    sget-object v3, Lcom/apk/xw;->if:Lcom/apk/xw;

    :try_start_0
    const-string v0, "SP_HOST_XZ_XS_KEY"

    iget-object v1, p0, Lcom/apk/ba;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "NOVEL_CLOUD_CHANGE_XZXS_HOST_KEY"

    .line 2
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_0

    .line 4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 5
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0, v4}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string v0, "https://contentxs.apptuxing.com"

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v1, p0, Lcom/apk/ba;->if:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v0, "NOVEL_CLOUD_CHANGE_HOST_KEY"

    .line 9
    invoke-static {v0}, Lcom/apk/eg;->goto(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    invoke-static {v0}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 12
    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v0, v4}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const-string v0, "https://downbakxs.apptuxing.com"

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, p0, Lcom/apk/ba;->if:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
