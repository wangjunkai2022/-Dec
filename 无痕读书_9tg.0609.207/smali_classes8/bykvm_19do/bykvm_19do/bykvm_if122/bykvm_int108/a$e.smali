.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;
.super Ljava/lang/Object;
.source "InitADNHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->a(Landroid/content/Context;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_int108/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->c(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a$e;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;->d(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_int108/a;Landroid/content/Context;)V

    return-void
.end method
