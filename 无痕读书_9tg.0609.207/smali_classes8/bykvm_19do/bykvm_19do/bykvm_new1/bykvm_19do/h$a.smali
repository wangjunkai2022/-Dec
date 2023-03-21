.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;
.super Ljava/lang/Object;
.source "Npth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/e;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a()Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;

    move-result-object v0

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_if122/a;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_byte12b/d;->a(Landroid/content/Context;)V

    .line 3
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->b:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/h$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;

    move-result-object v0

    invoke-virtual {v0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_19do/f;->a()V

    :cond_0
    return-void
.end method
