.class public Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b$d;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;-><init>(Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b$a;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b$d;->a:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;

    return-void
.end method

.method public static synthetic a()Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b$d;->a:Lbykvm_19do/bykvm_19do/bykvm_for12/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_19do/b;

    return-object v0
.end method
