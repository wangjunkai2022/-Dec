.class public interface abstract Lcom/apk/tf0;
.super Ljava/lang/Object;
.source "InternalZipConstants.java"


# static fields
.field public static final do:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "file.encoding"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "file.separator"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/tf0;->do:Ljava/lang/String;

    return-void
.end method
