.class public final Lcom/apk/ea0;
.super Lcom/apk/ab0;
.source "TrCommentManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ab0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/ab0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/fa0;->static()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/ja0;->goto()V

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/apk/fa0;->break()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/apk/xw;->if:Lcom/apk/xw;

    invoke-static {v0, v1, v2, v3}, Lcom/apk/ja0;->for(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/apk/fa0;->break()Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_9

    const-string v1, "data"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "thiscloud"

    .line 7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v2

    check-cast v2, Lcom/apk/mb0;

    .line 10
    iget-object v3, v2, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_2

    const-string v4, "SP_CLOUD_CONFIG_HOST_KEY"

    .line 11
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    :cond_2
    invoke-virtual {v2}, Lcom/apk/mb0;->do()V

    :cond_3
    const-string v1, "tokenhost"

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 15
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v2

    check-cast v2, Lcom/apk/mb0;

    .line 16
    iget-object v3, v2, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_4

    const-string v4, "SP_GET_TOKEN_HOST_KEY"

    .line 17
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    :cond_4
    invoke-virtual {v2}, Lcom/apk/mb0;->do()V

    :cond_5
    const-string v1, "dynamichost"

    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 21
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v2

    check-cast v2, Lcom/apk/mb0;

    .line 22
    iget-object v3, v2, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_6

    const-string v4, "SP_DYNAMIC_HOST_KEY"

    .line 23
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    :cond_6
    invoke-virtual {v2}, Lcom/apk/mb0;->do()V

    :cond_7
    const-string v1, "statichost"

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 27
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v1

    check-cast v1, Lcom/apk/mb0;

    .line 28
    iget-object v2, v1, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v2, :cond_8

    const-string v3, "SP_STATIC_HOST_KEY"

    .line 29
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    :cond_8
    invoke-virtual {v1}, Lcom/apk/mb0;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
