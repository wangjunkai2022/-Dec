.class public Lcom/apk/uw;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/apk/vw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/vw<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/bx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/bx<",
            "TT;>;"
        }
    .end annotation
.end field

.field public if:Lcom/apk/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apk/qy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qy<",
            "TT;+",
            "Lcom/apk/qy;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    .line 3
    iput-object p1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    .line 4
    iget-object p1, p1, Lcom/apk/qy;->case:Lcom/apk/xw;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/apk/yw;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/yw;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/apk/ex;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/ex;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lcom/apk/ix;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/ix;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Lcom/apk/kx;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/kx;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lcom/apk/gx;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/gx;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    goto :goto_0

    .line 11
    :cond_5
    new-instance p1, Lcom/apk/cx;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {p1, v1}, Lcom/apk/cx;-><init>(Lcom/apk/qy;)V

    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    .line 14
    iput-object p1, p0, Lcom/apk/uw;->do:Lcom/apk/bx;

    return-void

    .line 15
    :cond_6
    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/apk/uw;

    iget-object v1, p0, Lcom/apk/uw;->if:Lcom/apk/qy;

    invoke-direct {v0, v1}, Lcom/apk/uw;-><init>(Lcom/apk/qy;)V

    return-object v0
.end method
