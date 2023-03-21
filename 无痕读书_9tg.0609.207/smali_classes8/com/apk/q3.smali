.class public Lcom/apk/q3;
.super Lcom/apk/p1;
.source "ExpandPresenter.java"


# instance fields
.field public final for:Lcom/apk/t5;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/apk/t5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/p1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/apk/q3;->for:Lcom/apk/t5;

    return-void
.end method

.method public static for(Lcom/apk/q3;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "diqu"

    .line 3
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "id"

    const-string v3, "name"

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 5
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    .line 6
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    new-instance v10, Lcom/expand/videoplayer/bean/CategoryArea;

    invoke-direct {v10, v9, v8}, Lcom/expand/videoplayer/bean/CategoryArea;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :cond_2
    const-string p1, "year"

    .line 10
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 12
    :try_start_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_1
    if-ge v4, v0, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 15
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    new-instance v8, Lcom/expand/videoplayer/bean/CategoryYear;

    invoke-direct {v8, v7, v6}, Lcom/expand/videoplayer/bean/CategoryYear;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_3
    move-object v0, v5

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 17
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    :goto_5
    iget-object p0, p0, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz p0, :cond_7

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/apk/t5;->if(Ljava/util/List;Ljava/util/List;)V

    :cond_7
    return-void

    .line 20
    :cond_8
    throw v0
.end method


# virtual methods
.method public new()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->finally()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/category.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x2932e00

    .line 2
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    new-instance v4, Lcom/apk/q3$do;

    invoke-direct {v4, p0}, Lcom/apk/q3$do;-><init>(Lcom/apk/q3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/apk/x4;->import(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method
