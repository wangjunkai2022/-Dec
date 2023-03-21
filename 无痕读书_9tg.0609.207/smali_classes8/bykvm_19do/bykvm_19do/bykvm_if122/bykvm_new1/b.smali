.class public final Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/b;
.super Ljava/lang/Object;
.source "AESKey.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "YXFiMDQ1OGMyYjI2Mjk0OWI4"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
