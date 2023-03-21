.class public final Lbykvm_19do/bykvm_19do/bykvm_new1/bykvm_19do/bykvm_case1/f;
.super Ljava/lang/Object;
.source "IoUtil.java"


# direct methods
.method public static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
