.class public final Lcom/apk/dl0;
.super Ljava/lang/Object;
.source "JvmOkio.kt"

# interfaces
.implements Lcom/apk/jl0;


# instance fields
.field public final do:Ljava/io/OutputStream;

.field public final if:Lcom/apk/ml0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/apk/ml0;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/ml0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/dl0;->do:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/apk/dl0;->if:Lcom/apk/ml0;

    return-void
.end method


# virtual methods
.method public class(Lcom/apk/rk0;J)V
    .locals 7
    .param p1    # Lcom/apk/rk0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/apk/nd0;->new(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v1, p1, Lcom/apk/rk0;->if:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 2
    invoke-static/range {v1 .. v6}, Lcom/apk/sb0;->throw(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/apk/dl0;->if:Lcom/apk/ml0;

    invoke-virtual {v0}, Lcom/apk/ml0;->case()V

    .line 4
    iget-object v0, p1, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    invoke-static {v0}, Lcom/apk/nd0;->if(Ljava/lang/Object;)V

    .line 5
    iget v1, v0, Lcom/apk/gl0;->for:I

    iget v2, v0, Lcom/apk/gl0;->if:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 6
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 7
    iget-object v1, p0, Lcom/apk/dl0;->do:Ljava/io/OutputStream;

    iget-object v3, v0, Lcom/apk/gl0;->do:[B

    iget v4, v0, Lcom/apk/gl0;->if:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    iget v1, v0, Lcom/apk/gl0;->if:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/apk/gl0;->if:I

    int-to-long v2, v2

    sub-long/2addr p2, v2

    .line 9
    iget-wide v4, p1, Lcom/apk/rk0;->if:J

    sub-long/2addr v4, v2

    .line 10
    iput-wide v4, p1, Lcom/apk/rk0;->if:J

    .line 11
    iget v2, v0, Lcom/apk/gl0;->for:I

    if-ne v1, v2, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/apk/gl0;->do()Lcom/apk/gl0;

    move-result-object v1

    iput-object v1, p1, Lcom/apk/rk0;->do:Lcom/apk/gl0;

    .line 13
    invoke-static {v0}, Lcom/apk/hl0;->do(Lcom/apk/gl0;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/dl0;->do:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/dl0;->do:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public if()Lcom/apk/ml0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/dl0;->if:Lcom/apk/ml0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sink("

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/dl0;->do:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
