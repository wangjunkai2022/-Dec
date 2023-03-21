.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b;
.super Ljava/lang/Object;
.source "DebugMemInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$c;,
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;
    }
.end annotation


# static fields
.field public static final a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$a;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;

    return-void
.end method

.method public static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;->b(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/b$b;->c(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    return p0
.end method
