.class public Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;
.super Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbykvm_19do/bykvm_19do/bykvm_19do/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbykvm_19do/bykvm_19do/bykvm_19do/a1$a;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lbykvm_19do/bykvm_19do/bykvm_19do/v0$c;->c:J

    return-void
.end method
