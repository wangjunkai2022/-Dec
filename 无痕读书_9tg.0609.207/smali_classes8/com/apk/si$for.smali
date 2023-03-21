.class public final Lcom/apk/si$for;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/si;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field public final do:Lcom/apk/si$new;

.field public for:Z

.field public final if:[Z

.field public final synthetic new:Lcom/apk/si;


# direct methods
.method public constructor <init>(Lcom/apk/si;Lcom/apk/si$new;Lcom/apk/si$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/si$for;->new:Lcom/apk/si;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/si$for;->do:Lcom/apk/si$new;

    .line 3
    iget-boolean p2, p2, Lcom/apk/si$new;->try:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/apk/si;->else:I

    .line 5
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/apk/si$for;->if:[Z

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/si$for;->new:Lcom/apk/si;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/apk/si;->for(Lcom/apk/si;Lcom/apk/si$for;Z)V

    return-void
.end method

.method public if(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/si$for;->new:Lcom/apk/si;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/apk/si$for;->do:Lcom/apk/si$new;

    .line 3
    iget-object v1, v1, Lcom/apk/si$new;->case:Lcom/apk/si$for;

    if-ne v1, p0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/apk/si$for;->do:Lcom/apk/si$new;

    .line 5
    iget-boolean v1, v1, Lcom/apk/si$new;->try:Z

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/apk/si$for;->if:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/apk/si$for;->do:Lcom/apk/si$new;

    .line 8
    iget-object v1, v1, Lcom/apk/si$new;->new:[Ljava/io/File;

    aget-object p1, v1, p1

    .line 9
    iget-object v1, p0, Lcom/apk/si$for;->new:Lcom/apk/si;

    .line 10
    iget-object v1, v1, Lcom/apk/si;->do:Ljava/io/File;

    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/apk/si$for;->new:Lcom/apk/si;

    .line 13
    iget-object v1, v1, Lcom/apk/si;->do:Ljava/io/File;

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 15
    :cond_1
    monitor-exit v0

    return-object p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
