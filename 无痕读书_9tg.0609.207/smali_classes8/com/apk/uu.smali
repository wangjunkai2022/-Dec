.class public final Lcom/apk/uu;
.super Ljava/lang/RuntimeException;
.source "ManifestException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "No permissions are registered in the manifest file"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, ": Permissions are not registered in the manifest file"

    .line 2
    invoke-static {p1, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
