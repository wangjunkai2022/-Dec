.class public final Lcom/apk/ko$do;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/apk/ko;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/apk/bk;

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/nl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/List;Lcom/apk/nl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/apk/nl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p3, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/apk/ko$do;->if:Lcom/apk/nl;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/apk/ko$do;->for:Ljava/util/List;

    .line 6
    new-instance p2, Lcom/apk/bk;

    invoke-direct {p2, p1, p3}, Lcom/apk/bk;-><init>(Ljava/io/InputStream;Lcom/apk/nl;)V

    iput-object p2, p0, Lcom/apk/ko$do;->do:Lcom/apk/bk;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ko$do;->for:Ljava/util/List;

    iget-object v1, p0, Lcom/apk/ko$do;->do:Lcom/apk/bk;

    .line 2
    invoke-virtual {v1}, Lcom/apk/bk;->for()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/ko$do;->if:Lcom/apk/nl;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/apk/ij;->do(Ljava/util/List;Ljava/io/InputStream;Lcom/apk/nl;)I

    move-result v0

    return v0
.end method

.method public for()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ko$do;->do:Lcom/apk/bk;

    .line 2
    iget-object v0, v0, Lcom/apk/bk;->do:Lcom/apk/oo;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/apk/oo;->do:[B

    array-length v1, v1

    iput v1, v0, Lcom/apk/oo;->for:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public if(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ko$do;->do:Lcom/apk/bk;

    invoke-virtual {v0}, Lcom/apk/bk;->for()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ko$do;->for:Ljava/util/List;

    iget-object v1, p0, Lcom/apk/ko$do;->do:Lcom/apk/bk;

    invoke-virtual {v1}, Lcom/apk/bk;->for()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/apk/ko$do;->if:Lcom/apk/nl;

    invoke-static {v0, v1, v2}, Lcom/apk/ij;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/apk/nl;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
