.class public Lcom/apk/hy;
.super Ljava/lang/Object;
.source "Progress.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/hy$do;
    }
.end annotation


# instance fields
.field public break:I

.field public case:F

.field public catch:I

.field public class:J

.field public const:Lcom/apk/qy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qy<",
            "*+",
            "Lcom/apk/qy;",
            ">;"
        }
    .end annotation
.end field

.field public do:Ljava/lang/String;

.field public else:J

.field public final:Ljava/io/Serializable;

.field public for:Ljava/lang/String;

.field public goto:J

.field public if:Ljava/lang/String;

.field public transient import:J

.field public transient native:J

.field public new:Ljava/lang/String;

.field public transient public:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public return:Z

.field public super:Ljava/io/Serializable;

.field public transient this:J

.field public throw:Ljava/io/Serializable;

.field public try:Ljava/lang/String;

.field public while:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apk/hy;->native:J

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/apk/hy;->else:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/apk/hy;->catch:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/apk/hy;->class:J

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/apk/hy;->public:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/apk/hy;->return:Z

    return-void
.end method

.method public static do(Lcom/apk/hy;JJLcom/apk/hy$do;)Lcom/apk/hy;
    .locals 7

    .line 1
    iput-wide p3, p0, Lcom/apk/hy;->else:J

    .line 2
    iget-wide v0, p0, Lcom/apk/hy;->goto:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/apk/hy;->goto:J

    .line 3
    iget-wide v0, p0, Lcom/apk/hy;->import:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/apk/hy;->import:J

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 5
    iget-wide v0, p0, Lcom/apk/hy;->native:J

    sub-long v0, p1, v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 6
    iget-wide v0, p0, Lcom/apk/hy;->goto:J

    cmp-long v3, v0, p3

    if-nez v3, :cond_5

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/apk/hy;->native:J

    sub-long v0, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    const-wide/16 v0, 0x1

    .line 8
    :cond_2
    iget-wide v5, p0, Lcom/apk/hy;->goto:J

    long-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    long-to-float p3, p3

    div-float/2addr v5, p3

    iput v5, p0, Lcom/apk/hy;->case:F

    .line 9
    iget-wide p3, p0, Lcom/apk/hy;->import:J

    const-wide/16 v5, 0x3e8

    mul-long p3, p3, v5

    div-long/2addr p3, v0

    .line 10
    iget-object v0, p0, Lcom/apk/hy;->public:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p3, p0, Lcom/apk/hy;->public:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/16 p4, 0xa

    if-le p3, p4, :cond_3

    .line 12
    iget-object p3, p0, Lcom/apk/hy;->public:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object p3, p0, Lcom/apk/hy;->public:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-wide v0, v3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-float p4, v5

    long-to-float v0, v0

    add-float/2addr v0, p4

    float-to-long v0, v0

    goto :goto_1

    .line 14
    :cond_4
    iget-object p3, p0, Lcom/apk/hy;->public:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    int-to-long p3, p3

    div-long/2addr v0, p3

    .line 15
    iput-wide v0, p0, Lcom/apk/hy;->this:J

    .line 16
    iput-wide p1, p0, Lcom/apk/hy;->native:J

    .line 17
    iput-wide v3, p0, Lcom/apk/hy;->import:J

    if-eqz p5, :cond_5

    .line 18
    invoke-interface {p5, p0}, Lcom/apk/hy$do;->call(Lcom/apk/hy;)V

    :cond_5
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/apk/hy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/apk/hy;

    .line 3
    iget-object v2, p0, Lcom/apk/hy;->do:Ljava/lang/String;

    iget-object p1, p1, Lcom/apk/hy;->do:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/hy;->do:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Progress{fraction="

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/apk/hy;->case:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apk/hy;->else:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apk/hy;->goto:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/apk/hy;->this:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/hy;->break:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/hy;->catch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/hy;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/hy;->new:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/hy;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/hy;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/hy;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
