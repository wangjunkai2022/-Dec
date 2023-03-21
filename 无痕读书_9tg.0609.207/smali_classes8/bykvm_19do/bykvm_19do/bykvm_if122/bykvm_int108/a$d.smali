.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$d;
.super Ljava/lang/Object;
.source "InitADNHelper.java"

# interfaces
.implements Lcom/bytedance/msdk/adapter/config/IGMInitAdnResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/bytedance/msdk/api/AdError;)V
    .locals 0
    .param p1    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b()V

    return-void
.end method

.method public success()V
    .locals 0

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->b()V

    return-void
.end method
