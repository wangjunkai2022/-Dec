.class public Lcom/apk/kb0;
.super Lcom/apk/eb0;
.source "TrCommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/eb0<",
        "Lcom/apk/lb0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/lb0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/eb0;-><init>(Landroid/content/Context;Lcom/apk/fb0;)V

    return-void
.end method

.method public static do(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "Timestamp"

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public static if(Lcom/apk/kb0;Ljava/lang/String;IZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "Data"

    .line 4
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v3, "HasNext"

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "List"

    .line 6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "[]"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v3, :cond_1

    .line 8
    :try_start_1
    invoke-static {p1}, Lcom/apk/k40;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v3, :cond_1

    .line 11
    :try_start_2
    sget-object v3, Lcom/apk/q90;->do:Lcom/google/gson/Gson;

    .line 12
    new-instance v4, Lcom/apk/p90;

    invoke-direct {v4}, Lcom/apk/p90;-><init>()V

    .line 13
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 14
    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_1

    .line 15
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tr/comment/sdk/bean/TrCommentBean;

    .line 16
    invoke-virtual {v3}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/k40;->return(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserName(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 18
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz p0, :cond_2

    .line 21
    check-cast p0, Lcom/apk/lb0;

    invoke-interface {p0, v1, p2, v2, p3}, Lcom/apk/lb0;->try(Ljava/util/List;IZZ)V

    :cond_2
    return-void

    .line 22
    :cond_3
    throw v0
.end method


# virtual methods
.method public final case(Ljava/lang/String;IZ)V
    .locals 7

    if-nez p3, :cond_1

    .line 1
    sget-object v0, Lcom/apk/fa0;->do:Lcom/apk/m80;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/continue;->native:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "content"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget v2, Lcom/tr/comment/sdk/R$string;->tr_sdk_official_author_title:I

    invoke-static {v2}, Lcom/apk/k40;->while(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userFace"

    .line 6
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "clicktype"

    .line 8
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apk_pkg"

    .line 9
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "target"

    .line 10
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v6, Lcom/tr/comment/sdk/bean/TrCommentBean;

    invoke-direct {v6}, Lcom/tr/comment/sdk/bean/TrCommentBean;-><init>()V

    .line 12
    invoke-virtual {v6, v2}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v3}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setUserFace(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6, v1}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setContent(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6, v4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setClicktype(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6, v5}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setApk_pkg(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v6, v0}, Lcom/tr/comment/sdk/bean/TrCommentBean;->setTarget(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/apk/eb0;->do:Lcom/apk/fb0;

    if-eqz v0, :cond_1

    .line 19
    check-cast v0, Lcom/apk/lb0;

    invoke-interface {v0, v6}, Lcom/apk/lb0;->case(Lcom/tr/comment/sdk/bean/TrCommentBean;)V

    :cond_1
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 20
    invoke-static {}, Lcom/apk/fa0;->public()J

    move-result-wide v3

    goto :goto_1

    :cond_2
    move-wide v3, v1

    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 21
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    :goto_2
    new-instance v1, Lcom/apk/kb0$do;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/apk/kb0$do;-><init>(Lcom/apk/kb0;ZILjava/lang/String;)V

    .line 22
    new-instance p2, Lcom/apk/ky;

    invoke-direct {p2, p1}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-gtz p1, :cond_4

    move-wide v3, v5

    .line 23
    :cond_4
    iput-wide v3, p2, Lcom/apk/qy;->goto:J

    .line 24
    iput-object v0, p2, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 25
    invoke-virtual {p2, v1}, Lcom/apk/qy;->new(Lcom/apk/mx;)V

    return-void
.end method

.method public for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tr/comment/sdk/bean/TrCommentBean;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/eb0;->if:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apk/fa0;->catch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userIn"

    .line 4
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "equipment"

    .line 5
    :try_start_1
    invoke-static {}, Lcom/apk/fa0;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "infoUserName"

    .line 6
    :try_start_2
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "infoUserId"

    .line 7
    :try_start_3
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "infoUserFace"

    .line 8
    :try_start_4
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "mUserId"

    .line 9
    :try_start_5
    invoke-virtual {p4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "userName"

    .line 10
    :try_start_6
    invoke-virtual {p4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "userFace"

    .line 11
    :try_start_7
    invoke-virtual {p4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getUserFace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bookId"

    .line 12
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "chapterId"

    .line 13
    :try_start_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "0"

    :goto_0
    :try_start_9
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "commentId"

    .line 14
    :try_start_a
    invoke-virtual {p4}, Lcom/tr/comment/sdk/bean/TrCommentBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "forType"

    .line 15
    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "sign"

    .line 16
    :try_start_b
    invoke-static {v1}, Lcom/apk/kb0;->do(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_1
    invoke-static {}, Lcom/apk/fa0;->if()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/apk/kb0$new;

    invoke-direct {p2, p0}, Lcom/apk/kb0$new;-><init>(Lcom/apk/kb0;)V

    const/4 p3, 0x0

    invoke-static {p1, p3, v0, p2}, Lcom/apk/ja0;->case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V

    return-void
.end method

.method public new(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/eb0;->if:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apk/fa0;->catch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userIn"

    .line 4
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "userId"

    .line 5
    :try_start_1
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "equipment"

    .line 6
    :try_start_2
    invoke-static {}, Lcom/apk/fa0;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bookId"

    .line 7
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "chapterId"

    .line 8
    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p3, "0"

    :goto_0
    :try_start_4
    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "userName"

    .line 9
    :try_start_5
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "userFace"

    .line 10
    :try_start_6
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "commentId"

    .line 11
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "sign"

    .line 12
    :try_start_7
    invoke-static {v1}, Lcom/apk/kb0;->do(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_1
    invoke-static {}, Lcom/apk/fa0;->native()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/apk/kb0$for;

    invoke-direct {p2, p0, p4}, Lcom/apk/kb0$for;-><init>(Lcom/apk/kb0;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p3, v0, p2}, Lcom/apk/ja0;->case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V

    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/eb0;->if:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apk/fa0;->catch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userIn"

    .line 4
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "userId"

    .line 5
    :try_start_1
    invoke-static {}, Lcom/apk/fa0;->throws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "userName"

    .line 6
    :try_start_2
    invoke-static {}, Lcom/apk/fa0;->default()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "userFace"

    .line 7
    :try_start_3
    invoke-static {}, Lcom/apk/fa0;->switch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "equipment"

    .line 8
    :try_start_4
    invoke-static {}, Lcom/apk/fa0;->throw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "parentId"

    .line 9
    :try_start_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, "0"

    if-nez v2, :cond_1

    move-object v2, p5

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    :try_start_6
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bookId"

    .line 10
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "chapterId"

    .line 11
    :try_start_7
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v3, p3

    :cond_2
    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    .line 12
    invoke-virtual {v1, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "sign"

    .line 13
    :try_start_8
    invoke-static {v1}, Lcom/apk/kb0;->do(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/k40;->import(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :goto_1
    invoke-static {}, Lcom/apk/fa0;->return()Ljava/lang/String;

    move-result-object p1

    new-instance v7, Lcom/apk/kb0$if;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/apk/kb0$if;-><init>(Lcom/apk/kb0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, v7}, Lcom/apk/ja0;->case(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcom/apk/mx;)V

    return-void
.end method
