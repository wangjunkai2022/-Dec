.class public Lcom/bytedance/msdk/api/activity/TTDelegateActivity;
.super Landroid/app/Activity;
.source "TTDelegateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;
    }
.end annotation


# static fields
.field public static final INTENT_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final INTENT_TYPE:Ljava/lang/String; = "type"

.field public static final INTENT_TYPE_ALL_PERMISSIONS_CHECK:I = 0x3

.field public static final INTENT_TYPE_PERMISSIONS_CHECK:I = 0x1

.field public static final INTENT_TYPE_REQUEST_PERMISSION:I = 0x2

.field public static final PERMISSION_CONTENT_KEY:Ljava/lang/String; = "permission_content_key"

.field public static final PERMISSION_ID_KEY:Ljava/lang/String; = "permission_id_key"


# instance fields
.field public do:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static requestPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "permission_id_key"

    .line 4
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "permission_content_key"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$1;-><init>()V

    invoke-static {p0, v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c;->a(Landroid/content/Context;Landroid/content/Intent;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c$a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final do(I[I)V
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_5

    .line 7
    array-length p1, p2

    if-lez p1, :cond_5

    .line 8
    array-length p1, p2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_5

    aget v8, p2, v7

    if-ne v8, v6, :cond_2

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-ne v8, v5, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;

    move-result-object p2

    new-instance v0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$3;-><init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;)V

    invoke-virtual {p2, p0, p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a(Landroid/app/Activity;[Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 16
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_6
    const-string p1, "GM_Mediation_SDK"

    const-string p2, "\u5df2\u7ecf\u6709Read phone state\u6743\u9650"

    .line 17
    invoke-static {p1, p2}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;

    .line 7
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    iput-object p1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a(Landroid/app/Activity;[Ljava/lang/String;[I)V

    .line 2
    new-instance p1, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;

    invoke-direct {p1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$updateDeviceInfoRunnable;-><init>()V

    invoke-static {p1}, Lcom/bytedance/msdk/adapter/util/ThreadHelper;->runOnThreadPool(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do(I[I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;

    const-string v1, "permission_id_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;

    const-string v2, "permission_content_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    array-length v2, v1

    if-gtz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 10
    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;

    move-result-object v2

    new-instance v3, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity$2;-><init>(Lcom/bytedance/msdk/api/activity/TTDelegateActivity;Ljava/lang/String;)V

    invoke-virtual {v2, p0, v1, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/e;->a(Landroid/app/Activity;[Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    const-string v0, "GM_Mediation_SDK"

    const-string v1, "\u5df2\u7ecf\u6709\u6743\u9650"

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 15
    :cond_5
    iget-object v1, p0, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do:Landroid/content/Intent;

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/api/activity/TTDelegateActivity;->do(I[I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 17
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    :goto_1
    return-void
.end method
