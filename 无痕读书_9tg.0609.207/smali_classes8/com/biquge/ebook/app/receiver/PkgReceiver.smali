.class public Lcom/biquge/ebook/app/receiver/PkgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PkgReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "package:"

    const-string v1, ""

    .line 4
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 8
    :cond_2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object p1

    .line 9
    iget-object p1, p1, Lcom/apk/continue;->this:Lcom/biquge/ebook/app/bean/MhtgTwoBean;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/MhtgTwoBean;->getPgname()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 12
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_MHTG2_INSTALL_TIME_KEY"

    invoke-virtual {p1, v3, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p1, "REFRESH_CARTOON_DOWNLOAD_KEY"

    .line 13
    invoke-static {p1, v0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_3
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/apk/p;->if:Lcom/biquge/ebook/app/bean/NewVersionBean;

    if-eqz p1, :cond_7

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/NewVersionBean;->getOther_pkg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-static {}, Lcom/apk/p;->for()Lcom/apk/p;

    move-result-object p1

    .line 18
    iget-object p2, p1, Lcom/apk/p;->for:Lcom/apk/p$new;

    if-eqz p2, :cond_4

    .line 19
    invoke-interface {p2}, Lcom/apk/p$new;->h()V

    .line 20
    :cond_4
    iget-object p2, p1, Lcom/apk/p;->new:Lcom/apk/p$new;

    if-eqz p2, :cond_5

    .line 21
    invoke-interface {p2}, Lcom/apk/p$new;->h()V

    .line 22
    :cond_5
    iget-object p1, p1, Lcom/apk/p;->try:Lcom/apk/p$new;

    if-eqz p1, :cond_6

    .line 23
    invoke-interface {p1}, Lcom/apk/p$new;->h()V

    .line 24
    :cond_6
    sput-object v0, Lcom/apk/p;->case:Lcom/apk/p;

    :cond_7
    return-void
.end method
