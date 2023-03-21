.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p$d;
.super Ljava/lang/Object;
.source "GMAppLogUtil.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->f()V
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
.method public a(Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;)V
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "applod ------------: oaid = "

    .line 3
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK_SDK_Init"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lbykvm_19do/bykvm_19do/bykvm_19do/e$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/p;->c(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method
