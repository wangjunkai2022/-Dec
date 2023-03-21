.class public Lcom/biquge/ebook/app/receiver/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryReceiver.java"


# instance fields
.field public do:I

.field public for:Lcom/apk/f1;

.field public if:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/apk/f1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->for:Lcom/apk/f1;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    :try_start_0
    const-string p1, "level"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v2, "scale"

    .line 4
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p1, v0, :cond_8

    if-eq p2, v0, :cond_8

    mul-int/lit8 p1, p1, 0x64

    .line 5
    :try_start_1
    div-int/2addr p1, p2

    .line 6
    iget p2, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->do:I

    if-eq p2, p1, :cond_8

    .line 7
    iput p1, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->do:I

    const-string p2, "battery_broadcast_value_action"

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->for:Lcom/apk/f1;

    if-eqz p1, :cond_8

    .line 10
    invoke-interface {p1}, Lcom/apk/f1;->interface()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.action.TIME_TICK"

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :try_start_3
    invoke-static {}, Lcom/apk/kg;->new()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->if:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 15
    invoke-static {}, Lcom/apk/kg;->new()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->if:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/biquge/ebook/app/receiver/BatteryReceiver;->for:Lcom/apk/f1;

    if-eqz p1, :cond_8

    .line 17
    invoke-interface {p1}, Lcom/apk/f1;->interface()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 20
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const-string p2, "activity"

    .line 21
    invoke-virtual {p1, p2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 22
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 25
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ne v0, v1, :cond_3

    .line 26
    iget-object p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 27
    sget-object p2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 28
    invoke-virtual {p2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_4
    :goto_0
    if-eqz v2, :cond_8

    .line 29
    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f100029

    .line 30
    invoke-static {p1}, Lcom/hjq/toast/ToastUtils;->show(I)V

    goto :goto_1

    :cond_5
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    .line 32
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_1

    :cond_6
    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "state"

    .line 34
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    .line 36
    :cond_7
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    :cond_8
    :goto_1
    return-void
.end method
