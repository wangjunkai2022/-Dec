.class public Lcom/apk/d50;
.super Ljava/lang/Object;
.source "TrFrontBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/d50$do;
    }
.end annotation


# static fields
.field public static case:Lcom/apk/d50;


# instance fields
.field public do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/d50$do;",
            ">;"
        }
    .end annotation
.end field

.field public for:I

.field public if:Z

.field public new:Z

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/swl/gg/sdk/TrAdSdk;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/apk/e50;

    invoke-direct {v1, p0}, Lcom/apk/e50;-><init>(Lcom/apk/d50;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static do()Lcom/apk/d50;
    .locals 2

    .line 1
    sget-object v0, Lcom/apk/d50;->case:Lcom/apk/d50;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/apk/d50;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/apk/d50;->case:Lcom/apk/d50;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/apk/d50;

    invoke-direct {v1}, Lcom/apk/d50;-><init>()V

    sput-object v1, Lcom/apk/d50;->case:Lcom/apk/d50;

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
    sget-object v0, Lcom/apk/d50;->case:Lcom/apk/d50;

    return-object v0
.end method
