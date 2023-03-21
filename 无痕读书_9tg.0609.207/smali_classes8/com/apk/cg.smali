.class public Lcom/apk/cg;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static do:Lcom/apk/cg;

.field public static for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public static if:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lcom/apk/cg;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/cg;->do:Lcom/apk/cg;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/apk/cg;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/apk/cg;

    invoke-direct {v1}, Lcom/apk/cg;-><init>()V

    sput-object v1, Lcom/apk/cg;->do:Lcom/apk/cg;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/apk/cg;->do:Lcom/apk/cg;

    return-object v0
.end method


# virtual methods
.method public do(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/cg;->for:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public for(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    const-string v0, "notification"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/apk/cg;->for:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apk/cg;->for:Ljava/util/Map;

    .line 5
    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x1080081

    .line 6
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v3, 0x1

    .line 9
    invoke-virtual {p1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f100125

    invoke-static {v5}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/16 p3, 0x64

    .line 10
    invoke-virtual {p1, p3, v2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_3

    .line 12
    sget-object v4, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    const-string v5, "bqg_channel"

    if-eqz v4, :cond_2

    if-lt p1, p3, :cond_2

    .line 13
    new-instance p1, Landroid/app/NotificationChannel;

    const/4 p3, 0x4

    const-string v4, "bqg_channel_name"

    invoke-direct {p1, v5, v4, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 14
    invoke-virtual {p1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    new-array p3, v3, [J

    const-wide/16 v3, 0x0

    aput-wide v3, p3, v2

    .line 15
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 16
    invoke-virtual {p1, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    const/4 p3, 0x2

    .line 17
    invoke-virtual {p1, p3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 18
    sget-object p3, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    invoke-virtual {p3, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 19
    :cond_2
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    :cond_3
    sget-object p1, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 22
    :cond_4
    sget-object p1, Lcom/apk/cg;->for:Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method public new(III)V
    .locals 12

    .line 1
    sget-object v0, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    if-eqz v0, :cond_6

    .line 2
    sget-object v0, Lcom/apk/cg;->for:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_6

    int-to-long v1, p2

    int-to-float v3, p3

    const-string v4, "."

    const-string v5, ""

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    cmp-long v10, v1, v6

    if-ltz v10, :cond_2

    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_2

    long-to-float v6, v1

    cmpg-float v6, v6, v3

    if-gez v6, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v6, v3

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v6, v6, v10

    long-to-double v1, v1

    .line 3
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v6, Ljava/math/BigDecimal;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 5
    invoke-virtual {v3, v6, v8, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v1, "%"

    .line 10
    invoke-static {v5, v1}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v0, p2, p3, v9}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 12
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v1, 0x7f100135

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v5, v2, v9

    int-to-long v3, p3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/32 v7, 0x40000000

    const/4 p3, 0x1

    cmp-long v10, v3, v7

    if-ltz v10, :cond_3

    new-array v7, p3, [Ljava/lang/Object;

    long-to-double v3, v3

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "%.1fG"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    const-wide/32 v7, 0x100000

    cmp-long v10, v3, v7

    if-lez v10, :cond_4

    new-array v7, p3, [Ljava/lang/Object;

    long-to-double v3, v3

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "%.1fM"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-wide/16 v7, 0x400

    cmp-long v10, v3, v7

    if-lez v10, :cond_5

    new-array v7, p3, [Ljava/lang/Object;

    long-to-double v3, v3

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v7, v9

    const-string v3, "%.1fK"

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 16
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "B"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    aput-object v3, v2, p3

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 18
    sget-object p2, Lcom/apk/cg;->if:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_6
    return-void
.end method
