.class public Lcom/ss/android/downloadlib/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/downloadad/api/b;


# static fields
.field public static a:Ljava/lang/String; = "b"

.field public static volatile b:Lcom/ss/android/downloadlib/b;


# instance fields
.field public c:Lcom/ss/android/downloadlib/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    return-void
.end method

.method public static a(Z)Lcom/ss/android/download/api/download/DownloadController;
    .locals 3

    .line 49
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;-><init>()V

    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setLinkMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableBackDialog(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setIsEnableMultipleDownload(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setShouldUseNewWebView(Z)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    move-result-object v0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 54
    invoke-virtual {v0, p0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->setDownloadMode(I)Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;

    .line 56
    :goto_0
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadController$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/ss/android/downloadlib/b;
    .locals 2

    .line 3
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/ss/android/downloadlib/b;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/ss/android/downloadlib/b;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/b;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/b;->b:Lcom/ss/android/downloadlib/b;

    return-object v0
.end method

.method public static synthetic a(Lcom/ss/android/downloadlib/b;)Lcom/ss/android/downloadlib/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    return-object p0
.end method

.method public static synthetic a(Lcom/ss/android/downloadlib/b;Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/downloadlib/b;->b(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/ss/android/download/api/download/DownloadController;
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
    .locals 14

    move-object/from16 v6, p3

    move-object/from16 v0, p5

    .line 26
    invoke-static/range {p2 .. p2}, Lcom/ss/android/download/api/c/a;->a(Landroid/net/Uri;)Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_0

    return v7

    .line 27
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "disable_market"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    return v7

    :cond_1
    if-nez p1, :cond_2

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_2
    move-object v9, p1

    .line 29
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/ss/android/download/api/c/a;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    if-nez v6, :cond_4

    .line 30
    invoke-static {v9, v10}, Lcom/ss/android/downloadlib/g/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/downloadlib/addownload/b/g;->getType()I

    move-result v0

    if-ne v0, v11, :cond_3

    const/4 v7, 0x1

    :cond_3
    return v7

    .line 31
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, v6, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v1, :cond_5

    .line 32
    move-object v1, v6

    check-cast v1, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual {v1, v10}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setPackageName(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    :cond_5
    const/4 v12, 0x2

    if-eqz v0, :cond_6

    .line 33
    invoke-interface {v0, v12}, Lcom/ss/android/download/api/download/DownloadController;->setDownloadMode(I)V

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 34
    :cond_6
    instance-of v0, v6, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    if-eqz v0, :cond_7

    invoke-interface/range {p3 .. p3}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 35
    move-object v0, v6

    check-cast v0, Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadModel;->setDownloadUrl(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    .line 36
    invoke-static {v8}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 37
    :cond_7
    invoke-interface/range {p3 .. p3}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-static {v8}, Lcom/ss/android/downloadlib/b;->a(Z)Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_8
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v0

    goto :goto_1

    .line 40
    :goto_2
    new-instance v13, Lcom/ss/android/downloadlib/addownload/b/e;

    invoke-interface/range {p3 .. p3}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v1

    new-array v0, v12, [Lcom/ss/android/download/api/download/DownloadEventConfig;

    aput-object p4, v0, v7

    .line 41
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v3

    aput-object v3, v0, v8

    invoke-static {v0}, Lcom/ss/android/downloadlib/g/l;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-object v0, v13

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/downloadlib/addownload/b/e;-><init>(JLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    .line 42
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-object v1, v13, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/download/api/download/DownloadModel;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/b/f;->a(Lcom/ss/android/download/api/download/DownloadModel;)V

    .line 43
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, v13, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    iget-object v3, v13, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadEventConfig;)V

    .line 44
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    iget-wide v1, v13, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    iget-object v3, v13, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/download/api/download/DownloadController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(JLcom/ss/android/download/api/download/DownloadController;)V

    .line 45
    invoke-static/range {p3 .. p3}, Lcom/ss/android/downloadlib/g/l;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/ss/android/socialbase/downloader/g/a;->c()Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    const-string v1, "app_link_opt"

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/g/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 46
    invoke-static {v13}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/downloadlib/addownload/b/e;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v8

    .line 47
    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market_url"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_scene"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "market_click_open"

    invoke-virtual {v1, v2, v0, v13}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    .line 51
    invoke-static {v9, v13, v10}, Lcom/ss/android/downloadlib/g/i;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/e;Ljava/lang/String;)Lcom/ss/android/downloadlib/addownload/b/g;

    move-result-object v1

    new-array v2, v12, [Ljava/lang/String;

    .line 52
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const-string v3, "open_market"

    aput-object v3, v2, v8

    invoke-static {v2}, Lcom/ss/android/downloadlib/g/l;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->getType()I

    move-result v3

    if-ne v3, v11, :cond_a

    .line 54
    invoke-static {v2, v0, v13, v8}, Lcom/ss/android/downloadlib/b/a;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadlib/addownload/b/e;Z)V

    return v8

    .line 55
    :cond_a
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    .line 56
    invoke-virtual {v1}, Lcom/ss/android/downloadlib/addownload/b/g;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error_code"

    invoke-static {v0, v2, v1}, Lcom/ss/android/downloadlib/g/l;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v1

    const-string v2, "market_open_failed"

    invoke-virtual {v1, v2, v0, v13}, Lcom/ss/android/downloadlib/d/a;->b(Ljava/lang/String;Lorg/json/JSONObject;Lcom/ss/android/downloadad/api/a/a;)V

    move-object/from16 v0, p6

    .line 58
    invoke-static {v6, v0}, Lcom/ss/android/downloadlib/addownload/h;->a(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 59
    invoke-interface/range {p6 .. p6}, Lcom/ss/android/download/api/config/IDownloadButtonClickListener;->handleMarketFailedComplianceDialog()V

    :cond_b
    return v7

    :cond_c
    return v8
.end method

.method public static c()Lcom/ss/android/download/api/download/DownloadEventConfig;
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    const-string v1, "landing_h5_download_ad_button"

    .line 2
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickItemTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "click_start_detail"

    .line 4
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "click_pause_detail"

    .line 5
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "click_continue_detail"

    .line 6
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "click_install_detail"

    .line 7
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "click_open_detail"

    .line 8
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickOpenLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const-string v1, "storage_deny_detail"

    .line 9
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setDownloadScene(I)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableNoChargeClickEvent(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;I)Landroid/app/Dialog;
    .locals 10
    .param p4    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 9
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/downloadlib/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZ)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;ILcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 11
    .param p4    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    .line 10
    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/downloadlib/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZ)Landroid/app/Dialog;
    .locals 11
    .param p4    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 11
    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/downloadlib/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 13
    .param p4    # Lcom/ss/android/download/api/download/DownloadModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    new-instance v12, Lcom/ss/android/downloadlib/b$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/downloadlib/b$1;-><init>(Lcom/ss/android/downloadlib/b;Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v12}, Lcom/ss/android/downloadlib/e/b;->a(Lcom/ss/android/downloadlib/e/b$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public a(J)V
    .locals 11

    .line 24
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->af()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->b(J)Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    .line 28
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->c(J)Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    .line 29
    instance-of v4, v2, Lcom/ss/android/download/api/download/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v2, v5

    .line 30
    :cond_2
    instance-of v4, v3, Lcom/ss/android/download/api/download/b;

    if-eqz v4, :cond_3

    move-object v3, v5

    :cond_3
    if-nez v1, :cond_5

    if-nez v2, :cond_4

    .line 31
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v2

    :cond_4
    if-nez v3, :cond_7

    .line 32
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v3

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    .line 33
    new-instance v2, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    invoke-direct {v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;-><init>()V

    .line 34
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickButtonTag(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setRefer(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->m()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableV3Event(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setIsEnableClickEvent(Z)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_start_detail"

    .line 38
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickStartLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_pause_detail"

    .line 39
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickPauseLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_continue_detail"

    .line 40
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickContinueLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "click_install_detail"

    .line 41
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setClickInstallLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    const-string v4, "storage_deny_detail"

    .line 42
    invoke-virtual {v2, v4}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->setStorageDenyLabel(Ljava/lang/String;)Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig$Builder;->build()Lcom/ss/android/downloadad/api/download/AdDownloadEventConfig;

    move-result-object v2

    :cond_6
    if-nez v3, :cond_7

    .line 44
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->ah()Lcom/ss/android/downloadad/api/download/AdDownloadController;

    move-result-object v3

    :cond_7
    :goto_0
    move-object v9, v2

    move-object v10, v3

    const/4 v1, 0x1

    .line 45
    invoke-interface {v9, v1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    .line 46
    iget-object v4, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    move-wide v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    return-void
.end method

.method public a(JLcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 9

    .line 17
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/ss/android/downloadad/api/a/b;->af()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 20
    instance-of v1, p3, Lcom/ss/android/download/api/download/c;

    if-nez v1, :cond_3

    instance-of v1, p4, Lcom/ss/android/download/api/download/b;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 21
    invoke-interface {p3, v1}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    .line 22
    iget-object v2, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-interface {v0}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    move-wide v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    return-void

    .line 23
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/downloadlib/b;->a(J)V

    return-void
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;I)Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 14
    iget-object p2, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-virtual {p4}, Lcom/ss/android/downloadad/api/a/b;->af()Lcom/ss/android/downloadad/api/download/AdDownloadModel;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p5, p3}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 16
    iget-object p3, p0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-virtual {p3, p1, p6, p5, p2}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/downloadlib/b;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)Z
    .locals 9

    .line 48
    new-instance v8, Lcom/ss/android/downloadlib/b$3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/downloadlib/b$3;-><init>(Lcom/ss/android/downloadlib/b;Landroid/content/Context;Landroid/net/Uri;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    invoke-static {v8}, Lcom/ss/android/downloadlib/e/b;->a(Lcom/ss/android/downloadlib/e/b$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;ZLcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/download/DownloadStatusChangeListener;IZLcom/ss/android/download/api/config/IDownloadButtonClickListener;)Landroid/app/Dialog;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    .line 1
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/ss/android/downloadlib/b;->b(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    if-eqz p9, :cond_0

    .line 2
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p5, v4}, Lcom/ss/android/downloadlib/b;->a(JLcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/downloadlib/b;->a(J)V

    :goto_0
    return-object v6

    :cond_1
    if-eqz v1, :cond_6

    .line 4
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    .line 5
    :cond_2
    iget-object v5, v0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual {v5, p1, v8, v7, p4}, Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;ILcom/ss/android/download/api/download/DownloadStatusChangeListener;Lcom/ss/android/download/api/download/DownloadModel;)V

    const/4 v5, 0x2

    new-array v7, v5, [Lcom/ss/android/download/api/download/DownloadEventConfig;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    .line 6
    invoke-static {}, Lcom/ss/android/downloadlib/b;->c()Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object v3

    const/4 v9, 0x1

    aput-object v3, v7, v9

    invoke-static {v7}, Lcom/ss/android/downloadlib/g/l;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/download/api/download/DownloadEventConfig;

    new-array v5, v5, [Lcom/ss/android/download/api/download/DownloadController;

    aput-object v4, v5, v8

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/b;->b()Lcom/ss/android/download/api/download/DownloadController;

    move-result-object v4

    aput-object v4, v5, v9

    invoke-static {v5}, Lcom/ss/android/downloadlib/g/l;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/download/api/download/DownloadController;

    .line 8
    invoke-interface {v3, v9}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    .line 9
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->i()Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "disable_lp_dialog"

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v5, p3

    .line 10
    invoke-interface {v4}, Lcom/ss/android/download/api/download/DownloadController;->enableShowComplianceDialog()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a()Lcom/ss/android/downloadlib/addownload/compliance/b;

    move-result-object v7

    invoke-virtual {v7, p4}, Lcom/ss/android/downloadlib/addownload/compliance/b;->a(Lcom/ss/android/download/api/download/DownloadModel;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v5

    :goto_2
    if-eqz v9, :cond_5

    .line 12
    iget-object v1, v0, Lcom/ss/android/downloadlib/b;->c:Lcom/ss/android/downloadlib/g;

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getId()J

    move-result-wide v7

    const/4 v2, 0x2

    move-object p1, v1

    move-object p2, v5

    move-wide p3, v7

    move p5, v2

    move-object/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p8, p10

    invoke-virtual/range {p1 .. p8}, Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;JILcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-object v6

    .line 13
    :cond_5
    sget-object v5, Lcom/ss/android/downloadlib/b;->a:Ljava/lang/String;

    const-string v7, "tryStartDownload show dialog appName:"

    invoke-static {v7}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/ss/android/downloadlib/g/k;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/j;->c()Lcom/ss/android/download/api/config/k;

    move-result-object v5

    new-instance v6, Lcom/ss/android/download/api/model/b$a;

    invoke-direct {v6, p1}, Lcom/ss/android/download/api/model/b$a;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-interface {p4}, Lcom/ss/android/download/api/download/DownloadModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/ss/android/download/api/model/b$a;->a(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    const-string v6, "\u786e\u8ba4\u8981\u4e0b\u8f7d\u6b64\u5e94\u7528\u5417\uff1f"

    .line 16
    invoke-virtual {v1, v6}, Lcom/ss/android/download/api/model/b$a;->b(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    const-string v6, "\u786e\u8ba4"

    .line 17
    invoke-virtual {v1, v6}, Lcom/ss/android/download/api/model/b$a;->c(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    const-string v6, "\u53d6\u6d88"

    .line 18
    invoke-virtual {v1, v6}, Lcom/ss/android/download/api/model/b$a;->d(Ljava/lang/String;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    new-instance v6, Lcom/ss/android/downloadlib/b$2;

    invoke-direct {v6, p0, p4, v3, v4}, Lcom/ss/android/downloadlib/b$2;-><init>(Lcom/ss/android/downloadlib/b;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    .line 19
    invoke-virtual {v1, v6}, Lcom/ss/android/download/api/model/b$a;->a(Lcom/ss/android/download/api/model/b$b;)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v8}, Lcom/ss/android/download/api/model/b$a;->a(I)Lcom/ss/android/download/api/model/b$a;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/ss/android/download/api/model/b$a;->a()Lcom/ss/android/download/api/model/b;

    move-result-object v1

    .line 22
    invoke-interface {v5, v1}, Lcom/ss/android/download/api/config/k;->b(Lcom/ss/android/download/api/model/b;)Landroid/app/Dialog;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v5

    const-string v6, "landing_download_dialog_show"

    invoke-virtual {v5, v6, p4, v3, v4}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V

    return-object v1

    :cond_6
    :goto_3
    return-object v6
.end method

.method public b(J)Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->a(J)Lcom/ss/android/download/api/download/DownloadModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Lcom/ss/android/downloadlib/addownload/b/f;->a()Lcom/ss/android/downloadlib/addownload/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/downloadlib/addownload/b/f;->d(J)Lcom/ss/android/downloadad/api/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
