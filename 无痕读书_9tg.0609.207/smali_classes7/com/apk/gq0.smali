.class public Lcom/apk/gq0;
.super Ljava/lang/Object;
.source "ContainerHelpers.java"


# static fields
.field public static final do:[I

.field public static final if:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lcom/apk/gq0;->do:[I

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sput-object v0, Lcom/apk/gq0;->if:[Ljava/lang/Object;

    return-void
.end method

.method public static do(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
