.class public Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lbykvm_19do/bykvm_19do/bykvm_19do/p0;


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/p0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/p0;

    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;->c([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public varargs c([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/p0;

    invoke-static {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->a(Lbykvm_19do/bykvm_19do/bykvm_19do/p0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/u0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
