.class public Lcom/biquge/ebook/app/app/BaiDuVoiceService;
.super Landroid/app/Service;
.source "BaiDuVoiceService.java"


# instance fields
.field public do:Landroid/app/NotificationManager;

.field public if:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final do(Ljava/lang/String;Z)Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/biquge/ebook/app/receiver/RemoteReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    .line 7
    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c01cc

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    const v3, 0x7f1000b0

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0903e7

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    const v3, 0x7f0903e5

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_0

    const p2, 0x7f080104

    goto :goto_0

    :cond_0
    const p2, 0x7f080103

    :goto_0
    const v2, 0x7f0903e6

    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 13
    new-instance p1, Landroidx/core/app/NotificationCompat$Builder;

    const-string p2, "BAIDU_FOREGROUNP_SERVICE_CHANNELID"

    invoke-direct {p1, p0, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 v1, 0x7f0e0000

    .line 14
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    .line 15
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    .line 19
    new-instance v1, Landroid/app/NotificationChannel;

    invoke-static {}, Lcom/apk/ze;->extends()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, p2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 20
    iget-object v3, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->do:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 21
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 23
    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 24
    iget-object p2, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->do:Landroid/app/NotificationManager;

    invoke-virtual {p2, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->do:Landroid/app/NotificationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "bookName"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "isPauseReadAloud"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p3

    const/4 p3, 0x0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "\u4eab\u53d7\u542c\u4e66\uff0c\u4eab\u53d7\u751f\u6d3b"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, p3

    move p3, p1

    move-object p1, v0

    move-object v0, v2

    .line 4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, p3

    move-object p3, v0

    :cond_1
    :goto_2
    const/4 v0, 0x1

    .line 5
    :try_start_2
    iget-object v1, p0, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->if:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, p3, p1}, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->do(Ljava/lang/String;Z)Landroid/app/Notification;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 7
    :cond_2
    :try_start_3
    invoke-virtual {p0, p3, p2}, Lcom/biquge/ebook/app/app/BaiDuVoiceService;->do(Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 8
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v0
.end method
