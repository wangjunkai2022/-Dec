.class public Lcom/apk/m0;
.super Ljava/lang/Object;
.source "AppInitHelper.java"


# static fields
.field public static final do:Lcom/apk/ut$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/h0;->do:Lcom/apk/h0;

    sput-object v0, Lcom/apk/m0;->do:Lcom/apk/ut$do;

    return-void
.end method

.method public static break(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static case()V
    .locals 18

    const-string v1, "SP_CLEAR_IMAGE_DATE_KEY"

    const-string v0, "SP_APP_PRELOAD_DATA_KEY"

    .line 1
    invoke-static {v0}, Lcom/apk/ze;->D(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_9

    .line 2
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "data"

    const-string v5, "/"

    .line 3
    :try_start_0
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 5
    array-length v0, v6

    if-lez v0, :cond_9

    .line 6
    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_9

    aget-object v0, v6, v8

    .line 7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v10

    invoke-virtual {v10}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8
    sget-object v10, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/apk/ze;->catch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "."

    .line 10
    invoke-virtual {v0, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v11

    invoke-virtual {v11}, Lcom/apk/a6;->new()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x0

    .line 12
    invoke-static {v9, v10, v0}, Lcom/apk/eg;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 13
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 15
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 16
    array-length v13, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lez v13, :cond_8

    .line 17
    :try_start_1
    new-instance v13, Ljava/io/File;

    const-string v14, "local_index.html"

    invoke-direct {v13, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 19
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/apk/ze;->implements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 20
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 21
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 22
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 23
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string v15, "urls_local"

    .line 25
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 26
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_2

    const/4 v15, 0x0

    .line 27
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_2

    .line 28
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v4, "rel_url"

    .line 29
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v16, v2

    :try_start_2
    const-string v2, "local"

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v17, v6

    :try_start_3
    const-string v6, "type"

    .line 31
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "mh"

    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 34
    :cond_0
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    goto :goto_1

    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    .line 35
    array-length v0, v12

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_7

    aget-object v4, v12, v2

    .line 36
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apk/ze;->implements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 39
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 40
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 41
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->catch()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 42
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 43
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v11, v4, v6}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v16, v2

    :goto_5
    move-object/from16 v17, v6

    .line 44
    :goto_6
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 45
    :cond_7
    :goto_7
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 46
    invoke-static {v10}, Lcom/apk/ze;->native(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 47
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    :cond_8
    move-object/from16 v16, v2

    move-object/from16 v17, v6

    :goto_8
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    move-object/from16 v6, v17

    goto/16 :goto_0

    :catch_4
    move-exception v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_9
    :try_start_7
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v1, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 52
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/a6;->case()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 56
    array-length v1, v0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_b

    aget-object v2, v0, v4

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/apk/kg;->do(JJ)I

    move-result v3

    .line 58
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/16 v5, 0x3c

    if-le v3, v5, :cond_a

    .line 59
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :catch_6
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-void
.end method

.method public static catch(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/apk/xw;->if:Lcom/apk/xw;

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, v1}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "h"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "data"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "yu"

    .line 7
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "items"

    .line 8
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 10
    invoke-static {v3}, Lcom/apk/nd;->final(Lorg/json/JSONArray;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v3, v4}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->setBaseUrl(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 13
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    :cond_1
    return v1
.end method

.method public static do(Lcom/biquge/ebook/app/bean/NewReadFont;)V
    .locals 23

    const-string v0, "SP_LOAD_DEFAULT_FONT_KEY"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/biquge/ebook/app/bean/NewReadFont;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    .line 3
    new-instance v10, Lcom/apk/l0;

    invoke-direct {v10}, Lcom/apk/l0;-><init>()V

    .line 4
    invoke-static {v8}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getDownloadProgress(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/DownloadProgress;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v11, -0x1

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getStatus()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->getTotalSize()J

    move-result-wide v14

    cmp-long v0, v12, v14

    if-ltz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {v10, v6}, Lcom/apk/l0;->do(Ljava/io/File;)V

    goto/16 :goto_9

    .line 11
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    goto :goto_0

    :cond_3
    move-wide v12, v3

    :goto_0
    move-wide v13, v12

    :goto_1
    move-object v12, v6

    goto :goto_4

    :cond_4
    const-string v0, "/"

    .line 13
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    array-length v5, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    .line 15
    aget-object v7, v0, v6

    const-string v12, "?"

    .line 16
    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 17
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v11, :cond_5

    .line 18
    invoke-virtual {v7, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 19
    :cond_6
    array-length v5, v0

    if-lez v5, :cond_7

    .line 20
    array-length v5, v0

    add-int/2addr v5, v11

    aget-object v0, v0, v5

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 21
    :goto_3
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/biquge/ebook/app/bean/DownloadProgress;->saveDownloadProgress(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/DownloadProgress;

    move-wide v13, v3

    goto :goto_1

    .line 23
    :goto_4
    :try_start_0
    new-instance v0, Lcom/apk/ky;

    invoke-direct {v0, v8}, Lcom/apk/ky;-><init>(Ljava/lang/String;)V

    const-string v5, "Range"

    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 25
    iget-object v7, v0, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-virtual {v7, v5, v6}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/apk/qy;->for()Lcom/apk/ch0;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    if-eqz v2, :cond_b

    .line 28
    invoke-virtual {v2}, Lcom/apk/ch0;->throw()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    iget-object v0, v2, Lcom/apk/ch0;->goto:Lcom/apk/dh0;

    if-eqz v0, :cond_b

    .line 30
    invoke-virtual {v0}, Lcom/apk/dh0;->throw()J

    move-result-wide v15

    .line 31
    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v6, v12, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    invoke-virtual {v0}, Lcom/apk/dh0;->for()Ljava/io/InputStream;

    move-result-object v7

    const/16 v0, 0x2000

    new-array v5, v0, [B

    .line 34
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide/from16 v17, v3

    .line 35
    :goto_6
    :try_start_2
    invoke-virtual {v2, v5, v1, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-eq v3, v11, :cond_a

    .line 36
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 37
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/apk/o0;->goto(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_8

    .line 38
    :try_start_3
    invoke-static {v6}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 39
    invoke-static {v2}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 40
    invoke-static {v7}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 41
    :cond_8
    :try_start_4
    invoke-virtual {v6, v5, v1, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    int-to-long v3, v3

    add-long v17, v17, v3

    cmp-long v3, v17, v13

    if-lez v3, :cond_9

    const/4 v3, 0x0

    move-object/from16 v19, v2

    move-object v2, v8

    move-object/from16 v20, v5

    move-wide/from16 v4, v17

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide v6, v15

    .line 42
    :try_start_5
    invoke-static/range {v2 .. v7}, Lcom/biquge/ebook/app/bean/DownloadProgress;->updateDownloadProgress(Ljava/lang/String;IJJ)V

    goto :goto_7

    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    :goto_7
    move-object/from16 v2, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    goto :goto_6

    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    const/4 v3, 0x1

    move-object v2, v8

    move-wide/from16 v4, v17

    move-wide v6, v15

    .line 43
    invoke-static/range {v2 .. v7}, Lcom/biquge/ebook/app/bean/DownloadProgress;->updateDownloadProgress(Ljava/lang/String;IJJ)V

    .line 44
    invoke-virtual {v10, v12}, Lcom/apk/l0;->do(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    :try_start_6
    invoke-static/range {v21 .. v21}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 46
    invoke-static/range {v19 .. v19}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 47
    invoke-static/range {v22 .. v22}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .line 48
    :goto_8
    invoke-static/range {v21 .. v21}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 49
    invoke-static/range {v19 .. v19}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 50
    invoke-static/range {v22 .. v22}, Lcom/apk/mu;->class(Ljava/io/Closeable;)V

    .line 51
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_9
    return-void
.end method

.method public static else()V
    .locals 20

    const-string v1, "SP_AOTU_ADD_CLEAR_NO_READ_KEY"

    .line 1
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v2

    .line 2
    sget-object v9, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string v10, "cache/"

    const/4 v11, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "cache"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 4
    array-length v0, v12

    if-lez v0, :cond_3

    .line 5
    array-length v13, v12

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_3

    aget-object v0, v12, v14

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/apk/else;->for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 8
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/a6;->for()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v15}, Lcom/apk/ze;->catch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, ".zip"

    .line 10
    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apk/a6;->new()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apk/ze;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 12
    :try_start_1
    invoke-static {v15, v3, v4}, Lcom/apk/eg;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    sput v3, Lcom/apk/ze;->do:I

    .line 16
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v6, v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v4, v7, v5

    const-string v16, "cache"

    move-object v3, v9

    move/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v16, v6

    move-object v6, v0

    move-object/from16 v18, v7

    move-object v7, v15

    move-object/from16 v19, v8

    .line 17
    invoke-static/range {v3 .. v8}, Lcom/apk/ze;->for(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v16

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    const-string v3, ".txt"

    .line 19
    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Lcom/apk/ze;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    const-string v0, ""

    if-eqz v2, :cond_4

    const-string v3, "SP_AOTU_ADD_SHELD_IDS_MAN_KEY"

    .line 22
    invoke-static {v3, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const-string v3, "SP_AOTU_ADD_SHELD_IDS_LADY_KEY"

    .line 23
    invoke-static {v3, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 24
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ","

    if-nez v4, :cond_6

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 26
    invoke-static {v0, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v0

    .line 27
    :goto_5
    invoke-static {v4, v3}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v0

    :goto_6
    const-string v4, "SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_MAN_KEY"

    const-string v6, "SP_AOTU_ADD_SHELD_IDS_VERSION_VALUE_LADY_KEY"

    if-eqz v2, :cond_7

    .line 28
    invoke-static {v4, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 29
    :cond_7
    invoke-static {v6, v0}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 32
    invoke-static {v3, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_8
    invoke-static {v3, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    :cond_9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    array-length v2, v0

    if-lez v2, :cond_f

    const/4 v2, 0x1

    .line 37
    :try_start_3
    array-length v3, v0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v3, :cond_e

    aget-object v7, v0, v5

    .line 38
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SP_SHELF_TUIGUANG_ID_KEY"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 39
    invoke-static {v8, v11}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_9

    .line 40
    :cond_a
    invoke-static {v7}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 41
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v7, v8, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    .line 42
    :cond_b
    invoke-static {v7, v2}, Lcom/apk/v3;->throw(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v7

    if-eqz v7, :cond_d

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    const/16 v16, 0x1

    move-object v12, v7

    .line 43
    invoke-static/range {v12 .. v18}, Lcom/apk/n2;->t(Lcom/biquge/ebook/app/bean/Book;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 44
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v8, v2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 45
    :try_start_4
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/Book;->getFirstChapterId()Ljava/lang/String;

    move-result-object v13

    .line 46
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 47
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v12 .. v17}, Lcom/apk/n2;->super(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 48
    :catch_2
    :cond_c
    :try_start_5
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_d
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :catch_3
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_e
    invoke-static {v2}, Lcom/apk/ze;->Y(Z)V

    .line 51
    invoke-static {v4}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 52
    invoke-static {v6}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 53
    :cond_f
    :try_start_6
    invoke-static {v1, v11}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    invoke-static {}, Lcom/apk/n2;->package()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 57
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_10

    .line 58
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 59
    :cond_10
    invoke-static {v2}, Lcom/apk/n2;->s([Ljava/lang/String;)Z

    .line 60
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 61
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 62
    throw v0

    .line 63
    :catch_4
    :cond_11
    :goto_b
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    return-void
.end method

.method public static for()Ljava/lang/String;
    .locals 8

    const-string v0, "action"

    const-string v1, "sharelist"

    .line 1
    invoke-static {v0, v1}, Lcom/apk/goto;->native(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "platform"

    .line 3
    invoke-static {}, Lcom/apk/ze;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sourceType"

    const-string v3, "novel"

    .line 4
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
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jni/crypt/project/CryptDesManager;->encodeContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/apk/w;->const()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    .line 16
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "endTime"

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 21
    sget-object v4, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v3, v4}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v3

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 23
    sget-object v5, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v2, v5}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v5

    goto :goto_1

    .line 24
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_1
    cmp-long v7, v5, v3

    if-ltz v7, :cond_2

    .line 25
    invoke-static {v2}, Lcom/apk/w0;->package(Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_1
    invoke-static {v2}, Lcom/apk/w0;->package(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v2, "serverTime"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_SERVICE_CUR_TIME_KEY"

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "devicenos"

    .line 29
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 30
    :try_start_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/apk/vf;

    invoke-direct {v3}, Lcom/apk/vf;-><init>()V

    .line 31
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 32
    invoke-static {v1, v3}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 33
    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/apk/w0;->catch()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 34
    const-class v3, Lcom/biquge/ebook/app/bean/ShareTgBean;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 35
    invoke-static {v1}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 37
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v4, "SP_NEW_SHARE_LINK_SIZE"

    invoke-virtual {v3, v4, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "REFRESH_NEW_SHARE_LINK_USEAR"

    .line 38
    invoke-static {v1, v2}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    const-string v1, "SP_NEW_SHARE_USER_COUPONID"

    .line 39
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    return-object v0
.end method

.method public static goto()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled(Z)V

    .line 2
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setCatchUncaughtExceptions(Z)V

    .line 3
    sget-object v0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 4
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "6159e28fac9567566e8a1623"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static if(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    .line 1
    sget-object v2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 2
    invoke-static {v2}, Lcom/swl/gg/sdk/TrAdSdk;->preInit(Landroid/app/Application;)V

    .line 3
    invoke-static {}, Lcom/apk/w0;->switch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->setLog(Z)V

    .line 5
    :cond_0
    new-instance v2, Lcom/apk/y;

    invoke-direct {v2}, Lcom/apk/y;-><init>()V

    .line 6
    sput-object v2, Lcom/apk/k40;->do:Lcom/apk/r40;

    .line 7
    invoke-static {}, Lcom/apk/k40;->continue()Landroid/app/Application;

    move-result-object v2

    .line 8
    :try_start_0
    sget-object v3, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    if-eqz v3, :cond_1

    .line 9
    sget-object v3, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 10
    invoke-virtual {v3}, Lcom/apk/tw;->getContext()Landroid/content/Context;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 11
    new-instance v3, Lcom/apk/xg0$do;

    invoke-direct {v3}, Lcom/apk/xg0$do;-><init>()V

    .line 12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v5, v6, v4}, Lcom/apk/xg0$do;->if(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v4}, Lcom/apk/xg0$do;->new(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 14
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v4}, Lcom/apk/xg0$do;->do(JLjava/util/concurrent/TimeUnit;)Lcom/apk/xg0$do;

    .line 15
    new-instance v4, Lcom/apk/px;

    new-instance v5, Lcom/apk/sx;

    invoke-direct {v5, v2}, Lcom/apk/sx;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v5}, Lcom/apk/px;-><init>(Lcom/apk/rx;)V

    const-string v5, "cookieJar"

    .line 16
    invoke-static {v4, v5}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object v4, v3, Lcom/apk/xg0$do;->break:Lcom/apk/kg0;

    .line 18
    sget-object v4, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    .line 19
    iput-object v2, v4, Lcom/apk/tw;->do:Landroid/app/Application;

    .line 20
    new-instance v2, Lcom/apk/xg0;

    invoke-direct {v2, v3}, Lcom/apk/xg0;-><init>(Lcom/apk/xg0$do;)V

    .line 21
    iput-object v2, v4, Lcom/apk/tw;->for:Lcom/apk/xg0;

    .line 22
    sget-object v2, Lcom/apk/xw;->if:Lcom/apk/xw;

    .line 23
    iput-object v2, v4, Lcom/apk/tw;->case:Lcom/apk/xw;

    const-wide/16 v2, -0x1

    .line 24
    invoke-virtual {v4, v2, v3}, Lcom/apk/tw;->if(J)Lcom/apk/tw;

    .line 25
    invoke-virtual {v4, v1}, Lcom/apk/tw;->for(I)Lcom/apk/tw;

    .line 26
    :cond_2
    new-instance v2, Lcom/apk/x;

    invoke-direct {v2}, Lcom/apk/x;-><init>()V

    invoke-static {v2}, Lcom/tr/comment/sdk/TrCommentSdk;->init(Lcom/apk/m80;)V

    goto :goto_1

    .line 27
    :cond_3
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 28
    iget-boolean v2, v2, Lcom/apk/continue;->if:Z

    if-eqz v2, :cond_4

    .line 29
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v2

    new-instance v3, Lcom/apk/case;

    invoke-direct {v3}, Lcom/apk/case;-><init>()V

    .line 30
    iget-object v2, v2, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    const-string v2, "SP_TUIGUANG_YOUMENG_INIT_KEY"

    if-eqz p0, :cond_6

    .line 32
    invoke-static {v2, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "6159e28fac9567566e8a1623"

    if-nez p0, :cond_5

    .line 33
    sget-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 34
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_5
    sget-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 36
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/apk/m0;->goto()V

    .line 38
    invoke-static {v0}, Lcom/swl/gg/sdk/TrAdSdk;->openAdQuickDownload(Z)V

    .line 39
    sget-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 40
    invoke-static {}, Lcom/apk/z;->do()Lcom/apk/z;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/swl/gg/sdk/TrAdSdk;->init(Landroid/app/Application;Lcom/apk/u60;)V

    .line 41
    sget-object p0, Lcom/apk/m0;->do:Lcom/apk/ut$do;

    invoke-static {p0}, Lcom/apk/ys;->for(Lcom/apk/ut$do;)V

    goto :goto_2

    .line 42
    :cond_6
    invoke-static {v2, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_7

    .line 43
    sget-object p0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-static {}, Lcom/apk/m0;->goto()V

    .line 45
    invoke-static {v0}, Lcom/swl/gg/sdk/TrAdSdk;->openAdQuickDownload(Z)V

    .line 46
    sget-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 47
    invoke-static {}, Lcom/apk/z;->do()Lcom/apk/z;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/swl/gg/sdk/TrAdSdk;->init(Landroid/app/Application;Lcom/apk/u60;)V

    .line 48
    sget-object p0, Lcom/apk/m0;->do:Lcom/apk/ut$do;

    invoke-static {p0}, Lcom/apk/ys;->for(Lcom/apk/ut$do;)V

    .line 49
    :cond_7
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->isInitAds()Z

    move-result p0

    if-nez p0, :cond_8

    .line 50
    sget-object p0, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 51
    invoke-static {}, Lcom/apk/z;->do()Lcom/apk/z;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/swl/gg/sdk/TrAdSdk;->init(Landroid/app/Application;Lcom/apk/u60;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static new()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SP_WEB_ACCURATE_SEARCH_HOST_KEY"

    const-string v5, ""

    .line 3
    invoke-static {v4, v5}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "https://precise.apptianwangxing.com"

    .line 5
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/catalog/8/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".json"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2, v0}, Lcom/apk/m0;->catch(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 9
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/apk/da;->catch(Ljava/util/List;)V

    .line 10
    const-class v2, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 11
    invoke-static {v0}, Lorg/litepal/LitePal;->saveAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public static this()V
    .locals 14

    .line 1
    sget-object v0, Lcom/apk/xw;->if:Lcom/apk/xw;

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    const-string v3, "#"

    const-string v4, "SP_INSTALL_DAY_AUTO_LOGIN_KEY"

    const-string v5, "SP_ADD_BOOK_SHELF_AUTO_LOGIN_COUNT_KEY"

    .line 2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apk/v0;->else()Lcom/biquge/ebook/app/bean/User;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x3

    const-string v9, ""

    const/4 v10, 0x0

    if-eqz v6, :cond_4

    .line 3
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getLoginType()I

    move-result v2

    if-eq v2, v7, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 4
    :cond_0
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v6, v10}, Lcom/biquge/ebook/app/bean/User;->setLoginType(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    .line 9
    invoke-virtual {v6, v2}, Lcom/biquge/ebook/app/bean/User;->setLoginType(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v6, v8}, Lcom/biquge/ebook/app/bean/User;->setLoginType(I)V

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getLoginType()I

    move-result v2

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/biquge/ebook/app/bean/User;->getPwd()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/apk/g5;->try(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_0
    const-string v6, "SP_ADD_BOOK_SHELF_AUTO_LOGIN_KEY"

    .line 12
    invoke-static {v6, v7}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 13
    invoke-static {v5, v10}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v6

    if-le v6, v2, :cond_5

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {v4, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v6, v4, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 20
    array-length v2, v2

    const-string v3, "SP_AUTO_REGISTER_LOGIN_INSTALL_DAY_KEY"

    invoke-static {v3, v8}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 21
    invoke-static {v5, v10}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v7

    .line 22
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v5, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "login_action_start"

    new-array v3, v10, [Ljava/lang/Object;

    .line 23
    invoke-static {v2, v3}, Lcom/apk/mf;->if(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 24
    invoke-static {v8, v2, v2}, Lcom/apk/g5;->try(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :cond_7
    :goto_1
    const-class v2, Lcom/biquge/ebook/app/bean/BatchCacheBean;

    new-array v3, v10, [Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 27
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "BATCH_CACHE_MUST_REWARD_AD_KEY"

    invoke-virtual {v2, v3, v7}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 29
    iget-object v2, v2, Lcom/apk/continue;->while:Lcom/apk/hf;

    .line 30
    sget-object v3, Lcom/apk/hf;->do:Lcom/apk/hf;

    if-ne v2, v3, :cond_8

    .line 31
    invoke-static {}, Lcom/apk/m0;->else()V

    goto :goto_2

    .line 32
    :cond_8
    sget-object v3, Lcom/apk/hf;->if:Lcom/apk/hf;

    if-ne v2, v3, :cond_9

    .line 33
    invoke-static {}, Lcom/apk/m0;->try()V

    goto :goto_2

    .line 34
    :cond_9
    sget-object v3, Lcom/apk/hf;->for:Lcom/apk/hf;

    if-eq v2, v3, :cond_a

    sget-object v3, Lcom/apk/hf;->new:Lcom/apk/hf;

    if-ne v2, v3, :cond_b

    .line 35
    :cond_a
    invoke-static {}, Lcom/apk/m0;->else()V

    .line 36
    invoke-static {}, Lcom/apk/m0;->try()V

    .line 37
    :cond_b
    :goto_2
    invoke-static {}, Lcom/apk/m0;->new()V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ver9/base"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/rd_bg_conf.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x9a7ec800L

    .line 39
    new-instance v5, Lcom/apk/w4;

    const-string v6, "SP_HOST_SHUC_XS_KEY"

    invoke-direct {v5, v6}, Lcom/apk/w4;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v1, v5}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    const-string v2, "SP_YU_POOLS_KEY"

    .line 40
    invoke-static {v2, v9}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "data"

    const-wide/16 v7, 0x0

    if-nez v3, :cond_c

    .line 42
    :try_start_1
    invoke-static {v2, v7, v8, v0}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v3, "try_try"

    .line 44
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 45
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 46
    sget-object v3, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 47
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SP_YU_POOLS_HOST_VALUE_KEY"

    .line 48
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v3, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    :cond_c
    :goto_3
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 51
    :try_start_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v2

    .line 52
    iget-object v2, v2, Lcom/apk/continue;->goto:Lcom/biquge/ebook/app/bean/BarrageConfigBean;

    if-eqz v2, :cond_f

    .line 53
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BarrageConfigBean;->getGet_txtlink_dm()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 55
    invoke-static {v2, v7, v8, v0}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 56
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_f

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_e

    .line 60
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v4, "label"

    .line 61
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color"

    .line 62
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "clickto"

    .line 63
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "c_extra"

    .line 64
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pkg"

    .line 65
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "pre_Str"

    .line 66
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "pre_Ico"

    .line 67
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "bgcolor"

    .line 68
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    new-instance v13, Lcom/manhua/ui/widget/barrage/BarrageBean;

    invoke-direct {v13, v4, v5}, Lcom/manhua/ui/widget/barrage/BarrageBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v13, v7}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setClickto(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v13, v8}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setC_extra(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v13, v9}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setPkg(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v13, v11}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setPre_Str(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v13, v12}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setPre_Ico(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v13, v3}, Lcom/manhua/ui/widget/barrage/BarrageBean;->setBgcolor(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 78
    invoke-static {v12}, Lcom/apk/u;->do(Ljava/lang/String;)Ljava/io/File;

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 79
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 80
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setAdBarrageBeanLists(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :cond_f
    :goto_5
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 83
    invoke-static {}, Lcom/apk/w0;->class()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 84
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->isOnlyCheckTime()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 85
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 87
    sget-object v2, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v0, v2}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v2

    .line 88
    invoke-static {}, Lcom/apk/w0;->const()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 90
    sget-object v4, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v0, v4}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v4

    goto :goto_6

    .line 91
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_6
    cmp-long v0, v4, v2

    if-gez v0, :cond_12

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_12

    .line 93
    invoke-static {}, Lcom/apk/m0;->for()Ljava/lang/String;

    goto :goto_7

    .line 94
    :cond_11
    invoke-static {}, Lcom/apk/m0;->for()Ljava/lang/String;

    .line 95
    :cond_12
    :goto_7
    invoke-static {}, Lcom/apk/w;->catch()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/apk/k0;

    invoke-direct {v2, v6}, Lcom/apk/k0;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x240c8400

    invoke-static {v0, v3, v4, v1, v2}, Lcom/apk/x4;->native(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/mx;)V

    return-void
.end method

.method public static try()V
    .locals 17

    const-string v1, "SP_AOTU_ADD_CRATTON_CLEAR_NO_READ_KEY"

    .line 1
    invoke-static {}, Lcom/apk/w0;->import()Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    const-string v3, "SP_AOTU_ADD_CRATTON_SHELD_IDS_MAN_KEY"

    .line 2
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "SP_AOTU_ADD_CRATTON_SHELD_IDS_LADY_KEY"

    .line 3
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, ","

    if-nez v4, :cond_2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-static {v2, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 7
    :goto_1
    invoke-static {v4, v3}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    const-string v4, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_MAN_KEY"

    const-string v6, "SP_AOTU_ADD_CRATTON_SHELD_IDS_VERSION_VALUE_LADY_KEY"

    if-eqz v0, :cond_3

    .line 8
    invoke-static {v4, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {v6, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-static {v3, v5}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    :cond_4
    invoke-static {v3, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v3, v0

    if-lez v3, :cond_a

    const/4 v3, 0x1

    .line 17
    :try_start_0
    array-length v5, v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_9

    aget-object v8, v0, v7

    .line 18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SP_COMIC_SHELF_TUIGUANG_ID_KEY"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 19
    invoke-static {v9, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    .line 20
    :cond_6
    invoke-static {v8}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 21
    sget-object v8, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v8, v9, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 22
    :cond_7
    invoke-static {v8, v2}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v10

    if-eqz v10, :cond_8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    const/4 v14, 0x1

    .line 23
    invoke-static/range {v10 .. v16}, Lcom/apk/mu;->v(Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 24
    sget-object v8, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v8, v9, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_9
    invoke-static {v3}, Lcom/apk/ze;->Y(Z)V

    .line 28
    invoke-static {v4}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 29
    invoke-static {v6}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 30
    :cond_a
    :try_start_1
    invoke-static {v1, v2}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 31
    invoke-static {}, Lcom/apk/mu;->volatile()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 34
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 35
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v3}, Lcom/apk/mu;->t([Ljava/lang/String;)Z

    .line 37
    invoke-static {}, Lcom/apk/ze;->V()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 38
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    .line 39
    throw v0

    .line 40
    :catch_1
    :cond_c
    :goto_7
    invoke-static {v1}, Lcom/apk/ze;->W(Ljava/lang/String;)V

    return-void
.end method
