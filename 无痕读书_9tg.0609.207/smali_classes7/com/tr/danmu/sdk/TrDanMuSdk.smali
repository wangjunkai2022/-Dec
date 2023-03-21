.class public Lcom/tr/danmu/sdk/TrDanMuSdk;
.super Ljava/lang/Object;
.source "TrDanMuSdk.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v0, v0, Lcom/apk/mb0;->do:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v1, "SP_SDK_REQUEST_HOST_KEY"

    .line 3
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getRequestBarrages(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarrages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    return-void
.end method

.method public static getRequestBarrages(Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarrages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    return-void
.end method

.method public static getRequestBarrages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 2

    .line 3
    new-instance v0, Lcom/apk/bb0;

    invoke-direct {v0}, Lcom/apk/bb0;-><init>()V

    new-instance v1, Lcom/tr/danmu/sdk/TrDanMuSdk$do;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tr/danmu/sdk/TrDanMuSdk$do;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    invoke-virtual {v0, v1}, Lcom/apk/bb0;->do(Lcom/apk/ab0;)Lcom/apk/bb0;

    return-void
.end method

.method public static getRequestBarragesSync(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarragesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestBarragesSync(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/tr/danmu/sdk/TrDanMuSdk;->getRequestBarragesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestBarragesSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 3
    invoke-static {}, Lcom/apk/jb0;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/jb0;->new()Ljava/lang/String;

    .line 5
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/apk/fa0;->this(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/apk/fa0;->public()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 7
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/apk/jb0;->do(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static loadBarrageCount(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/tr/danmu/sdk/TrDanMuSdk;->loadBarrageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V

    return-void
.end method

.method public static loadBarrageCount(Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/tr/danmu/sdk/TrDanMuSdk;->loadBarrageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V

    return-void
.end method

.method public static loadBarrageCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V
    .locals 10

    .line 3
    sget-object v0, Lcom/apk/jb0;->for:Lcom/apk/jb0;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/apk/jb0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/apk/jb0;->for:Lcom/apk/jb0;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/apk/jb0;

    invoke-direct {v1}, Lcom/apk/jb0;-><init>()V

    sput-object v1, Lcom/apk/jb0;->for:Lcom/apk/jb0;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object v2, Lcom/apk/jb0;->for:Lcom/apk/jb0;

    if-eqz v2, :cond_8

    const-string v0, "&"

    .line 9
    invoke-static {p1, v0, p2}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v0, v2, Lcom/apk/jb0;->do:Lcom/apk/wb0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/apk/wb0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_7

    .line 11
    iget-object p0, v2, Lcom/apk/jb0;->do:Lcom/apk/wb0;

    invoke-virtual {p0, v3}, Lcom/apk/wb0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p3, p1, p2, p0}, Lcom/apk/xb0;->do(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v0, v2, Lcom/apk/jb0;->if:Lcom/apk/wb0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/apk/wb0;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 13
    iget-object v0, v2, Lcom/apk/jb0;->if:Lcom/apk/wb0;

    invoke-virtual {v0, v3}, Lcom/apk/wb0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, v2, Lcom/apk/jb0;->if:Lcom/apk/wb0;

    invoke-virtual {v0, v3, p1}, Lcom/apk/wb0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/fa0;->class()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Api/Barrage/Count/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p0, p2}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-static {}, Lcom/apk/fa0;->public()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v4, v7, v0

    if-lez v4, :cond_5

    .line 17
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    :goto_1
    new-instance v9, Lcom/apk/gb0;

    move-object v1, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/apk/gb0;-><init>(Lcom/apk/jb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/xb0;)V

    .line 18
    new-instance p1, Lcom/apk/ky;

    invoke-direct {p1, p0}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 p2, -0x1

    cmp-long p0, v7, p2

    if-gtz p0, :cond_6

    move-wide v7, p2

    .line 19
    :cond_6
    iput-wide v7, p1, Lcom/apk/qy;->goto:J

    .line 20
    iput-object v0, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 21
    invoke-virtual {p1, v9}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v1, v0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "SP_SDK_REQUEST_HOST_KEY"

    .line 3
    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/apk/mb0;->do()V

    return-void
.end method

.method public static submitComment(Lcom/tr/comment/sdk/bean/TrSourceType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 7

    .line 1
    invoke-static {p0}, Lcom/apk/fa0;->for(Lcom/tr/comment/sdk/bean/TrSourceType;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/tr/danmu/sdk/TrDanMuSdk;->submitComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V

    return-void
.end method

.method public static submitComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/q80;)V
    .locals 3

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userIn"

    .line 4
    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "userId"

    .line 5
    :try_start_1
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "userName"

    .line 6
    :try_start_2
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "equipment"

    .line 7
    :try_start_3
    invoke-static {}, Lcom/apk/fa0;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "bookId"

    .line 8
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p0, "chapterId"

    .line 9
    :try_start_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    :try_start_5
    invoke-virtual {v1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "content"

    .line 10
    invoke-virtual {v1, p0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tags"

    .line 11
    invoke-virtual {v1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "color"

    .line 12
    invoke-virtual {v1, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p0, "sign"

    .line 13
    :try_start_6
    invoke-static {v1}, Lcom/apk/kb0;->do(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/fa0;->class()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/Api/Barrage/Add"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance p1, Lcom/apk/hb0;

    invoke-direct {p1, p6}, Lcom/apk/hb0;-><init>(Lcom/apk/q80;)V

    .line 18
    sget-object p2, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 p3, 0x0

    .line 19
    new-instance p5, Lcom/apk/ly;

    invoke-direct {p5, p0}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p5, p3, p4}, Lcom/apk/qy;->if(J)Lcom/apk/qy;

    .line 21
    iput-object p2, p5, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 22
    invoke-virtual {p5, v0}, Lcom/apk/my;->final(Lorg/json/JSONObject;)Lcom/apk/my;

    .line 23
    invoke-virtual {p5, p1}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    return-void
.end method
