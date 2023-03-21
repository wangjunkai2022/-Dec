.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;
.super Ljava/lang/Object;
.source "PreLoadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->b:Ljava/lang/String;

    iput p4, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->d:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->b:Ljava/lang/String;

    iget v3, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b$a;->c:I

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4, v3}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;->a(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_for12/bykvm_if122/b;Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
