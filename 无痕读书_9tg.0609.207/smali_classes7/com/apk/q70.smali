.class public Lcom/apk/q70;
.super Ljava/lang/Object;
.source "TrAdHelper.java"


# static fields
.field public static if:Lcom/apk/q70;


# instance fields
.field public do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/apk/c50;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()Lcom/apk/q70;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/q70;->if:Lcom/apk/q70;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/q70;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/q70;->if:Lcom/apk/q70;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/q70;

    invoke-direct {v1}, Lcom/apk/q70;-><init>()V

    sput-object v1, Lcom/apk/q70;->if:Lcom/apk/q70;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/apk/q70;->if:Lcom/apk/q70;

    return-object v0
.end method


# virtual methods
.method public if(Ljava/lang/String;)Lcom/apk/c50;
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/q70;->do:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apk/q70;->do:Ljava/util/Map;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/apk/q70;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    .line 8
    iget-object v0, p0, Lcom/apk/q70;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_2

    .line 9
    :cond_3
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    .line 10
    invoke-static {p1}, Lcom/swl/gg/sdk/TrAdSdk;->getAdJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    const-string v3, "per_req"

    .line 13
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "day_max"

    .line 14
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "list"

    .line 15
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 16
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    .line 18
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "adpt"

    .line 19
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "adid"

    .line 20
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    new-instance v11, Lcom/apk/c50;

    invoke-direct {v11, v10, v9}, Lcom/apk/c50;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iput v3, v11, Lcom/apk/c50;->for:I

    .line 23
    iput v4, v11, Lcom/apk/c50;->new:I

    .line 24
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object v6, v1

    :cond_5
    if-eqz v6, :cond_7

    const-string v3, "adrandom"

    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    invoke-static {v6}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/apk/q70;->do:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    goto :goto_2

    :cond_7
    :goto_1
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_d

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SP_TR_AD_LIST_INDEX_KEY"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1, v2}, Lcom/apk/g50;->do(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "SP_TR_AD_LIST_INDEX_DAY_KEY"

    .line 31
    invoke-static {v4, p1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 32
    :try_start_0
    sget-object v6, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v6, :cond_8

    .line 33
    invoke-virtual {v6, v4, v5}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 34
    :cond_8
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v6

    .line 35
    iget-object v6, v6, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    if-eqz v6, :cond_9

    .line 36
    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 37
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_9
    :goto_3
    invoke-static {}, Lcom/apk/k40;->switch()Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 40
    :try_start_1
    sget-object v1, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v1, :cond_a

    .line 41
    invoke-virtual {v1, v4, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 42
    :cond_a
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v1

    .line 43
    iget-object v5, v1, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_b

    .line 44
    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    :cond_b
    invoke-virtual {v1}, Lcom/apk/v70;->do()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_4
    add-int/lit8 v1, v2, 0x1

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1, v1}, Lcom/apk/g50;->new(Ljava/lang/String;I)V

    .line 49
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isOpenLog()Z

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    rem-int/2addr v2, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/c50;

    return-object p1

    :cond_d
    return-object v1
.end method
