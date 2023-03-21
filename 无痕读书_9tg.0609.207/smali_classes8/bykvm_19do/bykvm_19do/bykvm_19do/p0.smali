.class public abstract Lbykvm_19do/bykvm_19do/bykvm_19do/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_19do/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lbykvm_19do/bykvm_19do/bykvm_19do/a1;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbykvm_19do/bykvm_19do/bykvm_19do/o0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;

    invoke-direct {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0$a;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/p0;)V

    iput-object v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    .line 3
    iput-object p1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    invoke-direct {v0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;-><init>()V

    .line 5
    iput-object p1, v0, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lbykvm_19do/bykvm_19do/bykvm_19do/p0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract a()Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b<",
            "TSERVICE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->b:Lbykvm_19do/bykvm_19do/bykvm_19do/o0;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/o0;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->a()Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;

    move-result-object v1

    .line 3
    new-instance v2, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;

    invoke-direct {v2, p1, v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lbykvm_19do/bykvm_19do/bykvm_19do/j1$b;)V

    invoke-virtual {v2}, Lbykvm_19do/bykvm_19do/bykvm_19do/j1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/p0;->a(Ljava/lang/String;)Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Landroid/content/Context;)Landroid/content/Intent;
.end method
