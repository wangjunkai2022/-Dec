.class public final Lcom/umeng/analytics/pro/cf;
.super Lcom/umeng/analytics/pro/cg;
.source "TMemoryInputTransport.java"


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cg;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cg;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/cf;->a([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cg;-><init>()V

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/analytics/pro/cf;->c([BII)V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ch;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/cf;->h()I

    move-result v0

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-lez p3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/umeng/analytics/pro/cf;->a:[B

    iget v1, p0, Lcom/umeng/analytics/pro/cf;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/pro/cf;->a(I)V

    :cond_1
    return p3
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget v0, p0, Lcom/umeng/analytics/pro/cf;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/analytics/pro/cf;->b:I

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/analytics/pro/cf;->c([BII)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ch;
        }
    .end annotation

    return-void
.end method

.method public b([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ch;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No writing allowed!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c([BII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/pro/cf;->a:[B

    .line 2
    iput p2, p0, Lcom/umeng/analytics/pro/cf;->b:I

    add-int/2addr p2, p3

    .line 3
    iput p2, p0, Lcom/umeng/analytics/pro/cf;->c:I

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/umeng/analytics/pro/cf;->a:[B

    return-void
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/umeng/analytics/pro/cf;->a:[B

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/cf;->b:I

    return v0
.end method

.method public h()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/umeng/analytics/pro/cf;->c:I

    iget v1, p0, Lcom/umeng/analytics/pro/cf;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
