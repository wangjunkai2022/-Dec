.class public Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;
.source "TTDelegateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do(I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;->do:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------=----- onDenied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;->do:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGranted()V
    .locals 2

    const-string v0, "TMe"

    const-string v1, "-------=----- onGranted"

    .line 1
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;

    invoke-direct {v0}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;-><init>()V

    invoke-static {v0}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;->do:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
