.class public final Lcom/apk/no;
.super Ljava/lang/Object;
.source "ParcelFileDescriptorBitmapDecoder.java"

# interfaces
.implements Lcom/apk/oj;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/oj<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/eo;


# direct methods
.method public constructor <init>(Lcom/apk/eo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/no;->do:Lcom/apk/eo;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Object;Lcom/apk/mj;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    iget-object p1, p0, Lcom/apk/no;->do:Lcom/apk/eo;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

.method public if(Ljava/lang/Object;IILcom/apk/mj;)Lcom/apk/gl;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/apk/mj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 2
    iget-object v0, p0, Lcom/apk/no;->do:Lcom/apk/eo;

    .line 3
    new-instance v1, Lcom/apk/ko$if;

    iget-object v2, v0, Lcom/apk/eo;->new:Ljava/util/List;

    iget-object v3, v0, Lcom/apk/eo;->for:Lcom/apk/nl;

    invoke-direct {v1, p1, v2, v3}, Lcom/apk/ko$if;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/apk/nl;)V

    sget-object v5, Lcom/apk/eo;->catch:Lcom/apk/eo$if;

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apk/eo;->do(Lcom/apk/ko;IILcom/apk/mj;Lcom/apk/eo$if;)Lcom/apk/gl;

    move-result-object p1

    return-object p1
.end method
