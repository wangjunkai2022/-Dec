.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;
.super Ljava/lang/Object;
.source "AdInitBaseADN.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 5
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->fail(Lcom/bytedance/msdk/api/AdError;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "errorCode = "

    invoke-static {v3}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " errorMessage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    :cond_1
    return-void
.end method

.method public success()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;)Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;->success()V

    .line 3
    :cond_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/v;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 5
    :cond_1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method
