.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/v0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/v0;->f(Landroid/content/Context;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b<",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/h1;",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbykvm_19do/bykvm_19do/bykvm_19do/h1;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/h1;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h1;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h1;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 5
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$b;->b(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lbykvm_19do/bykvm_19do/bykvm_19do/h1;

    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$b;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/h1;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/h1;
    .locals 0

    .line 1
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/h1$a;->a(Landroid/os/IBinder;)Lbykvm_19do/bykvm_19do/bykvm_19do/h1;

    move-result-object p1

    return-object p1
.end method
