.class public final Lcom/apk/ko$if;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Lcom/apk/ko;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ko;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/nl;

.field public final for:Lcom/apk/dk;

.field public final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/apk/nl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
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
    iput-object p3, p0, Lcom/apk/ko$if;->do:Lcom/apk/nl;

    .line 4
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/apk/ko$if;->if:Ljava/util/List;

    .line 6
    new-instance p2, Lcom/apk/dk;

    invoke-direct {p2, p1}, Lcom/apk/dk;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/apk/ko$if;->for:Lcom/apk/dk;

    return-void
.end method


# virtual methods
.method public do()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ko$if;->if:Ljava/util/List;

    iget-object v1, p0, Lcom/apk/ko$if;->for:Lcom/apk/dk;

    iget-object v2, p0, Lcom/apk/ko$if;->do:Lcom/apk/nl;

    .line 2
    new-instance v3, Lcom/apk/jj;

    invoke-direct {v3, v1, v2}, Lcom/apk/jj;-><init>(Lcom/apk/dk;Lcom/apk/nl;)V

    invoke-static {v0, v3}, Lcom/apk/ij;->if(Ljava/util/List;Lcom/apk/ij$try;)I

    move-result v0

    return v0
.end method

.method public for()V
    .locals 0

    return-void
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
    iget-object v0, p0, Lcom/apk/ko$if;->for:Lcom/apk/dk;

    .line 2
    invoke-virtual {v0}, Lcom/apk/dk;->for()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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
    iget-object v0, p0, Lcom/apk/ko$if;->if:Ljava/util/List;

    iget-object v1, p0, Lcom/apk/ko$if;->for:Lcom/apk/dk;

    iget-object v2, p0, Lcom/apk/ko$if;->do:Lcom/apk/nl;

    invoke-static {v0, v1, v2}, Lcom/apk/ij;->getType(Ljava/util/List;Lcom/apk/dk;Lcom/apk/nl;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method
