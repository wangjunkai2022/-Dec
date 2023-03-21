.class public Lcom/apk/ci;
.super Ljava/lang/Object;
.source "Defaults.java"


# static fields
.field public static do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/ci$do;

    invoke-direct {v0}, Lcom/apk/ci$do;-><init>()V

    sput-object v0, Lcom/apk/ci;->do:Ljava/util/Map;

    return-void
.end method

.method public static do()I
    .locals 1

    const/16 v0, 0x1f90

    return v0
.end method
