.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;
.super Ljava/lang/Object;
.source "SdkInitEventUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/v;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->a(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)I

    .line 3
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--==-- \u91cd\u8bd5\u4e00\u6b21 eventType:"

    .line 4
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->e(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-static {v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMe"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->b(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a$a;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/e$a;I)V

    :goto_1
    return-void
.end method
