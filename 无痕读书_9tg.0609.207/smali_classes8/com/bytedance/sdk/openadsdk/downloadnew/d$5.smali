.class public final Lcom/bytedance/sdk/openadsdk/downloadnew/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/socialbase/downloader/depend/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/DownloaderBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/downloadnew/d;->d()Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/core/ITTDownloadVisitor;->getDownloadSettings()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method
