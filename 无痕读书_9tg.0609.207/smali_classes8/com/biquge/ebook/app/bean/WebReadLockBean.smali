.class public Lcom/biquge/ebook/app/bean/WebReadLockBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "WebReadLockBean.java"


# instance fields
.field public inInterval:Z

.field public interval:J

.field public readUseTime:J

.field public startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->interval:J

    return-wide v0
.end method

.method public getReadUseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->readUseTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->startTime:J

    return-wide v0
.end method

.method public isInInterval()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->inInterval:Z

    return v0
.end method

.method public setInInterval(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->inInterval:Z

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->interval:J

    return-void
.end method

.method public setReadUseTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->readUseTime:J

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/biquge/ebook/app/bean/WebReadLockBean;->startTime:J

    return-void
.end method
