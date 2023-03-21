.class public final Lcom/apk/case;
.super Ljava/lang/Object;
.source "TrAnalyticsSdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v0, 0xa

    .line 1
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v0, 0x1388

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_2

    add-int/2addr v3, v0

    .line 3
    invoke-static {}, Lcom/apk/else;->do()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "SP_ANALYTICS_REPORT_REQ_MAX_KEY"

    const/4 v5, 0x3

    .line 4
    invoke-static {v4, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const-string v4, "SP_ANALYTICS_REPORT_REQ_INTERVAL_KEY"

    const/16 v5, 0xf

    .line 5
    invoke-static {v4, v5}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
