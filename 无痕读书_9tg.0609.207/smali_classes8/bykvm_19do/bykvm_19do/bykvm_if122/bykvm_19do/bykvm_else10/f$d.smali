.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f$d;
.super Ljava/lang/Object;
.source "PermissionsResultAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;->a(Ljava/lang/String;Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/d;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f$d;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;

    iput-object p2, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f$d;->b:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;

    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_else10/f;->onDenied(Ljava/lang/String;)V

    return-void
.end method
