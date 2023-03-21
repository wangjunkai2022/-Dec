.class public Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/b;
.super Ljava/lang/Object;
.source "ThreadMessage.java"

# interfaces
.implements Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/a;


# instance fields
.field public a:I

.field public b:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a(B)V
    .locals 0

    .line 2
    iput-byte p1, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/b;->b:B

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/b;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public b()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/b;->b:B

    return v0
.end method

.method public b(B)V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    return-void
.end method

.method public c()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(J)V
    .locals 0

    return-void
.end method

.method public d()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lbykvm_19do/bykvm_19do/bykvm_int108/bykvm_19do/bykvm_19do/bykvm_19do/bykvm_int108/b;->a:I

    return v0
.end method
