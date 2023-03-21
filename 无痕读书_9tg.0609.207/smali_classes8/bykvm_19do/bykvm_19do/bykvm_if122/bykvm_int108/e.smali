.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;
.super Ljava/lang/Object;
.source "SdkInitEventUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

.field public static c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;


# direct methods
.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JII)V
    .locals 7

    .line 4
    new-instance v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const-string v1, "sdk_init_end"

    move-object v0, v6

    move-wide v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;-><init>(Ljava/lang/String;JII)V

    sput-object v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    .line 5
    invoke-static {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 3
    sput-object p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_device_info"

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    const-string v1, "did"

    .line 4
    invoke-virtual {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_device_info"

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    const-string v1, "did"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 3

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_device_info"

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    const-string v1, "did"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static e()V
    .locals 7

    .line 1
    new-instance v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const-string v1, "sdk_init"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;-><init>(Ljava/lang/String;JII)V

    sput-object v6, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    .line 2
    invoke-static {v6}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V

    return-void
.end method

.method public static f()V
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const-string v1, "TMe"

    if-nez v0, :cond_0

    const-string v0, "--==-- sdkInit\u57cb\u70b9\u8fd8\u672a\u4ea7\u751f\uff0capplog\u56de\u8c03\u5df2\u89e6\u53d1\uff0c\u76f4\u63a5return"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "--==-- applog\u56de\u8c03\u89e6\u53d1\u65f6\uff0csdkInit\u57cb\u70b9\u5df2\u7ecf\u4e0a\u62a5\uff0c\u76f4\u63a5return"

    .line 4
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    return-void

    .line 6
    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;I)V

    .line 7
    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    return-void
.end method

.method public static g()V
    .locals 3

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const-string v1, "TMe"

    if-nez v0, :cond_0

    const-string v0, "--==-- sdkInitEnd\u57cb\u70b9\u8fd8\u672a\u4ea7\u751f\uff0capplog\u56de\u8c03\u5df2\u89e6\u53d1\uff0c\u76f4\u63a5return"

    .line 2
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, "--==-- applog\u56de\u8c03\u89e6\u53d1\u65f6\uff0csdkInitEnd\u57cb\u70b9\u5df2\u7ecf\u4e0a\u62a5\uff0c\u76f4\u63a5return"

    .line 4
    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    return-void

    .line 6
    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;I)V

    .line 7
    sput-object v2, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->c:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    return-void
.end method
