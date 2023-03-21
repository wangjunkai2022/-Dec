.class public Lcom/apk/os;
.super Ljava/lang/Object;
.source "Sdk.java"


# static fields
.field public static final do:I

.field public static for:Z

.field public static final if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "3.6.0.1"

    const-string v1, "."

    const-string v2, ""

    .line 1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2
    sput v0, Lcom/apk/os;->do:I

    .line 3
    invoke-static {}, Lbykvm_19do/bykvm_19do/bykvm_if122/bykvm_new1/l0;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/os;->if:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/apk/os;->for:Z

    return-void
.end method
