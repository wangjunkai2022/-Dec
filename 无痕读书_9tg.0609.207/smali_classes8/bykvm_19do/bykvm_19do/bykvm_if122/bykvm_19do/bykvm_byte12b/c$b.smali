.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c$b;
.super Ljava/lang/Object;
.source "AdnLoadFailShowControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c$a;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;

    return-void
.end method

.method public static synthetic a()Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c$b;->a:Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_19do/bykvm_byte12b/c;

    return-object v0
.end method
