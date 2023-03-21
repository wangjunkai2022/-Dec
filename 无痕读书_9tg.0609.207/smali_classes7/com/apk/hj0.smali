.class public final Lcom/apk/hj0;
.super Ljava/lang/Object;
.source "Http2Writer.kt"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final else:Ljava/util/logging/Logger;


# instance fields
.field public final case:Z

.field public final do:Lcom/apk/rk0;

.field public for:Z

.field public if:I

.field public final new:Lcom/apk/vi0$if;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final try:Lcom/apk/sk0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/apk/wi0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/apk/hj0;->else:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/apk/sk0;Z)V
    .locals 2
    .param p1    # Lcom/apk/sk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    iput-boolean p2, p0, Lcom/apk/hj0;->case:Z

    .line 2
    new-instance p1, Lcom/apk/rk0;

    invoke-direct {p1}, Lcom/apk/rk0;-><init>()V

    iput-object p1, p0, Lcom/apk/hj0;->do:Lcom/apk/rk0;

    const/16 p2, 0x4000

    .line 3
    iput p2, p0, Lcom/apk/hj0;->if:I

    .line 4
    new-instance p2, Lcom/apk/vi0$if;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v0, p1, v1}, Lcom/apk/vi0$if;-><init>(IZLcom/apk/rk0;I)V

    iput-object p2, p0, Lcom/apk/hj0;->new:Lcom/apk/vi0$if;

    return-void
.end method


