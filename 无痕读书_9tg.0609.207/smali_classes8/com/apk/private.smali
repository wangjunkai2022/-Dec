.class public Lcom/apk/private;
.super Lcom/apk/c1;
.source "AdShowPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/apk/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/abstract;


# direct methods
.method public constructor <init>(Lcom/apk/abstract;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/private;->do:Lcom/apk/abstract;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/finally;->while:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v3, 0x0

    const-string v4, "SP_HOME_HAIBAO_AD_INTERBAL_KEY"

    .line 4
    invoke-static {v4, v3}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/apk/g;

    goto :goto_0

    .line 11
    :cond_1
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/apk/g;

    :goto_0
    return-object v3
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/apk/g;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/private;->do:Lcom/apk/abstract;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object p1

    const-string v3, "swl"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    :try_start_0
    new-instance v2, Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-direct {v2}, Lcom/swl/gg/ggs/SwlAdPosters;-><init>()V

    iput-object v2, v0, Lcom/apk/abstract;->if:Lcom/swl/gg/ggs/SwlAdPosters;

    .line 8
    iget-object v0, v0, Lcom/apk/abstract;->do:Landroid/app/Activity;

    invoke-virtual {v2, v0, p1, v1}, Lcom/swl/gg/ggs/SwlAdPosters;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/apk/n40;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_HOME_HAIBAO_AD_INTERBAL_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 12
    :cond_1
    throw v1

    :cond_2
    :goto_1
    return-void
.end method
