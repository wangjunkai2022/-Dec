.class public Lcom/apk/switch;
.super Ljava/lang/Object;
.source "AdInsertHelper.java"


# static fields
.field public static goto:Lcom/apk/switch;


# instance fields
.field public case:Z

.field public do:J

.field public else:Lcom/swl/gg/ggs/SwlAdAdInsert;

.field public final for:Lcom/apk/v60;

.field public if:Z

.field public final new:Lcom/apk/z60;

.field public try:Lcom/apk/d60;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/switch$do;

    invoke-direct {v0, p0}, Lcom/apk/switch$do;-><init>(Lcom/apk/switch;)V

    iput-object v0, p0, Lcom/apk/switch;->for:Lcom/apk/v60;

    .line 3
    new-instance v0, Lcom/apk/switch$if;

    invoke-direct {v0, p0}, Lcom/apk/switch$if;-><init>(Lcom/apk/switch;)V

    iput-object v0, p0, Lcom/apk/switch;->new:Lcom/apk/z60;

    return-void
.end method

.method public static do(I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "SP_READ_END_VIDEO_AD_DATE_TODAY_KEY"

    const-string v2, ""

    .line 1
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SP_READ_END_VIDEO_AD_COUNT_TODAY_KEY"

    .line 3
    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-le v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static for()Lcom/apk/switch;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/switch;->goto:Lcom/apk/switch;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/switch;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/switch;->goto:Lcom/apk/switch;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/switch;

    invoke-direct {v1}, Lcom/apk/switch;-><init>()V

    sput-object v1, Lcom/apk/switch;->goto:Lcom/apk/switch;

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
    sget-object v0, Lcom/apk/switch;->goto:Lcom/apk/switch;

    return-object v0
.end method


# virtual methods
.method public final case(Landroid/app/Activity;Lcom/apk/g;Z)V
    .locals 12

    .line 1
    iget v0, p2, Lcom/apk/g;->for:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    .line 2
    :cond_0
    iget-wide v1, p0, Lcom/apk/switch;->do:J

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 3
    iput-wide v3, p0, Lcom/apk/switch;->do:J

    :cond_1
    const-string v0, "SP_READ_END_AD_SHOW_LAST_TIME_KEY"

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 6
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-wide v1, p0, Lcom/apk/switch;->do:J

    cmp-long v5, v3, v1

    if-gez v5, :cond_3

    return-void

    .line 7
    :cond_3
    invoke-virtual {p2}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {p2}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-static {v8}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result p2

    const-string v1, "other"

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 10
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object p1

    invoke-virtual {p1, v8, v9, v1}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v6

    iget-object v10, p0, Lcom/apk/switch;->for:Lcom/apk/v60;

    const-string v11, "other"

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/apk/c;->import(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/apk/v60;Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_5
    invoke-static {v8}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p3, :cond_6

    .line 13
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    invoke-virtual {p1, v8, v9, v1}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_6
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object p1

    iget-object p2, p0, Lcom/apk/switch;->new:Lcom/apk/z60;

    invoke-virtual {p1, v8, v9, p2, v1}, Lcom/apk/e;->import(Ljava/lang/String;Ljava/lang/String;Lcom/apk/z60;Ljava/lang/String;)V

    .line 15
    :cond_7
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {p2, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 18
    iget p2, p1, Lcom/apk/finally;->finally:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/apk/finally;->finally:I

    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/apk/f;->do:Z

    .line 3
    iget-object v0, v0, Lcom/apk/c;->goto:Ljava/util/Map;

    const-string v2, "other"

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    .line 6
    iput-boolean v1, v0, Lcom/apk/f;->do:Z

    .line 7
    iget-object v0, v0, Lcom/apk/e;->goto:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public new()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->private()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v0}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apk/switch;->do:J

    const/4 v2, 0x0

    const-string v3, "readShow"

    .line 6
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 7
    invoke-static {v0}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "showcounts"

    .line 9
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 10
    invoke-static {v0}, Lcom/apk/switch;->do(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v4, :cond_0

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/apk/finally;->finally:I

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v0, v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apk/g;

    .line 15
    :goto_0
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {p0, v1, v0, v2}, Lcom/apk/switch;->case(Landroid/app/Activity;Lcom/apk/g;Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v1, v0, v2}, Lcom/apk/switch;->case(Landroid/app/Activity;Lcom/apk/g;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public try(Landroid/app/Activity;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/finally;->private()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/finally;->private:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lcom/apk/finally;->e(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v0}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/apk/switch;->do:J

    .line 6
    invoke-static {v0}, Lcom/apk/finally;->try(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "showcounts"

    .line 8
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/apk/switch;->do(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    .line 10
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/apk/finally;->this(Ljava/util/List;)I

    move-result p1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/g;

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 12
    iget p1, p1, Lcom/apk/finally;->finally:I

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apk/g;

    .line 14
    :goto_0
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p1, v1}, Lcom/apk/switch;->case(Landroid/app/Activity;Lcom/apk/g;Z)V

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 17
    iget-object v2, v0, Lcom/apk/finally;->package:Lorg/json/JSONObject;

    const-string v3, "insertPagereadover"

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/apk/finally;->final()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v0, v0, Lcom/apk/finally;->package:Lorg/json/JSONObject;

    invoke-static {v0, v3}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_7

    .line 19
    invoke-static {v3}, Lcom/apk/i;->if(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/apk/finally;->goto(Lorg/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/switch;->do:J

    const-string v0, "SP_READ_END_AD_SHOW_LAST_TIME_KEY"

    const-string v1, ""

    .line 21
    invoke-static {v0, v1}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 23
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    iget-wide v1, p0, Lcom/apk/switch;->do:J

    cmp-long v6, v4, v1

    if-gez v6, :cond_4

    goto :goto_3

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/apk/switch;->try:Lcom/apk/d60;

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/apk/switch;->case:Z

    if-eqz v2, :cond_5

    .line 25
    invoke-virtual {v1, p1}, Lcom/apk/d60;->else(Landroid/app/Activity;)V

    goto :goto_2

    .line 26
    :cond_5
    new-instance v4, Lcom/apk/d60;

    new-instance v1, Lcom/apk/default;

    invoke-direct {v1, p0, p1}, Lcom/apk/default;-><init>(Lcom/apk/switch;Landroid/app/Activity;)V

    invoke-direct {v4, p1, v1, v3}, Lcom/apk/d60;-><init>(Landroid/app/Activity;Lcom/apk/w60;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/apk/switch;->try:Lcom/apk/d60;

    const/4 v9, 0x0

    .line 27
    invoke-static {}, Lcom/apk/q70;->do()Lcom/apk/q70;

    move-result-object p1

    iget-object v1, v4, Lcom/apk/p70;->do:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/apk/q70;->if(Ljava/lang/String;)Lcom/apk/c50;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 28
    invoke-virtual {p1}, Lcom/apk/c50;->if()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/apk/c50;->do()Ljava/lang/String;

    move-result-object v6

    .line 29
    iget v7, p1, Lcom/apk/c50;->for:I

    .line 30
    iget v8, p1, Lcom/apk/c50;->new:I

    .line 31
    invoke-virtual/range {v4 .. v9}, Lcom/apk/d60;->try(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 32
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 33
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v1, v0, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_7
    :goto_3
    return-void
.end method
