.class public Lcom/apk/p$do;
.super Lcom/apk/c1;
.source "AppUpgradeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/p;->if(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic if:Lcom/apk/p;


# direct methods
.method public constructor <init>(Lcom/apk/p;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p$do;->if:Lcom/apk/p;

    iput-boolean p2, p0, Lcom/apk/p$do;->do:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    const-string v2, "%"

    const-string v3, "SP_SHOW_UPGRADE_TIME_ONLY_DAY_KEY"

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->class()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ver9/whds"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/version2.html"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/32 v6, 0x2bf20

    .line 2
    sget-object v8, Lcom/apk/xw;->case:Lcom/apk/xw;

    const/4 v9, 0x0

    const-string v10, "SP_HOST_SHUC_XS_KEY"

    invoke-static/range {v5 .. v10}, Lcom/apk/x4;->throw(Ljava/lang/String;JLcom/apk/xw;Lcom/apk/x4$goto;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    const-string v7, "status"

    .line 3
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_e

    :try_start_0
    const-string v7, "data"

    .line 4
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5
    invoke-static {}, Lcom/apk/ze;->k()I

    move-result v7

    .line 6
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v10

    const-string v11, "az"

    .line 9
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v11, "channels"

    .line 10
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, ","

    const-string v13, "c"

    const-string v14, "new"

    const-string v15, "other_pkg"

    const-string v4, "appid"

    if-eqz v11, :cond_6

    .line 11
    :try_start_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v16, :cond_6

    const/4 v5, 0x0

    const/16 v17, 0x0

    .line 12
    :goto_0
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 13
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    move-object/from16 v18, v11

    .line 14
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 16
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 18
    invoke-static {v11}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v20, v2

    move-object/from16 v17, v6

    goto :goto_3

    .line 19
    :cond_0
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-le v11, v7, :cond_2

    .line 20
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 21
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v19, v6

    .line 22
    array-length v6, v11

    if-lez v6, :cond_2

    .line 23
    array-length v6, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_4

    move/from16 v21, v6

    :try_start_3
    aget-object v6, v11, v2

    .line 24
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v17, v19

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v21

    goto :goto_1

    :cond_2
    move-object/from16 v20, v2

    goto :goto_2

    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v18, v11

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v18

    move-object/from16 v2, v20

    goto :goto_0

    :cond_5
    move-object/from16 v20, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v20, v2

    goto/16 :goto_8

    :cond_6
    move-object/from16 v20, v2

    const/16 v17, 0x0

    :goto_3
    if-nez v17, :cond_b

    const-string v2, "vendor"

    .line 25
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v5, 0x0

    .line 26
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 27
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 28
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 30
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 31
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 32
    invoke-static {v10}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    goto :goto_6

    .line 33
    :cond_7
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    if-le v10, v7, :cond_9

    .line 34
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 36
    array-length v11, v10

    if-lez v11, :cond_9

    .line 37
    array-length v11, v10

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v11, :cond_a

    move-object/from16 v19, v6

    aget-object v6, v10, v2

    .line 38
    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_6
    move-object/from16 v17, v19

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v19

    goto :goto_5

    :cond_9
    move-object/from16 v18, v2

    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v18

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_b
    if-nez v17, :cond_d

    const-string v2, "def"

    .line 39
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 40
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 42
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 44
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    .line 45
    :cond_c
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-le v2, v7, :cond_d

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    const/16 v17, 0x0

    .line 46
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    move-object/from16 v0, v17

    goto :goto_9

    :cond_e
    move-object/from16 v20, v2

    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_10

    .line 47
    :try_start_4
    const-class v2, Lcom/biquge/ebook/app/bean/NewVersionBean;

    invoke-static {v2, v0}, Lcom/apk/ze;->n0(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz v0, :cond_10

    .line 48
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getOther_pkg()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 50
    invoke-static {v2}, Lcom/apk/ze;->G(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_a

    .line 51
    :cond_f
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getNewVersion()I

    move-result v2

    invoke-static {}, Lcom/apk/ze;->k()I

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-le v2, v4, :cond_10

    :goto_a
    move-object v4, v0

    goto :goto_b

    :catch_3
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_19

    .line 53
    iget-boolean v0, v1, Lcom/apk/p$do;->do:Z

    const-wide/16 v5, 0x0

    const-string v2, "SP_SHOW_UPGRADE_TIME_KEY"

    if-nez v0, :cond_17

    .line 54
    :try_start_5
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce()Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "SP_SHOW_UPGRADE_FORCE_KEY"

    const/4 v7, 0x0

    .line 55
    invoke-static {v0, v7}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_c

    .line 56
    :cond_11
    invoke-static {v2, v5, v6}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_12

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 58
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v2, v7, v8}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 59
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v7, v8, v5, v6}, Lcom/apk/kg;->do(JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 60
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMaxdays()I

    move-result v2

    if-lt v0, v2, :cond_13

    .line 61
    iget-object v0, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/apk/p;->do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V

    goto/16 :goto_d

    .line 62
    :cond_13
    iget-boolean v2, v1, Lcom/apk/p$do;->do:Z

    if-eqz v2, :cond_14

    .line 63
    iget-object v2, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMaxdays()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/apk/p;->do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V

    goto/16 :goto_d

    :cond_14
    const-string v2, ""

    .line 64
    invoke-static {v3, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SP_SHOW_UPGRADE_ONEDAY_SHOW_COUNT_KEY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 67
    invoke-static {v6, v7}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v8

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 69
    iget-object v8, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMaxdays()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-static {v8, v7, v9, v4}, Lcom/apk/p;->do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 73
    :cond_15
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getShowcounts()I

    move-result v2

    if-ge v8, v2, :cond_19

    .line 74
    iget-object v2, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMaxdays()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/apk/p;->do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V

    const/4 v2, 0x1

    add-int/2addr v8, v2

    .line 75
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v6, v8}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d

    .line 76
    :cond_16
    :goto_c
    iget-object v0, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/apk/p;->do(Lcom/apk/p;ZILcom/biquge/ebook/app/bean/NewVersionBean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 78
    :cond_17
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->isForce()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/biquge/ebook/app/bean/NewVersionBean;->setForce_user(Z)V

    .line 79
    invoke-static {v2, v5, v6}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_18

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 81
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v2, v7, v8}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 82
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v7, v8, v2, v3}, Lcom/apk/kg;->do(JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 83
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getMaxdays()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v4, v2}, Lcom/biquge/ebook/app/bean/NewVersionBean;->setXgDay_user(I)V

    .line 84
    iget-object v0, v1, Lcom/apk/p$do;->if:Lcom/apk/p;

    .line 85
    iput-object v4, v0, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    .line 86
    :cond_19
    :goto_d
    invoke-super/range {p0 .. p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/p$do;->if:Lcom/apk/p;

    .line 3
    invoke-virtual {p1}, Lcom/apk/p;->try()V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/p$do;->if:Lcom/apk/p;

    .line 3
    iget-object v0, v0, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/apk/p$new;->goto()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/p$do;->if:Lcom/apk/p;

    .line 6
    iget-object v0, v0, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/apk/p$new;->goto()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/apk/p$do;->if:Lcom/apk/p;

    .line 9
    iget-object v0, v0, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/apk/p$new;->goto()V

    :cond_2
    return-void
.end method
