.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f$a;
.super Ljava/lang/Object;
.source "LooperMessageManager.java"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;
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
.method public println(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ">>>>> Dispatching"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "<<<<< Finished"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->e()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->b(Ljava/lang/String;)V

    .line 5
    :cond_2
    :goto_0
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->b()Landroid/util/Printer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->b()Landroid/util/Printer;

    move-result-object v0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->c()Landroid/util/Printer;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 6
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_new1/f;->b()Landroid/util/Printer;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
