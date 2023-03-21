.class public Lcom/apk/g50;
.super Ljava/lang/Object;
.source "TrSpManager.java"


# static fields
.field public static do:Lcom/tencent/mmkv/MMKV;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    sput-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static do(Ljava/lang/String;I)I
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static for(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->decodeBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return p1
.end method

.method public static if(Ljava/lang/String;J)J
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-wide p1

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide p1
.end method

.method public static new(Ljava/lang/String;I)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/apk/v70;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static try(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/apk/v70;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
