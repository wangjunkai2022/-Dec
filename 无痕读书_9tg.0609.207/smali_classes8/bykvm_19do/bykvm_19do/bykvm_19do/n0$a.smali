.class public Lbykvm_19do/bykvm_19do/bykvm_19do/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/n0;->a()Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b<",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/p1;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/n0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/n0$a;->b(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/p1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_19do/p1;

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/n0$a;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/p1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lbykvm_19do/bykvm_19do/bykvm_19do/p1;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/p1;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/p1;
    .locals 0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/p1$a;->a(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/p1;

    move-result-object p1

    return-object p1
.end method
