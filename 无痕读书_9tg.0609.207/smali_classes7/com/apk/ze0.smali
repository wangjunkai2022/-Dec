.class public Lcom/apk/ze0;
.super Ljava/lang/Object;
.source "ZipCryptoEngine.java"


# static fields
.field public static final if:[I


# instance fields
.field public final do:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 1
    sput-object v1, Lcom/apk/ze0;->if:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v2

    const/4 v3, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1

    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    ushr-int/lit8 v4, v4, 0x1

    const v5, -0x12477ce0

    xor-int/2addr v4, v5

    goto :goto_2

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2
    :cond_1
    sget-object v3, Lcom/apk/ze0;->if:[I

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/apk/ze0;->do:[I

    return-void
.end method


# virtual methods
.method public do(B)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/ze0;->do:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    ushr-int/lit8 v3, v2, 0x8

    .line 2
    sget-object v4, Lcom/apk/ze0;->if:[I

    xor-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    aget p1, v4, p1

    xor-int/2addr p1, v3

    .line 3
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 4
    aget v2, v0, p1

    aget v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    aput v2, v0, p1

    .line 5
    aget v1, v0, p1

    const v2, 0x8088405

    mul-int v1, v1, v2

    add-int/2addr v1, p1

    aput v1, v0, p1

    const/4 v1, 0x2

    .line 6
    aget v2, v0, v1

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    ushr-int/lit8 v3, v2, 0x8

    xor-int/2addr p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 7
    aget p1, v4, p1

    xor-int/2addr p1, v3

    .line 8
    aput p1, v0, v1

    return-void
.end method
