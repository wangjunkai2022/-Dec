.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;
.super Ljava/lang/Object;
.source "AdInitBaseADN.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b(Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;Ljava/util/Map;)V
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
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkInitializationFinished(Ljava/lang/Class;Lcom/bytedance/msdk/api/AdError;)V
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pangle"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/v;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 3
    :cond_0
    iget p1, p2, Lcom/bytedance/msdk/api/AdError;->code:I

    const/16 v0, 0x753b

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, ""

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;

    invoke-virtual {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/bykvm_19do/c;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "errorCode = "

    invoke-static {v2}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/bytedance/msdk/api/AdError;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/bytedance/msdk/api/AdError;->message:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Ljava/lang/String;Landroid/util/Pair;)V

    :goto_0
    return-void
.end method
