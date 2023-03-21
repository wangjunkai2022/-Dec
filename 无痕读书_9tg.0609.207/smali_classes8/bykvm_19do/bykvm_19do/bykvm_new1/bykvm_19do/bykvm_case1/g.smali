.class public Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g;
.super Ljava/lang/Object;
.source "JellyBeanV16Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$c;,
        Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$b;
    }
.end annotation


# static fields
.field public static final a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$c;-><init>(Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$a;)V

    sput-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$b;

    return-void
.end method

.method public static a(Landroid/app/ActivityManager$MemoryInfo;)J
    .locals 2

    .line 1
    sget-object v0, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g;->a:Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$b;

    invoke-virtual {v0, p0}, Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/g$b;->a(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v0

    return-wide v0
.end method
