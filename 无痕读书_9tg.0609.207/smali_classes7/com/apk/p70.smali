.class public abstract Lcom/apk/p70;
.super Ljava/lang/Object;
.source "TrBaseAd.java"


# instance fields
.field public do:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/b70;)V
    .locals 2

    const-string v0, "activity\u6216\u8005\u5176\u5b83\u53c2\u6570\u4e3a\u7a7a"

    if-eqz p1, :cond_0

    const v1, 0x1443a

    .line 1
    invoke-interface {p1, v1, v0}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    return-void
.end method

.method public for(Lcom/apk/b70;)V
    .locals 2

    const-string v0, "\u6ca1\u6709\u7f51\u7edc"

    if-eqz p1, :cond_0

    const v1, 0x1443c

    .line 1
    invoke-interface {p1, v1, v0}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    return-void
.end method

.method public if(Lcom/apk/b70;)V
    .locals 2

    const-string v0, "no init\uff0cplease check..."

    if-eqz p1, :cond_0

    const v1, 0x14438

    .line 1
    invoke-interface {p1, v1, v0}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/apk/k40;->this(Ljava/lang/String;)V

    return-void
.end method

.method public new(IILcom/apk/b70;)Z
    .locals 9

    const/4 v0, 0x1

    const-string v1, "#"

    if-eqz p1, :cond_5

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    .line 1
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    const-string v4, "AD_STRATEGY_TYPE_REQ_INTERVAL_KEY"

    invoke-static {v2, v3, v1, v4}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 3
    invoke-static {v2, v5, v6}, Lcom/apk/g50;->if(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_2

    if-eqz p3, :cond_1

    .line 5
    invoke-interface {p3}, Lcom/apk/b70;->case()V

    :cond_1
    return v0

    .line 6
    :cond_2
    :try_start_0
    sget-object p1, Lcom/apk/g50;->do:Lcom/tencent/mmkv/MMKV;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Lcom/apk/v70;->if()Lcom/apk/v70;

    move-result-object p1

    .line 9
    iget-object v5, p1, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v5, :cond_4

    .line 10
    invoke-interface {v5, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/apk/v70;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_8

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/k40;->switch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apk/p70;->do:Ljava/lang/String;

    const-string v4, "AD_STRATEGY_TYPE_REQ_DAY_MAX_KEY"

    invoke-static {v2, v3, v1, v4}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1, p1}, Lcom/apk/g50;->do(Ljava/lang/String;I)I

    move-result v2

    if-lt v2, p2, :cond_7

    if-eqz p3, :cond_6

    .line 15
    invoke-interface {p3}, Lcom/apk/b70;->else()V

    :cond_6
    return v0

    :cond_7
    add-int/2addr v2, v0

    .line 16
    invoke-static {v1, v2}, Lcom/apk/g50;->new(Ljava/lang/String;I)V

    :cond_8
    return p1
.end method
