.class public final Lcom/apk/aq;
.super Ljava/lang/Object;
.source "DefaultConnectivityMonitor.java"

# interfaces
.implements Lcom/apk/yp;


# instance fields
.field public final do:Landroid/content/Context;

.field public for:Z

.field public final if:Lcom/apk/yp$do;

.field public new:Z

.field public final try:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apk/yp$do;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/yp$do;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/aq$do;

    invoke-direct {v0, p0}, Lcom/apk/aq$do;-><init>(Lcom/apk/aq;)V

    iput-object v0, p0, Lcom/apk/aq;->try:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/aq;->do:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/apk/aq;->if:Lcom/apk/yp$do;

    return-void
.end method


# virtual methods
.method public new(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    const/4 p1, 0x5

    const-string v1, "ConnectivityMonitor"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/apk/aq;->new:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/aq;->do:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/apk/aq;->new(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apk/aq;->for:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/apk/aq;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/apk/aq;->try:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/apk/aq;->new:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/aq;->new:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/aq;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/apk/aq;->try:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/apk/aq;->new:Z

    :goto_0
    return-void
.end method
