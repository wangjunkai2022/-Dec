.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;
.super Ljava/lang/Object;
.source "OAIDHelper.java"


# static fields
.field public static volatile a:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string v0, "tt_device_info"

    .line 2
    :try_start_1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    const-string v1, "oaid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/z;->a:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_device_info"

    invoke-static {v1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->a(Ljava/lang/String;Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {v0, v1, p0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/c0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
