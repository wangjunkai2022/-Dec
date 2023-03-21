.class public final Lcom/apk/eo;
.super Ljava/lang/Object;
.source "Downsampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/eo$if;
    }
.end annotation


# static fields
.field public static final break:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final case:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Lcom/apk/ej;",
            ">;"
        }
    .end annotation
.end field

.field public static final catch:Lcom/apk/eo$if;

.field public static final class:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field

.field public static final const:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final else:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Lcom/apk/nj;",
            ">;"
        }
    .end annotation
.end field

.field public static final goto:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final this:Lcom/apk/lj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/lj<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final do:Lcom/apk/pl;

.field public final for:Lcom/apk/nl;

.field public final if:Landroid/util/DisplayMetrics;

.field public final new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final try:Lcom/apk/jo;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/apk/ej;->for:Lcom/apk/ej;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat"

    .line 2
    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->case:Lcom/apk/lj;

    .line 3
    sget-object v0, Lcom/apk/nj;->do:Lcom/apk/nj;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace"

    .line 4
    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->else:Lcom/apk/lj;

    .line 5
    sget-object v0, Lcom/apk/co;->case:Lcom/apk/lj;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize"

    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->goto:Lcom/apk/lj;

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode"

    .line 8
    invoke-static {v1, v0}, Lcom/apk/lj;->do(Ljava/lang/String;Ljava/lang/Object;)Lcom/apk/lj;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->this:Lcom/apk/lj;

    .line 9
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "image/vnd.wap.wbmp"

    const-string v2, "image/x-ico"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->break:Ljava/util/Set;

    .line 11
    new-instance v0, Lcom/apk/eo$do;

    invoke-direct {v0}, Lcom/apk/eo$do;-><init>()V

    sput-object v0, Lcom/apk/eo;->catch:Lcom/apk/eo$if;

    .line 12
    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    .line 13
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->class:Ljava/util/Set;

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Lcom/apk/gs;->new(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/apk/eo;->const:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/apk/pl;Lcom/apk/nl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Landroid/util/DisplayMetrics;",
            "Lcom/apk/pl;",
            "Lcom/apk/nl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/apk/jo;->do()Lcom/apk/jo;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/eo;->try:Lcom/apk/jo;

    .line 3
    iput-object p1, p0, Lcom/apk/eo;->new:Ljava/util/List;

    const-string p1, "Argument must not be null"

    .line 4
    invoke-static {p2, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/apk/eo;->if:Landroid/util/DisplayMetrics;

    .line 6
    invoke-static {p3, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/apk/eo;->do:Lcom/apk/pl;

    .line 8
    invoke-static {p4, p1}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Lcom/apk/eo;->for:Lcom/apk/nl;

    return-void
.end method

.method public static break(Landroid/graphics/BitmapFactory$Options;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 3
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 4
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 8
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 10
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 11
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    .line 12
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    .line 13
    :cond_0
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 14
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 15
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method public static case(D)I
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    div-double p0, v0, p0

    :goto_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double p0, p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static catch(D)I
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static else(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/apk/eo;->new(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)Landroid/graphics/Bitmap;

    const/4 p0, 0x0

    .line 3
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 4
    iget p3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput p3, p2, p0

    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p0, p2, v0

    return-object p2
.end method

.method public static goto(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static new(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p2}, Lcom/apk/eo$if;->if()V

    .line 3
    invoke-interface {p0}, Lcom/apk/ko;->for()V

    .line 4
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6
    iget-object v2, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 7
    sget-object v3, Lcom/apk/so;->new:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 9
    :try_start_0
    invoke-interface {p0, p1}, Lcom/apk/ko;->if(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :goto_0
    sget-object p1, Lcom/apk/so;->new:Ljava/util/concurrent/locks/Lock;

    .line 11
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 12
    :try_start_1
    invoke-static {v3, v0, v1, v2, p1}, Lcom/apk/eo;->this(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;

    move-result-object v0

    .line 13
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 14
    :try_start_2
    iget-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p3, v1}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 15
    iput-object v1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 16
    invoke-static {p0, p1, p2, p3}, Lcom/apk/eo;->new(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 17
    :catch_1
    :try_start_3
    throw v0

    .line 18
    :cond_1
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :goto_1
    sget-object p1, Lcom/apk/so;->new:Ljava/util/concurrent/locks/Lock;

    .line 20
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static this(Ljava/lang/IllegalArgumentException;IILjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Ljava/io/IOException;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception decoding bitmap, outWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outHeight: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outMimeType: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", inBitmap: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object p1, p4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/apk/eo;->try(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static try(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " ("

    .line 1
    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2
    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final do(Lcom/apk/ko;IILcom/apk/mj;Lcom/apk/eo$if;)Lcom/apk/gl;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ko;",
            "II",
            "Lcom/apk/mj;",
            "Lcom/apk/eo$if;",
            ")",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v0, p4

    .line 1
    iget-object v1, v12, Lcom/apk/eo;->for:Lcom/apk/nl;

    const-class v2, [B

    const/high16 v3, 0x10000

    invoke-interface {v1, v3, v2}, Lcom/apk/nl;->case(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [B

    .line 2
    const-class v1, Lcom/apk/eo;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v2, Lcom/apk/eo;->const:Ljava/util/Queue;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4
    :try_start_1
    sget-object v3, Lcom/apk/eo;->const:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/BitmapFactory$Options;

    .line 5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v3, :cond_0

    .line 6
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    invoke-static {v3}, Lcom/apk/eo;->break(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_0
    move-object v14, v3

    .line 8
    monitor-exit v1

    .line 9
    iput-object v13, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 10
    sget-object v1, Lcom/apk/eo;->case:Lcom/apk/lj;

    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/apk/ej;

    .line 11
    sget-object v1, Lcom/apk/eo;->else:Lcom/apk/lj;

    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/apk/nj;

    .line 12
    sget-object v1, Lcom/apk/co;->case:Lcom/apk/lj;

    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/apk/co;

    .line 13
    sget-object v1, Lcom/apk/eo;->goto:Lcom/apk/lj;

    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 14
    sget-object v1, Lcom/apk/eo;->this:Lcom/apk/lj;

    .line 15
    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/apk/eo;->this:Lcom/apk/lj;

    invoke-virtual {v0, v1}, Lcom/apk/mj;->for(Lcom/apk/lj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p5

    .line 16
    :try_start_3
    invoke-virtual/range {v1 .. v11}, Lcom/apk/eo;->for(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/co;Lcom/apk/ej;Lcom/apk/nj;ZIIZLcom/apk/eo$if;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 17
    iget-object v1, v12, Lcom/apk/eo;->do:Lcom/apk/pl;

    invoke-static {v0, v1}, Lcom/apk/vn;->try(Landroid/graphics/Bitmap;Lcom/apk/pl;)Lcom/apk/vn;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    invoke-static {v14}, Lcom/apk/eo;->break(Landroid/graphics/BitmapFactory$Options;)V

    .line 19
    sget-object v1, Lcom/apk/eo;->const:Ljava/util/Queue;

    monitor-enter v1

    .line 20
    :try_start_4
    sget-object v2, Lcom/apk/eo;->const:Ljava/util/Queue;

    invoke-interface {v2, v14}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object v1, v12, Lcom/apk/eo;->for:Lcom/apk/nl;

    invoke-interface {v1, v13}, Lcom/apk/nl;->put(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 23
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 24
    invoke-static {v14}, Lcom/apk/eo;->break(Landroid/graphics/BitmapFactory$Options;)V

    .line 25
    sget-object v3, Lcom/apk/eo;->const:Ljava/util/Queue;

    monitor-enter v3

    .line 26
    :try_start_6
    sget-object v1, Lcom/apk/eo;->const:Ljava/util/Queue;

    invoke-interface {v1, v14}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 28
    iget-object v1, v12, Lcom/apk/eo;->for:Lcom/apk/nl;

    invoke-interface {v1, v13}, Lcom/apk/nl;->put(Ljava/lang/Object;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 29
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 30
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final for(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/co;Lcom/apk/ej;Lcom/apk/nj;ZIIZLcom/apk/eo$if;)Landroid/graphics/Bitmap;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p10

    .line 1
    invoke-static {}, Lcom/apk/cs;->if()J

    move-result-wide v6

    .line 2
    iget-object v8, v0, Lcom/apk/eo;->do:Lcom/apk/pl;

    invoke-static {v1, v2, v5, v8}, Lcom/apk/eo;->else(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)[I

    move-result-object v8

    const/4 v9, 0x0

    .line 3
    aget v10, v8, v9

    const/4 v11, 0x1

    .line 4
    aget v8, v8, v11

    const/4 v12, -0x1

    if-eq v10, v12, :cond_1

    if-ne v8, v12, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v12, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x0

    .line 5
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/apk/ko;->do()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    const/4 v14, 0x0

    goto :goto_2

    :pswitch_0
    const/16 v14, 0x10e

    goto :goto_2

    :pswitch_1
    const/16 v14, 0x5a

    goto :goto_2

    :pswitch_2
    const/16 v14, 0xb4

    :goto_2
    packed-switch v13, :pswitch_data_1

    const/4 v15, 0x0

    goto :goto_3

    :pswitch_3
    const/4 v15, 0x1

    :goto_3
    const/high16 v9, -0x80000000

    move/from16 v11, p7

    if-ne v11, v9, :cond_3

    .line 6
    invoke-static {v14}, Lcom/apk/eo;->goto(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move v11, v8

    goto :goto_4

    :cond_2
    move v11, v10

    :cond_3
    :goto_4
    move/from16 p6, v13

    move/from16 v13, p8

    if-ne v13, v9, :cond_5

    .line 7
    invoke-static {v14}, Lcom/apk/eo;->goto(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v13, v10

    goto :goto_5

    :cond_4
    move v13, v8

    .line 8
    :cond_5
    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/apk/ko;->new()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    move-wide/from16 v16, v6

    .line 9
    iget-object v6, v0, Lcom/apk/eo;->do:Lcom/apk/pl;

    .line 10
    sget-object v7, Lcom/apk/co$try;->do:Lcom/apk/co$try;

    const-string v4, "]"

    move/from16 v18, v12

    const-string v12, "x"

    move/from16 v19, v15

    const-string v15, "Downsampler"

    if-lez v10, :cond_18

    if-gtz v8, :cond_6

    move-object v0, v5

    move v5, v8

    move v3, v10

    move v8, v11

    move-object v6, v15

    const/4 v7, 0x3

    const/16 v21, 0x0

    goto/16 :goto_11

    .line 11
    :cond_6
    invoke-static {v14}, Lcom/apk/eo;->goto(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move v14, v8

    move v0, v10

    goto :goto_6

    :cond_7
    move v0, v8

    move v14, v10

    :goto_6
    move-object/from16 v20, v15

    .line 12
    invoke-virtual {v3, v14, v0, v11, v13}, Lcom/apk/co;->if(IIII)F

    move-result v15

    const/16 v21, 0x0

    cmpg-float v22, v15, v21

    if-lez v22, :cond_17

    .line 13
    invoke-virtual {v3, v14, v0, v11, v13}, Lcom/apk/co;->do(IIII)Lcom/apk/co$try;

    move-result-object v4

    if-eqz v4, :cond_16

    int-to-float v12, v14

    move/from16 v22, v8

    mul-float v8, v15, v12

    move/from16 v23, v10

    move/from16 p7, v11

    float-to-double v10, v8

    .line 14
    invoke-static {v10, v11}, Lcom/apk/eo;->catch(D)I

    move-result v8

    int-to-float v10, v0

    mul-float v11, v15, v10

    move-object/from16 v24, v6

    float-to-double v5, v11

    .line 15
    invoke-static {v5, v6}, Lcom/apk/eo;->catch(D)I

    move-result v5

    .line 16
    div-int v6, v14, v8

    .line 17
    div-int v5, v0, v5

    if-ne v4, v7, :cond_8

    .line 18
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_7

    .line 19
    :cond_8
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 20
    :goto_7
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-gt v6, v8, :cond_9

    sget-object v6, Lcom/apk/eo;->break:Ljava/util/Set;

    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 21
    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    .line 22
    :cond_9
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v4, v7, :cond_a

    int-to-float v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v7, v6, v15

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    shl-int/lit8 v4, v5, 0x1

    move v5, v4

    .line 23
    :cond_a
    :goto_8
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 24
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v4, :cond_b

    const/16 v0, 0x8

    .line 25
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v12, v4

    float-to-double v6, v12

    .line 26
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    div-float/2addr v10, v4

    float-to-double v7, v10

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    .line 28
    div-int/2addr v5, v0

    if-lez v5, :cond_f

    .line 29
    div-int/2addr v6, v5

    .line 30
    div-int/2addr v4, v5

    goto :goto_9

    .line 31
    :cond_b
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v4, :cond_13

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v4, :cond_c

    goto :goto_c

    .line 32
    :cond_c
    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v9, v4, :cond_11

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v9, v4, :cond_d

    goto :goto_b

    .line 33
    :cond_d
    rem-int v4, v14, v5

    if-nez v4, :cond_10

    rem-int v4, v0, v5

    if-eqz v4, :cond_e

    goto :goto_a

    .line 34
    :cond_e
    div-int v6, v14, v5

    .line 35
    div-int v4, v0, v5

    :cond_f
    :goto_9
    move-object/from16 v0, p10

    goto :goto_e

    :cond_10
    :goto_a
    move-object/from16 v0, p10

    move-object/from16 v4, v24

    .line 36
    invoke-static {v1, v2, v0, v4}, Lcom/apk/eo;->else(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)[I

    move-result-object v4

    const/4 v5, 0x0

    .line 37
    aget v6, v4, v5

    const/4 v5, 0x1

    .line 38
    aget v4, v4, v5

    goto :goto_e

    :cond_11
    :goto_b
    move-object/from16 v0, p10

    .line 39
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_12

    int-to-float v4, v5

    div-float/2addr v12, v4

    .line 40
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float/2addr v10, v4

    .line 41
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_e

    :cond_12
    int-to-float v4, v5

    div-float/2addr v12, v4

    float-to-double v5, v12

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float/2addr v10, v4

    float-to-double v6, v10

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    goto :goto_d

    :cond_13
    :goto_c
    move-object/from16 v0, p10

    int-to-float v4, v5

    div-float/2addr v12, v4

    float-to-double v5, v12

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    div-float/2addr v10, v4

    float-to-double v6, v10

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    :goto_d
    double-to-int v4, v6

    move v6, v5

    :goto_e
    move/from16 v8, p7

    .line 46
    invoke-virtual {v3, v6, v4, v8, v13}, Lcom/apk/co;->if(IIII)F

    move-result v3

    float-to-double v3, v3

    .line 47
    invoke-static {v3, v4}, Lcom/apk/eo;->case(D)I

    move-result v5

    int-to-double v6, v5

    mul-double v6, v6, v3

    .line 48
    invoke-static {v6, v7}, Lcom/apk/eo;->catch(D)I

    move-result v6

    int-to-float v7, v6

    int-to-float v5, v5

    div-float/2addr v7, v5

    float-to-double v9, v7

    div-double v9, v3, v9

    int-to-double v5, v6

    mul-double v9, v9, v5

    .line 49
    invoke-static {v9, v10}, Lcom/apk/eo;->catch(D)I

    move-result v5

    .line 50
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 51
    invoke-static {v3, v4}, Lcom/apk/eo;->case(D)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 52
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v4, :cond_14

    if-lez v3, :cond_14

    if-eq v4, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    :goto_f
    if-eqz v3, :cond_15

    const/4 v3, 0x1

    .line 53
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_10

    :cond_15
    const/4 v3, 0x0

    .line 54
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :goto_10
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, v20

    move/from16 v5, v22

    move/from16 v3, v23

    goto/16 :goto_12

    .line 55
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round with null rounding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v22, v8

    move/from16 v23, v10

    move v8, v11

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot scale with factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", source: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v22

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], target: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object v0, v5

    move v5, v8

    move v3, v10

    move v8, v11

    const/16 v21, 0x0

    move-object v6, v15

    const/4 v7, 0x3

    .line 57
    :goto_11
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to determine dimensions for: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " with target ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_19
    const/4 v7, 0x0

    move-object/from16 v4, p0

    .line 59
    :goto_12
    iget-object v9, v4, Lcom/apk/eo;->try:Lcom/apk/jo;

    move/from16 v10, v18

    move/from16 v11, v19

    .line 60
    invoke-virtual {v9, v8, v13, v10, v11}, Lcom/apk/jo;->if(IIZZ)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 61
    sget-object v10, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v10, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    .line 62
    iput-boolean v10, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    goto :goto_13

    :cond_1a
    const/4 v10, 0x0

    :goto_13
    if-eqz v9, :cond_1c

    :cond_1b
    const/4 v9, 0x1

    goto :goto_16

    .line 63
    :cond_1c
    sget-object v9, Lcom/apk/ej;->do:Lcom/apk/ej;

    move-object/from16 v11, p4

    if-eq v11, v9, :cond_1f

    .line 64
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/apk/ko;->new()Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    const/4 v9, 0x3

    .line 65
    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot determine whether the image has alpha or not from header, format "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1d
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_1e

    .line 67
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_15

    :cond_1e
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_15
    iput-object v9, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    sget-object v11, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v9, v11, :cond_1b

    const/4 v9, 0x1

    .line 69
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    goto :goto_16

    :cond_1f
    const/4 v9, 0x1

    .line 70
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 71
    :goto_16
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v12, 0x2

    const/16 v14, 0x1a

    if-ltz v3, :cond_20

    if-ltz v5, :cond_20

    if-eqz p9, :cond_20

    move v11, v8

    goto :goto_19

    .line 72
    :cond_20
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-lez v8, :cond_21

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-lez v11, :cond_21

    if-eq v8, v11, :cond_21

    const/4 v8, 0x1

    goto :goto_17

    :cond_21
    const/4 v8, 0x0

    :goto_17
    if-eqz v8, :cond_22

    .line 73
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v8, v8

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    goto :goto_18

    :cond_22
    const/high16 v8, 0x3f800000    # 1.0f

    .line 74
    :goto_18
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    int-to-float v11, v11

    div-float/2addr v3, v11

    float-to-double v9, v3

    .line 75
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    int-to-float v5, v5

    div-float/2addr v5, v11

    float-to-double v9, v5

    .line 76
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    int-to-float v3, v3

    mul-float v3, v3, v8

    .line 77
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v3, v5

    mul-float v3, v3, v8

    .line 78
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v13

    :goto_19
    const/4 v3, 0x0

    if-lez v11, :cond_26

    if-lez v13, :cond_26

    .line 79
    iget-object v5, v4, Lcom/apk/eo;->do:Lcom/apk/pl;

    .line 80
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v14, :cond_24

    .line 81
    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v8, v9, :cond_23

    goto :goto_1b

    .line 82
    :cond_23
    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1a

    :cond_24
    move-object v8, v3

    :goto_1a
    if-nez v8, :cond_25

    .line 83
    iget-object v8, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 84
    :cond_25
    invoke-interface {v5, v11, v13, v8}, Lcom/apk/pl;->try(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 85
    :cond_26
    :goto_1b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v5, v8, :cond_29

    .line 86
    sget-object v5, Lcom/apk/nj;->if:Lcom/apk/nj;

    move-object/from16 v8, p5

    if-ne v8, v5, :cond_27

    iget-object v5, v2, Landroid/graphics/BitmapFactory$Options;->outColorSpace:Landroid/graphics/ColorSpace;

    if-eqz v5, :cond_27

    .line 87
    invoke-virtual {v5}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x1

    goto :goto_1c

    :cond_27
    const/4 v5, 0x0

    :goto_1c
    if-eqz v5, :cond_28

    .line 88
    sget-object v5, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1d

    :cond_28
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1d
    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    goto :goto_1e

    :cond_29
    if-lt v5, v14, :cond_2a

    .line 89
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 90
    :cond_2a
    :goto_1e
    iget-object v5, v4, Lcom/apk/eo;->do:Lcom/apk/pl;

    invoke-static {v1, v2, v0, v5}, Lcom/apk/eo;->new(Lcom/apk/ko;Landroid/graphics/BitmapFactory$Options;Lcom/apk/eo$if;Lcom/apk/pl;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 91
    iget-object v5, v4, Lcom/apk/eo;->do:Lcom/apk/pl;

    invoke-interface {v0, v5, v1}, Lcom/apk/eo$if;->do(Lcom/apk/pl;Landroid/graphics/Bitmap;)V

    .line 92
    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 93
    invoke-static {v1}, Lcom/apk/eo;->try(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 94
    iget-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/apk/eo;->try(Landroid/graphics/Bitmap;)Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 96
    invoke-static/range {v16 .. v17}, Lcom/apk/cs;->do(J)D

    :cond_2b
    if-eqz v1, :cond_2d

    .line 97
    iget-object v0, v4, Lcom/apk/eo;->if:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 98
    iget-object v0, v4, Lcom/apk/eo;->do:Lcom/apk/pl;

    packed-switch p6, :pswitch_data_2

    const/4 v9, 0x0

    goto :goto_1f

    :pswitch_4
    const/4 v9, 0x1

    :goto_1f
    if-nez v9, :cond_2c

    move-object v3, v1

    goto/16 :goto_21

    .line 99
    :cond_2c
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x43340000    # 180.0f

    const/high16 v8, -0x40800000    # -1.0f

    packed-switch p6, :pswitch_data_3

    goto :goto_20

    .line 100
    :pswitch_5
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    .line 101
    :pswitch_6
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    .line 103
    :pswitch_7
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_8
    const/high16 v3, 0x3f800000    # 1.0f

    .line 104
    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 105
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    :pswitch_9
    const/high16 v3, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 107
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_20

    .line 108
    :pswitch_a
    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_20

    :pswitch_b
    const/high16 v3, 0x3f800000    # 1.0f

    .line 109
    invoke-virtual {v2, v8, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 110
    :goto_20
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 111
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 112
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 113
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 114
    invoke-static {v1}, Lcom/apk/so;->case(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 115
    invoke-interface {v0, v5, v6, v7}, Lcom/apk/pl;->if(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 118
    invoke-static {v1, v0, v2}, Lcom/apk/so;->do(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    move-object v3, v0

    .line 119
    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 120
    iget-object v0, v4, Lcom/apk/eo;->do:Lcom/apk/pl;

    invoke-interface {v0, v1}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    :cond_2d
    return-object v3

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public if(Ljava/io/InputStream;IILcom/apk/mj;Lcom/apk/eo$if;)Lcom/apk/gl;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lcom/apk/mj;",
            "Lcom/apk/eo$if;",
            ")",
            "Lcom/apk/gl<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/apk/ko$do;

    iget-object v0, p0, Lcom/apk/eo;->new:Ljava/util/List;

    iget-object v2, p0, Lcom/apk/eo;->for:Lcom/apk/nl;

    invoke-direct {v1, p1, v0, v2}, Lcom/apk/ko$do;-><init>(Ljava/io/InputStream;Ljava/util/List;Lcom/apk/nl;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apk/eo;->do(Lcom/apk/ko;IILcom/apk/mj;Lcom/apk/eo$if;)Lcom/apk/gl;

    move-result-object p1

    return-object p1
.end method