# virtual methods
.method public final break(IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/apk/hj0;->else:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apk/hj0;->else:Ljava/util/logging/Logger;

    sget-object v1, Lcom/apk/wi0;->try:Lcom/apk/wi0;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/apk/wi0;->if(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget v0, p0, Lcom/apk/hj0;->if:I

    const/4 v1, 0x1

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    const-wide v2, 0x80000000L

    long-to-int v0, v2

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-static {v0, p2}, Lcom/apk/jh0;->implements(Lcom/apk/sk0;I)V

    .line 4
    iget-object p2, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    and-int/lit16 p3, p3, 0xff

    invoke-interface {p2, p3}, Lcom/apk/sk0;->writeByte(I)Lcom/apk/sk0;

    .line 5
    iget-object p2, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    and-int/lit16 p3, p4, 0xff

    invoke-interface {p2, p3}, Lcom/apk/sk0;->writeByte(I)Lcom/apk/sk0;

    .line 6
    iget-object p2, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    const p3, 0x7fffffff

    and-int/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    return-void

    :cond_3
    const-string p2, "reserved bit set: "

    .line 7
    invoke-static {p2, p1}, Lcom/apk/goto;->implements(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p1, "FRAME_SIZE_ERROR length > "

    .line 8
    invoke-static {p1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/apk/hj0;->if:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/apk/hj0;->for:Z

    .line 2
    iget-object v0, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v0}, Lcom/apk/jl0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized default(ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/apk/hj0;->break(IIII)V

    .line 3
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1, p2}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 4
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1, p3}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 5
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extends(ILcom/apk/ti0;)V
    .locals 3
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_2

    .line 2
    iget v0, p2, Lcom/apk/ti0;->do:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/apk/hj0;->break(IIII)V

    .line 4
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    .line 5
    iget p2, p2, Lcom/apk/ti0;->do:I

    .line 6
    invoke-interface {p1, p2}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 7
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "Failed requirement."

    .line 9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized finally(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-eqz v3, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v3, p2, v0

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 2
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/apk/hj0;->break(IIII)V

    .line 3
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    long-to-int p3, p2

    invoke-interface {p1, p3}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 4
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v0}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized for(Lcom/apk/lj0;)V
    .locals 4
    .param p1    # Lcom/apk/lj0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "peerSettings"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_7

    .line 2
    iget v0, p0, Lcom/apk/hj0;->if:I

    .line 3
    iget v1, p1, Lcom/apk/lj0;->do:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/apk/lj0;->if:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    .line 4
    :cond_0
    iput v0, p0, Lcom/apk/hj0;->if:I

    .line 5
    iget v0, p1, Lcom/apk/lj0;->do:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/apk/lj0;->if:[I

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_6

    .line 6
    iget-object v0, p0, Lcom/apk/hj0;->new:Lcom/apk/vi0$if;

    .line 7
    iget v3, p1, Lcom/apk/lj0;->do:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/apk/lj0;->if:[I

    aget v2, p1, v1

    .line 8
    :cond_2
    iput v2, v0, Lcom/apk/vi0$if;->goto:I

    const/16 p1, 0x4000

    .line 9
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 10
    iget v2, v0, Lcom/apk/vi0$if;->for:I

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v2, :cond_4

    .line 11
    iget v2, v0, Lcom/apk/vi0$if;->do:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Lcom/apk/vi0$if;->do:I

    .line 12
    :cond_4
    iput-boolean v1, v0, Lcom/apk/vi0$if;->if:Z

    .line 13
    iput p1, v0, Lcom/apk/vi0$if;->for:I

    .line 14
    iget v2, v0, Lcom/apk/vi0$if;->else:I

    if-ge p1, v2, :cond_6

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {v0}, Lcom/apk/vi0$if;->do()V

    goto :goto_1

    :cond_5
    sub-int/2addr v2, p1

    .line 16
    invoke-virtual {v0, v2}, Lcom/apk/vi0$if;->if(I)I

    :cond_6
    :goto_1
    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0, v0, p1, v1}, Lcom/apk/hj0;->break(IIII)V

    .line 18
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_7
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final package(IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lcom/apk/hj0;->if:I

    int-to-long v2, v2

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-int v4, v2

    const/16 v5, 0x9

    cmp-long v6, p2, v0

    if-nez v6, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/apk/hj0;->break(IIII)V

    .line 3
    iget-object v0, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    iget-object v1, p0, Lcom/apk/hj0;->do:Lcom/apk/rk0;

    invoke-interface {v0, v1, v2, v3}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized throw(ILcom/apk/ti0;[B)V
    .locals 4
    .param p2    # Lcom/apk/ti0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugData"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_4

    .line 2
    iget v0, p2, Lcom/apk/ti0;->do:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    .line 4
    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/apk/hj0;->break(IIII)V

    .line 5
    iget-object v0, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {v0, p1}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 6
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    .line 7
    iget p2, p2, Lcom/apk/ti0;->do:I

    .line 8
    invoke-interface {p1, p2}, Lcom/apk/sk0;->writeInt(I)Lcom/apk/sk0;

    .line 9
    array-length p1, p3

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    xor-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1, p3}, Lcom/apk/sk0;->write([B)Lcom/apk/sk0;

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-interface {p1}, Lcom/apk/sk0;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string p1, "errorCode.httpCode == -1"

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized throws(ZILjava/util/List;)V
    .locals 6
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/apk/ui0;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "headerBlock"

    invoke-static {p3, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/apk/hj0;->new:Lcom/apk/vi0$if;

    invoke-virtual {v0, p3}, Lcom/apk/vi0$if;->try(Ljava/util/List;)V

    .line 3
    iget-object p3, p0, Lcom/apk/hj0;->do:Lcom/apk/rk0;

    .line 4
    iget-wide v0, p3, Lcom/apk/rk0;->if:J

    .line 5
    iget p3, p0, Lcom/apk/hj0;->if:I

    int-to-long v2, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v4, v4, 0x1

    :cond_1
    long-to-int p1, v2

    const/4 v5, 0x1

    .line 6
    invoke-virtual {p0, p2, p1, v5, v4}, Lcom/apk/hj0;->break(IIII)V

    .line 7
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    iget-object v4, p0, Lcom/apk/hj0;->do:Lcom/apk/rk0;

    invoke-interface {p1, v4, v2, v3}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V

    if-lez p3, :cond_2

    sub-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, p2, v0, v1}, Lcom/apk/hj0;->package(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized try(ZILcom/apk/rk0;I)V
    .locals 2
    .param p3    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/hj0;->for:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, p2, p4, v0, p1}, Lcom/apk/hj0;->break(IIII)V

    if-lez p4, :cond_1

    .line 3
    iget-object p1, p0, Lcom/apk/hj0;->try:Lcom/apk/sk0;

    invoke-static {p3}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    int-to-long v0, p4

    invoke-interface {p1, p3, v0, v1}, Lcom/apk/jl0;->class(Lcom/apk/rk0;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
