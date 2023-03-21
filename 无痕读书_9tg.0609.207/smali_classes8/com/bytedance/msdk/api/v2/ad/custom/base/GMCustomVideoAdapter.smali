.class public abstract Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;
.super Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;
.source "GMCustomVideoAdapter.java"

# interfaces
.implements Lcom/bytedance/msdk/api/v2/ad/custom/base/IGMCustomLoadAdCall;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public abstract showAd(Landroid/app/Activity;)V
.end method

.method public final showAdInner(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomBaseAdapter;->do:Z

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/api/v2/ad/custom/base/GMCustomVideoAdapter;->showAd(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
