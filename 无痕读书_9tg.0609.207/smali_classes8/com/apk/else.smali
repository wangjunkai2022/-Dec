.class public Lcom/apk/else;
.super Ljava/lang/Object;
.source "TrAnalyticsSdk.java"


# direct methods
.method public static case(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0, v0}, Lcom/apk/else;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static do()Z
    .locals 16

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SP_ANALYTICS_ANALY_REPORT_SUCCESS_DATAS_KEY"

    const-string v3, ""

    .line 2
    invoke-static {v2, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "SP_ANALYTICS_SAVE_DATA_KEY"

    if-nez v4, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/else;->try()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6
    invoke-static {v4, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v4, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v4, v5, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 8
    :cond_0
    invoke-static {}, Lcom/apk/else;->try()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 11
    array-length v4, v0

    if-lez v4, :cond_a

    .line 12
    array-length v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v4, :cond_b

    aget-object v8, v0, v6

    .line 13
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 14
    :try_start_0
    invoke-static {}, Lcom/apk/ys;->do()Lcom/apk/pt;

    move-result-object v9

    .line 15
    invoke-static {}, Lcom/apk/ys;->if()Lcom/apk/qt;

    move-result-object v10

    .line 16
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "plateform"

    .line 17
    invoke-static {}, Lcom/apk/ze;->F()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "Harmony"

    goto :goto_1

    :cond_1
    const-string v13, "Android"

    :goto_1
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "pkg"

    .line 18
    iget-object v13, v9, Lcom/apk/pt;->if:Ljava/lang/String;

    if-nez v13, :cond_2

    move-object v13, v3

    .line 19
    :cond_2
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "app_name"

    .line 20
    iget-object v13, v9, Lcom/apk/pt;->do:Ljava/lang/String;

    if-nez v13, :cond_3

    move-object v13, v3

    .line 21
    :cond_3
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "app_type"

    const-string v13, "Novel"

    .line 22
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "device"

    const-string v13, "SP_DEVICE_UUID_KEY"

    .line 23
    invoke-static {v13, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 24
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 25
    invoke-static {}, Lcom/apk/eg;->throws()Ljava/lang/String;

    move-result-object v14

    .line 26
    sget-object v15, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v15, v13, v14}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    :cond_4
    invoke-virtual {v11, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "channel"

    .line 28
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "app_ver"

    .line 29
    iget-object v13, v9, Lcom/apk/pt;->for:Ljava/lang/String;

    if-nez v13, :cond_5

    move-object v13, v3

    .line 30
    :cond_5
    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v12, "app_build"

    .line 31
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget v9, v9, Lcom/apk/pt;->new:I

    .line 33
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "sys_ver"

    .line 34
    invoke-static {}, Lcom/apk/ze;->o()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "vendor"

    .line 35
    iget-object v12, v10, Lcom/apk/qt;->else:Ljava/lang/String;

    .line 36
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "model"

    .line 37
    iget-object v12, v10, Lcom/apk/qt;->case:Ljava/lang/String;

    .line 38
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "device_name"

    .line 39
    iget-object v12, v10, Lcom/apk/qt;->new:Ljava/lang/String;

    .line 40
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mac"

    .line 41
    iget-object v12, v10, Lcom/apk/qt;->for:Ljava/lang/String;

    .line 42
    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "oaid"

    .line 43
    invoke-static {}, Lcom/apk/eg;->public()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "imei"

    .line 44
    iget-object v10, v10, Lcom/apk/qt;->do:Ljava/lang/String;

    .line 45
    invoke-virtual {v11, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "activeTime"

    .line 46
    invoke-virtual {v11, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SP_ANALYTICS_REPORT_HOST_KEY"

    .line 48
    invoke-static {v10, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v10, "http://tj.apphaiwangxing.com"

    .line 50
    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/api/client-reporting/active"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 51
    new-instance v10, Lcom/apk/ly;

    invoke-direct {v10, v9}, Lcom/apk/ly;-><init>(Ljava/lang/String;)V

    .line 52
    iput-object v9, v10, Lcom/apk/qy;->new:Ljava/lang/Object;

    const-string v9, "Content-Type"

    const-string v12, "application/json; charset=utf-8"

    .line 53
    iget-object v13, v10, Lcom/apk/qy;->break:Lcom/apk/fy;

    invoke-virtual {v13, v9, v12}, Lcom/apk/fy;->for(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 54
    iput-boolean v9, v10, Lcom/apk/my;->while:Z

    .line 55
    invoke-virtual {v10, v11}, Lcom/apk/my;->final(Lorg/json/JSONObject;)Lcom/apk/my;

    .line 56
    invoke-virtual {v10}, Lcom/apk/qy;->for()Lcom/apk/ch0;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 57
    invoke-virtual {v9}, Lcom/apk/ch0;->throw()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v9

    .line 58
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    .line 59
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_2
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_8

    .line 60
    invoke-static {v8, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-static {v2, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-static {v9, v8}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 63
    sget-object v10, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v10, v2, v9}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-static {}, Lcom/apk/else;->try()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 65
    sget-object v9, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v9, v5, v8}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :cond_9
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x1

    :cond_b
    return v7
.end method

.method public static else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lcom/apk/else;->new(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lcom/biquge/ebook/app/bean/CacheBean;

    invoke-direct {v1}, Lcom/biquge/ebook/app/bean/CacheBean;-><init>()V

    .line 4
    invoke-virtual {v1, p0}, Lcom/biquge/ebook/app/bean/CacheBean;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/biquge/ebook/app/bean/CacheBean;->setTime(J)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Lcom/biquge/ebook/app/bean/CacheBean;->setData(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {v1, p2}, Lcom/biquge/ebook/app/bean/CacheBean;->setLastModified(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Lorg/litepal/crud/LitePalSupport;->save()Z

    goto :goto_1

    .line 9
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "url"

    .line 10
    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p1, :cond_3

    const-string v2, "data"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "lastModified"

    .line 13
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    const-class p1, Lcom/biquge/ebook/app/bean/CacheBean;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const-string v2, "url = ?"

    aput-object v2, p2, v0

    aput-object p0, p2, p3

    invoke-static {p1, v1, p2}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p3, 0x0

    :goto_1
    return p3
.end method

.method public static for(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/CacheBean;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/apk/else;->new(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/CacheBean;

    move-result-object p0

    return-object p0
.end method

.method public static if(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "gdt_plugin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 6
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    nop

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 7
    invoke-static {}, Lcom/apk/ze;->abstract()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 9
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_4
    return-void
.end method

.method public static new(Ljava/lang/String;Z)Lcom/biquge/ebook/app/bean/CacheBean;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0}, Lcom/jni/crypt/project/CryptDesManager;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p1, 0x2

    :try_start_0
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url = ?"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 2
    invoke-static {p1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p0

    const-class p1, Lcom/biquge/ebook/app/bean/CacheBean;

    invoke-virtual {p0, p1}, Lorg/litepal/FluentQuery;->findFirst(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/biquge/ebook/app/bean/CacheBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static try()Ljava/lang/String;
    .locals 2

    const-string v0, "SP_ANALYTICS_SAVE_DATA_KEY"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
