.class public Lcom/apk/ij$for;
.super Ljava/lang/Object;
.source "ImageHeaderParserUtils.java"

# interfaces
.implements Lcom/apk/ij$case;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ij;->getType(Ljava/util/List;Lcom/apk/dk;Lcom/apk/nl;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/dk;

.field public final synthetic if:Lcom/apk/nl;


# direct methods
.method public constructor <init>(Lcom/apk/dk;Lcom/apk/nl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ij$for;->do:Lcom/apk/dk;

    iput-object p2, p0, Lcom/apk/ij$for;->if:Lcom/apk/nl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/apk/oo;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/apk/ij$for;->do:Lcom/apk/dk;

    .line 2
    invoke-virtual {v3}, Lcom/apk/dk;->for()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/apk/ij$for;->if:Lcom/apk/nl;

    invoke-direct {v1, v2, v3}, Lcom/apk/oo;-><init>(Ljava/io/InputStream;Lcom/apk/nl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/ImageHeaderParser;->getType(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Lcom/apk/oo;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5
    :catch_0
    iget-object v0, p0, Lcom/apk/ij$for;->do:Lcom/apk/dk;

    invoke-virtual {v0}, Lcom/apk/dk;->for()Landroid/os/ParcelFileDescriptor;

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v0}, Lcom/apk/oo;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 7
    :catch_1
    :cond_0
    iget-object v0, p0, Lcom/apk/ij$for;->do:Lcom/apk/dk;

    invoke-virtual {v0}, Lcom/apk/dk;->for()Landroid/os/ParcelFileDescriptor;

    throw p1
.end method
