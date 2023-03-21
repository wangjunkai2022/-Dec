.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Z = true


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->d()V

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    const-string v0, "MCC"

    const-string v1, ""

    .line 1
    :try_start_0
    sget-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->a:Z

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->d()V

    .line 3
    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 4
    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->c:Ljava/lang/String;

    .line 5
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sMCC="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->e:Z

    if-nez v2, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMCC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const-string v3, "\u6709SIM\u5361"

    goto :goto_1

    :cond_2
    const-string v3, "\u65e0SIM\u5361,MCC\u8fd4\u56denull"

    :goto_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :cond_3
    return-object v3

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->d()V

    .line 3
    :cond_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static d()V
    .locals 8

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sput-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->e:Z

    goto :goto_0

    .line 6
    :cond_2
    sput-boolean v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-string v3, "MCC"

    .line 7
    :try_start_2
    sget-boolean v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    const-string v4, "\u6709SIM\u5361"

    goto :goto_1

    :cond_3
    const-string v4, "\u65e0SIM\u5361"

    :goto_1
    :try_start_3
    invoke-static {v3, v4}, Lcom/bytedance/msdk/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 8
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_2
    const/4 v3, 0x0

    .line 9
    :try_start_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-object v4, v3

    .line 10
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_4

    .line 11
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v7, 0x5

    if-ge v6, v7, :cond_5

    .line 12
    :cond_4
    :try_start_8
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 13
    :catchall_3
    :cond_5
    :try_start_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x4

    if-le v1, v6, :cond_6

    const/4 v1, 0x3

    .line 14
    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v3

    .line 16
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 17
    sput-object v4, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->b:Ljava/lang/String;

    .line 18
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 19
    sput-object v3, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->c:Ljava/lang/String;

    .line 20
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 21
    sput-object v1, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->d:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 22
    :catchall_4
    :cond_9
    sput-boolean v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/d0;->a:Z

    :cond_a
    return-void
.end method
