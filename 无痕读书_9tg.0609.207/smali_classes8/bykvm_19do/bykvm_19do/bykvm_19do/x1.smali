.class public Lbykvm_19do/bykvm_19do/bykvm_19do/x1;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/a2;
.source "SourceFile"


# instance fields
.field public g:Z


# direct methods
.method public constructor <init>(Lbykvm_19do/bykvm_19do/bykvm_19do/v1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbykvm_19do/bykvm_19do/bykvm_19do/a2;-><init>(Lbykvm_19do/bykvm_19do/bykvm_19do/v1;)V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/x1;->g:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a2;->d()Z

    move-result v0

    iput-boolean v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/x1;->g:Z

    return v0
.end method
