.class public Lcom/apk/pf0;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"


# instance fields
.field public do:I

.field public for:J

.field public if:J

.field public new:I

.field public try:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/pf0;->do()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/pf0;->new:I

    return-void
.end method


# virtual methods
.method public do()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/apk/pf0;->do:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/apk/pf0;->try:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/apk/pf0;->if:J

    .line 4
    iput-wide v1, p0, Lcom/apk/pf0;->for:J

    .line 5
    iput v0, p0, Lcom/apk/pf0;->new:I

    return-void
.end method

.method public if(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/apk/pf0;->for:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/apk/pf0;->for:J

    .line 2
    iget-wide p1, p0, Lcom/apk/pf0;->if:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 3
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/apk/pf0;->new:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 4
    iput p2, p0, Lcom/apk/pf0;->new:I

    :cond_0
    return-void
.end method

.method public setResult(I)V
    .locals 0

    return-void
.end method
