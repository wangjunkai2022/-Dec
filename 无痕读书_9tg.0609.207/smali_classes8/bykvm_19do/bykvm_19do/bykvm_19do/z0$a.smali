.class public Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_19do/z0;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/z0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    iput-boolean p2, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    iget-boolean v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0$a;->a:Z

    invoke-static {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/z0;Z)V

    return-void
.end method
