.class public Lcom/apk/nf0;
.super Ljava/lang/Object;
.source "Zip64ExtendedInfo.java"


# instance fields
.field public do:J

.field public for:J

.field public if:J

.field public new:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/apk/nf0;->do:J

    .line 3
    iput-wide v0, p0, Lcom/apk/nf0;->if:J

    .line 4
    iput-wide v0, p0, Lcom/apk/nf0;->for:J

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/apk/nf0;->new:I

    return-void
.end method
