.class public Lcom/apk/o5;
.super Lcom/apk/c1;
.source "WelComePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/apk/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lorg/json/JSONObject;

.field public final synthetic if:Lcom/apk/q5;


# direct methods
.method public constructor <init>(Lcom/apk/q5;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o5;->if:Lcom/apk/q5;

    iput-object p2, p0, Lcom/apk/o5;->do:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 53

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/apk/o5;->do:Lorg/json/JSONObject;

    if-eqz v0, :cond_2f

    const-string v3, "data"

    .line 2
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2f

    const-string v0, "swlsdkhost"

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SP_AD_HOST_SWL_KEY"

    .line 4
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v6, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v6, v5, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v0, "gdtappid"

    .line 6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "id"

    const-string v6, "pkg"

    const-string v7, ""

    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    .line 9
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 10
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 12
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v7

    :goto_1
    const-string v8, "SP_AD_HOST_GDT_KEY"

    .line 13
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v8, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "csjappid"

    .line 14
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_4

    .line 17
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 18
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 19
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 20
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v7

    :goto_3
    const-string v8, "SP_AD_HOST_CSJ_KEY"

    .line 21
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v8, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "gm_appid"

    .line 22
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_6

    .line 25
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 26
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 27
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 28
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    move-object v0, v7

    :goto_5
    const-string v8, "SP_AD_TT_GM_APPID_KEY"

    .line 29
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v8, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bd_appid"

    .line 30
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v8, :cond_8

    .line 33
    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 34
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 35
    invoke-static {}, Lcom/apk/ze;->finally()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 36
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    const-string v0, "SP_AD_HOST_BAIDU_KEY"

    .line 37
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_8
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/apk/continue;->goto(Lorg/json/JSONObject;)V

    .line 40
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-string v0, "adswitch"

    .line 41
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v5, :cond_2d

    if-eqz v0, :cond_e

    .line 43
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object v7

    .line 44
    iget-object v8, v7, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-nez v8, :cond_a

    .line 45
    invoke-virtual {v7}, Lcom/apk/v0;->break()V

    .line 46
    :cond_a
    iget-object v8, v7, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v8, :cond_c

    .line 47
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/User;->isNoAd()Z

    move-result v8

    if-nez v8, :cond_d

    .line 48
    iget-object v7, v7, Lcom/apk/v0;->do:Lcom/biquge/ebook/app/bean/User;

    if-eqz v7, :cond_b

    .line 49
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/User;->isKingPower()Z

    move-result v7

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_c

    goto :goto_b

    :cond_c
    const/4 v6, 0x0

    :cond_d
    :goto_b
    if-eqz v6, :cond_e

    const/4 v0, 0x0

    :cond_e
    if-eqz v0, :cond_10

    .line 50
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apk/continue;->for()Lcom/biquge/ebook/app/bean/NewShareDisBean;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 51
    invoke-static {}, Lcom/apk/w0;->goto()Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 53
    sget-object v7, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v6, v7}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v6

    .line 54
    invoke-static {}, Lcom/apk/w0;->const()Ljava/lang/String;

    move-result-object v8

    .line 55
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 56
    sget-object v9, Lcom/apk/kg;->do:Ljava/text/DateFormat;

    invoke-static {v8, v9}, Lcom/apk/kg;->catch(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v8

    goto :goto_c

    .line 57
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_c
    cmp-long v10, v8, v6

    if-gez v10, :cond_10

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-gez v10, :cond_10

    goto :goto_d

    :cond_10
    move v4, v0

    .line 59
    :goto_d
    iput-boolean v4, v5, Lcom/apk/finally;->do:Z

    .line 60
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 61
    iget-boolean v0, v0, Lcom/apk/finally;->do:Z

    if-eqz v0, :cond_29

    .line 62
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v4, "free_time_h"

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 64
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/apk/finally;->if:I

    :cond_11
    const-string v4, "adrandom"

    .line 65
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 66
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 67
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v6, "SP_AD_RANDOM_LOAD_KEY"

    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_12
    const-string v4, "open_v"

    .line 68
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    if-eqz v5, :cond_13

    .line 69
    invoke-static {v5, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iput-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    .line 70
    :cond_13
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    const-string v6, "SPLASH_AD_TIMEOUT_TIME_KEY"

    const-string v7, "showMax"

    const-string v8, "timeout"

    const-wide v9, 0x408f400000000000L    # 1000.0

    if-eqz v5, :cond_17

    .line 71
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 72
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-int v5, v11

    .line 73
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v11, v6, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    :cond_14
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 75
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 76
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SPLASH_AD_SHOW_MAX_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    :cond_15
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    const-string v11, "v_tips"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 78
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SPLASH_AD_VIDEO_TIPS_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    :cond_16
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    const-string v11, "v_tips_c"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 81
    iget-object v5, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 82
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SPLASH_TIPS_SHOW_MAX_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_17
    const-string v5, "open_dd"

    .line 83
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_19

    const-string v11, "csj"

    .line 84
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 85
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 86
    sget-object v12, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v13, "SP_AD_GM_DD_OPEN_CSJ_ID_KEY"

    invoke-virtual {v12, v13, v11}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_18
    const-string v11, "gdt"

    .line 87
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 88
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_AD_GM_DD_OPEN_GDT_ID_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_19
    const-string v5, "preload_flag"

    .line 90
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 91
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 92
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_VIDEO_AD_PRELOAD_FLAG_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1a
    const-string v5, "preload_module"

    .line 93
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 94
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 95
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_VIDEO_AD_PRELOAD_MOODULE_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1b
    const-string v5, "preload_countdown"

    .line 96
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 97
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-int v5, v11

    .line 98
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_VIDEO_AD_PRELOAD_MOODULE_B_COUNTDOWN_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1c
    const-string v5, "video_ad_check_s"

    .line 99
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 100
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-int v5, v11

    .line 101
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_VIDEO_AD_CHECK_INTERVAL_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1d
    const-string v5, "close_slop"

    .line 102
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 103
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 104
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v12, "SP_VIDEO_CLOSE_SLOP_KEY"

    invoke-virtual {v11, v12, v5}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1e
    const-string v5, "toforeground"

    .line 105
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iput-object v11, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    if-eqz v11, :cond_21

    .line 106
    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 107
    iget-object v11, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    int-to-double v11, v8

    mul-double v11, v11, v9

    double-to-int v8, v11

    .line 108
    sget-object v11, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v11, v6, v8}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    :cond_1f
    iget-object v6, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 110
    iget-object v6, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 111
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "TOFORE_SPLASH_AD_SHOW_MAX_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    :cond_20
    iget-object v6, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    const-string v7, "fetchDelay"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 113
    iget-object v6, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double v6, v6, v9

    double-to-int v6, v6

    .line 114
    sget-object v7, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v8, "SPLASH_AD_FETCHDELAY_SHOW_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_21
    const-string v6, "bannershelf"

    .line 115
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iput-object v7, v0, Lcom/apk/finally;->o:Lorg/json/JSONObject;

    const-string v7, "shelftxtlink"

    .line 116
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, v0, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    const-string v8, "searchnative"

    .line 117
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v0, Lcom/apk/finally;->q:Lorg/json/JSONObject;

    const-string v9, "categorylist"

    .line 118
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    iput-object v10, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    const-string v10, "floatshelf"

    .line 119
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    iput-object v11, v0, Lcom/apk/finally;->g:Lorg/json/JSONObject;

    const-string v11, "floatread"

    .line 120
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    iput-object v12, v0, Lcom/apk/finally;->f:Lorg/json/JSONObject;

    const-string v12, "topweek"

    .line 121
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    iput-object v13, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    const-string v13, "topmonth"

    .line 122
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    iput-object v14, v0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    const-string v14, "toptotal"

    .line 123
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    iput-object v15, v0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    const-string v15, "topicnew"

    .line 124
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->b:Lorg/json/JSONObject;

    const-string v2, "topichot"

    .line 125
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->instanceof:Lorg/json/JSONObject;

    const-string v1, "topiccollect"

    move-object/from16 v16, v2

    .line 126
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->synchronized:Lorg/json/JSONObject;

    const-string v2, "topicrecommend"

    move-object/from16 v17, v1

    .line 127
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->a:Lorg/json/JSONObject;

    const-string v1, "shelfnative"

    move-object/from16 v18, v2

    .line 128
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->implements:Lorg/json/JSONObject;

    const-string v2, "bshomelist"

    move-object/from16 v19, v1

    .line 129
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->transient:Lorg/json/JSONObject;

    const-string v1, "bannerbottom_n"

    .line 130
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v21, v2

    const-string v2, "bannerbottom"

    if-eqz v20, :cond_22

    .line 131
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->protected:Lorg/json/JSONObject;

    goto :goto_e

    .line 132
    :cond_22
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->protected:Lorg/json/JSONObject;

    :goto_e
    const-string v1, "bannerbottom_mh2_n"

    .line 133
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v22, v2

    const-string v2, "bannerbottom_mh2"

    if-eqz v20, :cond_23

    .line 134
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->interface:Lorg/json/JSONObject;

    goto :goto_f

    .line 135
    :cond_23
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->interface:Lorg/json/JSONObject;

    :goto_f
    const-string v1, "sddetaillist"

    move-object/from16 v20, v2

    .line 136
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->volatile:Lorg/json/JSONObject;

    const-string v2, "blocknative"

    move-object/from16 v23, v1

    .line 137
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    const-string v1, "bannerreadover"

    move-object/from16 v24, v2

    .line 138
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->continue:Lorg/json/JSONObject;

    const-string v2, "textlink"

    move-object/from16 v25, v1

    .line 139
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    const-string v1, "insertPagereadover"

    move-object/from16 v26, v2

    .line 140
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->package:Lorg/json/JSONObject;

    const-string v2, "myfootprint"

    move-object/from16 v27, v1

    .line 141
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->extends:Lorg/json/JSONObject;

    const-string v1, "bannerzhanwai"

    move-object/from16 v28, v2

    .line 142
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->default:Lorg/json/JSONObject;

    const-string v2, "rectbdetail"

    move-object/from16 v29, v1

    .line 143
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->throws:Lorg/json/JSONObject;

    const-string v1, "rectsddetail"

    move-object/from16 v30, v2

    .line 144
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->static:Lorg/json/JSONObject;

    const-string v2, "rectbsy1"

    move-object/from16 v31, v1

    .line 145
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->switch:Lorg/json/JSONObject;

    const-string v1, "rectznsearch"

    move-object/from16 v32, v2

    .line 146
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->return:Lorg/json/JSONObject;

    const-string v2, "rectzwsearch"

    move-object/from16 v33, v1

    .line 147
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->public:Lorg/json/JSONObject;

    const-string v1, "bannerlastpage2_n"

    .line 148
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    move-object/from16 v35, v2

    const-string v2, "bannerlastpage2"

    if-eqz v34, :cond_24

    .line 149
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->native:Lorg/json/JSONObject;

    goto :goto_10

    .line 150
    :cond_24
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->native:Lorg/json/JSONObject;

    :goto_10
    const-string v1, "insertstsw2_n"

    .line 151
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v34

    move-object/from16 v36, v2

    const-string v2, "insertstsw2"

    if-eqz v34, :cond_25

    .line 152
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->import:Lorg/json/JSONObject;

    goto :goto_11

    .line 153
    :cond_25
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->import:Lorg/json/JSONObject;

    :goto_11
    const-string v1, "swlpopup"

    move-object/from16 v34, v2

    .line 154
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->while:Lorg/json/JSONObject;

    const-string v2, "chaptersmid2_n"

    .line 155
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    move-object/from16 v38, v1

    const-string v1, "chaptersmid2"

    if-eqz v37, :cond_26

    .line 156
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    goto :goto_12

    .line 157
    :cond_26
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    :goto_12
    const-string v2, "chaptersmid_mh2_n"

    .line 158
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v37

    move-object/from16 v39, v1

    const-string v1, "chaptersmid_mh2"

    if-eqz v37, :cond_27

    .line 159
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    goto :goto_13

    .line 160
    :cond_27
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    :goto_13
    const-string v2, "chaptersVideos"

    move-object/from16 v37, v1

    .line 161
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->throw:Lorg/json/JSONObject;

    const-string v1, "readoverVideos"

    move-object/from16 v40, v2

    .line 162
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    const-string v2, "besttopad"

    move-object/from16 v41, v1

    .line 163
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->const:Lorg/json/JSONObject;

    const-string v1, "besttopad2"

    move-object/from16 v42, v2

    .line 164
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->class:Lorg/json/JSONObject;

    const-string v2, "bsinfonative"

    move-object/from16 v43, v1

    .line 165
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->this:Lorg/json/JSONObject;

    const-string v1, "bsinfonative_mh"

    move-object/from16 v44, v2

    .line 166
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->break:Lorg/json/JSONObject;

    const-string v2, "viewsptoread"

    move-object/from16 v45, v1

    .line 167
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->case:Lorg/json/JSONObject;

    const-string v1, "viewsptoread_mh"

    move-object/from16 v46, v2

    .line 168
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->else:Lorg/json/JSONObject;

    const-string v2, "page_rd_needgg"

    move-object/from16 v47, v1

    .line 169
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->goto:Lorg/json/JSONObject;

    const-string v1, "pupinsert"

    move-object/from16 v48, v2

    .line 170
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    const-string v2, "shelfrect"

    move-object/from16 v49, v1

    .line 171
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->k:Lorg/json/JSONObject;

    const-string v1, "dir_rect"

    move-object/from16 v50, v2

    .line 172
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    const-string v2, "dir_insert"

    move-object/from16 v51, v1

    .line 173
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    const-string v1, "page_web_insert"

    move-object/from16 v52, v2

    .line 174
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    .line 175
    iget-object v2, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 176
    iget-object v2, v0, Lcom/apk/finally;->j:Lorg/json/JSONObject;

    invoke-static {v5, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 177
    iget-object v2, v0, Lcom/apk/finally;->o:Lorg/json/JSONObject;

    invoke-static {v6, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 178
    iget-object v2, v0, Lcom/apk/finally;->p:Lorg/json/JSONObject;

    invoke-static {v7, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 179
    iget-object v2, v0, Lcom/apk/finally;->q:Lorg/json/JSONObject;

    invoke-static {v8, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 180
    iget-object v2, v0, Lcom/apk/finally;->h:Lorg/json/JSONObject;

    invoke-static {v9, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 181
    iget-object v2, v0, Lcom/apk/finally;->g:Lorg/json/JSONObject;

    invoke-static {v10, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 182
    iget-object v2, v0, Lcom/apk/finally;->f:Lorg/json/JSONObject;

    invoke-static {v11, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 183
    iget-object v2, v0, Lcom/apk/finally;->c:Lorg/json/JSONObject;

    invoke-static {v12, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 184
    iget-object v2, v0, Lcom/apk/finally;->d:Lorg/json/JSONObject;

    invoke-static {v13, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 185
    iget-object v2, v0, Lcom/apk/finally;->e:Lorg/json/JSONObject;

    invoke-static {v14, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 186
    iget-object v2, v0, Lcom/apk/finally;->b:Lorg/json/JSONObject;

    invoke-static {v15, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 187
    iget-object v2, v0, Lcom/apk/finally;->instanceof:Lorg/json/JSONObject;

    move-object/from16 v4, v16

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 188
    iget-object v2, v0, Lcom/apk/finally;->synchronized:Lorg/json/JSONObject;

    move-object/from16 v4, v17

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 189
    iget-object v2, v0, Lcom/apk/finally;->a:Lorg/json/JSONObject;

    move-object/from16 v4, v18

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 190
    iget-object v2, v0, Lcom/apk/finally;->implements:Lorg/json/JSONObject;

    move-object/from16 v4, v19

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 191
    iget-object v2, v0, Lcom/apk/finally;->transient:Lorg/json/JSONObject;

    move-object/from16 v4, v21

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 192
    iget-object v2, v0, Lcom/apk/finally;->protected:Lorg/json/JSONObject;

    move-object/from16 v4, v22

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 193
    iget-object v2, v0, Lcom/apk/finally;->interface:Lorg/json/JSONObject;

    move-object/from16 v4, v20

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    iget-object v2, v0, Lcom/apk/finally;->volatile:Lorg/json/JSONObject;

    move-object/from16 v4, v23

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 195
    iget-object v2, v0, Lcom/apk/finally;->strictfp:Lorg/json/JSONObject;

    move-object/from16 v4, v24

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 196
    iget-object v2, v0, Lcom/apk/finally;->continue:Lorg/json/JSONObject;

    move-object/from16 v4, v25

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 197
    iget-object v2, v0, Lcom/apk/finally;->abstract:Lorg/json/JSONObject;

    move-object/from16 v4, v26

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 198
    iget-object v2, v0, Lcom/apk/finally;->package:Lorg/json/JSONObject;

    move-object/from16 v4, v27

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 199
    iget-object v2, v0, Lcom/apk/finally;->extends:Lorg/json/JSONObject;

    move-object/from16 v4, v28

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 200
    iget-object v2, v0, Lcom/apk/finally;->default:Lorg/json/JSONObject;

    move-object/from16 v4, v29

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 201
    iget-object v2, v0, Lcom/apk/finally;->throws:Lorg/json/JSONObject;

    move-object/from16 v4, v30

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 202
    iget-object v2, v0, Lcom/apk/finally;->static:Lorg/json/JSONObject;

    move-object/from16 v4, v31

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 203
    iget-object v2, v0, Lcom/apk/finally;->switch:Lorg/json/JSONObject;

    move-object/from16 v4, v32

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 204
    iget-object v2, v0, Lcom/apk/finally;->return:Lorg/json/JSONObject;

    move-object/from16 v4, v33

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 205
    iget-object v2, v0, Lcom/apk/finally;->public:Lorg/json/JSONObject;

    move-object/from16 v4, v35

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 206
    iget-object v2, v0, Lcom/apk/finally;->native:Lorg/json/JSONObject;

    move-object/from16 v4, v36

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 207
    iget-object v2, v0, Lcom/apk/finally;->import:Lorg/json/JSONObject;

    move-object/from16 v4, v34

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 208
    iget-object v2, v0, Lcom/apk/finally;->while:Lorg/json/JSONObject;

    move-object/from16 v4, v38

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 209
    iget-object v2, v0, Lcom/apk/finally;->final:Lorg/json/JSONObject;

    move-object/from16 v4, v39

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 210
    iget-object v2, v0, Lcom/apk/finally;->super:Lorg/json/JSONObject;

    move-object/from16 v4, v37

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 211
    iget-object v2, v0, Lcom/apk/finally;->throw:Lorg/json/JSONObject;

    move-object/from16 v4, v40

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 212
    iget-object v2, v0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    move-object/from16 v4, v41

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 213
    iget-object v2, v0, Lcom/apk/finally;->const:Lorg/json/JSONObject;

    move-object/from16 v4, v42

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 214
    iget-object v2, v0, Lcom/apk/finally;->class:Lorg/json/JSONObject;

    move-object/from16 v4, v43

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 215
    iget-object v2, v0, Lcom/apk/finally;->this:Lorg/json/JSONObject;

    move-object/from16 v4, v44

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 216
    iget-object v2, v0, Lcom/apk/finally;->break:Lorg/json/JSONObject;

    move-object/from16 v4, v45

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 217
    iget-object v2, v0, Lcom/apk/finally;->case:Lorg/json/JSONObject;

    move-object/from16 v4, v46

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 218
    iget-object v2, v0, Lcom/apk/finally;->else:Lorg/json/JSONObject;

    move-object/from16 v4, v47

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 219
    iget-object v2, v0, Lcom/apk/finally;->goto:Lorg/json/JSONObject;

    move-object/from16 v4, v48

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 220
    iget-object v2, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    move-object/from16 v4, v49

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 221
    iget-object v2, v0, Lcom/apk/finally;->k:Lorg/json/JSONObject;

    move-object/from16 v4, v50

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 222
    iget-object v2, v0, Lcom/apk/finally;->try:Lorg/json/JSONObject;

    move-object/from16 v4, v51

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 223
    iget-object v2, v0, Lcom/apk/finally;->new:Lorg/json/JSONObject;

    move-object/from16 v4, v52

    invoke-static {v4, v2}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 224
    iget-object v0, v0, Lcom/apk/finally;->for:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/apk/i;->try(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_14

    :cond_28
    const/4 v1, 0x0

    .line 225
    throw v1

    :cond_29
    :goto_14
    const-string v0, "ad_pos_name"

    const-string v1, "get_monney_ads"

    .line 226
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2f

    const-string v1, "tslimit"

    .line 228
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_show_tgbtn"

    const-string v4, "clo"

    if-eqz v1, :cond_2b

    .line 229
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 230
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v5

    .line 231
    iget-boolean v5, v5, Lcom/apk/finally;->do:Z

    if-eqz v5, :cond_2a

    .line 232
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/apk/s0;->else(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 233
    :cond_2a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 234
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 235
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/apk/s0;->else(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_2b
    :goto_15
    const-string v1, "xz_tips_conf"

    .line 236
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 237
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 238
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v3

    .line 239
    iget-boolean v3, v3, Lcom/apk/finally;->do:Z

    if-eqz v3, :cond_2c

    .line 240
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/apk/s0;->case(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_16

    .line 241
    :cond_2c
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 243
    invoke-static {}, Lcom/apk/s0;->if()Lcom/apk/s0;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/apk/s0;->case(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_16

    :cond_2d
    const/4 v1, 0x0

    .line 244
    throw v1

    :cond_2e
    const/4 v1, 0x0

    .line 245
    throw v1

    :cond_2f
    :goto_16
    const/4 v1, 0x0

    .line 246
    :try_start_2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 248
    iget-object v0, v0, Lcom/apk/finally;->i:Lorg/json/JSONObject;

    goto :goto_17

    :cond_30
    move-object v0, v1

    :goto_17
    if-eqz v0, :cond_31

    .line 249
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 251
    sget-object v2, Lcom/apk/dg;->do:Ljava/util/Random;

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v0

    goto :goto_18

    :cond_31
    move-object v2, v1

    :goto_18
    if-eqz v2, :cond_32

    .line 253
    :try_start_3
    invoke-static {}, Lcom/apk/w0;->super()I

    move-result v0

    if-lez v0, :cond_32

    const-string v3, "SP_SAVE_SPLASH_AD_SHOW_MAX_KEY"

    .line 254
    invoke-static {v3}, Lcom/apk/w0;->final(Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v3, v0, :cond_32

    move-object v2, v1

    goto :goto_1a

    :catch_1
    move-exception v0

    goto :goto_19

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 255
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_1a
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/apk/g;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/o5;->if:Lcom/apk/q5;

    .line 4
    iget-object v0, v0, Lcom/apk/q5;->for:Lcom/apk/y5;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5
    check-cast v0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    invoke-virtual {v0, v1, p1}, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;->l(ZLcom/apk/g;)V

    :cond_0
    return-void
.end method
