.class public Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;
.super Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;
.source "TTDelegateActivity.java"


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->if:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->do:Ljava/lang/String;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->do:Ljava/lang/String;

    invoke-static {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->if:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onGranted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->do:Ljava/lang/String;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/a;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;->if:Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
