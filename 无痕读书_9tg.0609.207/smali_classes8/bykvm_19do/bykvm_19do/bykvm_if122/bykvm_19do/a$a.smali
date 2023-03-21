.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$a;
.super Ljava/lang/Object;
.source "InternalContainer.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->a(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_for12/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a$a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/a;->d()Landroid/content/Context;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/y;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
