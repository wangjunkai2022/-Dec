.class public final Lcom/umeng/analytics/pro/by;
.super Lcom/umeng/analytics/pro/bm;
.source "TTupleProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/by$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/umeng/analytics/pro/cg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    return-void
.end method

.method public static a([B)Ljava/util/BitSet;
    .locals 5

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    if-ge v1, v2, :cond_1

    .line 6
    array-length v2, p0

    div-int/lit8 v3, v1, 0x8

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    rem-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/util/BitSet;I)[B
    .locals 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    div-int/lit8 v2, v1, 0x8

    sub-int v2, p1, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v4, v0, v2

    rem-int/lit8 v5, v1, 0x8

    shl-int/2addr v3, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public D()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/ca;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/umeng/analytics/pro/cd;

    return-object v0
.end method

.method public a(Ljava/util/BitSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/umeng/analytics/pro/by;->b(Ljava/util/BitSet;I)[B

    move-result-object p1

    .line 2
    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p1, v0

    .line 3
    invoke-virtual {p0, v1}, Lcom/umeng/analytics/pro/bm;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 2
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/umeng/analytics/pro/by;->a([B)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method
