.class public Lcom/biquge/ebook/app/receiver/RemoteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    const-string p2, "REFRESH_CHANGE_VOICE_KEY"

    .line 1
    invoke-static {p2, p1}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
