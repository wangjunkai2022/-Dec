.class public Lcom/apk/ax$do;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lcom/apk/ag0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ax;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/ax;


# direct methods
.method public constructor <init>(Lcom/apk/ax;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Lcom/apk/zf0;Lcom/apk/ch0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p2, Lcom/apk/ch0;->try:I

    const/16 v1, 0x194

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-virtual {v0, p1, p2}, Lcom/apk/ax;->case(Lcom/apk/zf0;Lcom/apk/ch0;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-object v0, v0, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {v0}, Lcom/apk/qy;->this()Lcom/apk/nx;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/apk/nx;->convertResponse(Lcom/apk/ch0;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    .line 5
    iget-object v3, p2, Lcom/apk/ch0;->else:Lcom/apk/sg0;

    .line 6
    invoke-virtual {v1, v3, v0}, Lcom/apk/ax;->const(Lcom/apk/sg0;Ljava/lang/Object;)V

    .line 7
    invoke-static {v2, v0, p1, p2}, Lcom/apk/iy;->try(ZLjava/lang/Object;Lcom/apk/zf0;Lcom/apk/ch0;)Lcom/apk/iy;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-interface {v1, v0}, Lcom/apk/bx;->if(Lcom/apk/iy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v2, p1, p2, v0}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-interface {p2, p1}, Lcom/apk/bx;->do(Lcom/apk/iy;)V

    :goto_0
    return-void

    .line 11
    :cond_2
    :goto_1
    invoke-static {}, Lcom/apk/ay;->do()Lcom/apk/ay;

    move-result-object v0

    invoke-static {v2, p1, p2, v0}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-interface {p2, p1}, Lcom/apk/bx;->do(Lcom/apk/iy;)V

    return-void
.end method

.method public new(Lcom/apk/zf0;Ljava/io/IOException;)V
    .locals 3

    .line 1
    instance-of v0, p2, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget v0, v0, Lcom/apk/ax;->for:I

    iget-object v1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-object v2, v1, Lcom/apk/ax;->do:Lcom/apk/qy;

    .line 2
    iget v2, v2, Lcom/apk/qy;->try:I

    if-ge v0, v2, :cond_1

    .line 3
    iget p1, v1, Lcom/apk/ax;->for:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/apk/ax;->for:I

    .line 4
    iget-object p1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-object p2, p1, Lcom/apk/ax;->do:Lcom/apk/qy;

    invoke-virtual {p2}, Lcom/apk/qy;->break()Lcom/apk/zf0;

    move-result-object p2

    iput-object p2, p1, Lcom/apk/ax;->try:Lcom/apk/zf0;

    .line 5
    iget-object p1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-boolean p1, p1, Lcom/apk/ax;->if:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-object p1, p1, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-interface {p1}, Lcom/apk/zf0;->cancel()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    iget-object p1, p1, Lcom/apk/ax;->try:Lcom/apk/zf0;

    invoke-interface {p1, p0}, Lcom/apk/zf0;->try(Lcom/apk/ag0;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/apk/zf0;->break()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-static {v0, p1, v1, p2}, Lcom/apk/iy;->if(ZLcom/apk/zf0;Lcom/apk/ch0;Ljava/lang/Throwable;)Lcom/apk/iy;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/apk/ax$do;->do:Lcom/apk/ax;

    invoke-interface {p2, p1}, Lcom/apk/bx;->do(Lcom/apk/iy;)V

    :cond_2
    :goto_0
    return-void
.end method
