.class public Lcom/apk/v70;
.super Ljava/lang/Object;
.source "TrAnchePreference.java"


# static fields
.field public static for:Lcom/apk/v70;


# instance fields
.field public do:Landroid/content/SharedPreferences;

.field public if:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    .line 3
    iput-object v0, p0, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/v70;->do:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static if()Lcom/apk/v70;
    .locals 4

    .line 1
    sget-object v0, Lcom/apk/v70;->for:Lcom/apk/v70;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/v70;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/v70;->for:Lcom/apk/v70;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/v70;

    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v2

    const-string v3, "TR_AD_SP"

    invoke-direct {v1, v2, v3}, Lcom/apk/v70;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/apk/v70;->for:Lcom/apk/v70;

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
    sget-object v0, Lcom/apk/v70;->for:Lcom/apk/v70;

    return-object v0
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v70;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
