.class public Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/a0;
.super Ljava/lang/Object;
.source "Predicate.java"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/a0;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
