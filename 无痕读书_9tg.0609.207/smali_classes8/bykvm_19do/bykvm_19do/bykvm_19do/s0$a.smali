.class public final Lbykvm_19do/bykvm_19do/bykvm_19do/s0$a;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/z0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/s0$a;->c([Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    move-result-object p1

    return-object p1
.end method

.method public varargs c([Ljava/lang/Object;)Lbykvm_19do/bykvm_19do/bykvm_19do/z0;
    .locals 2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/z0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
