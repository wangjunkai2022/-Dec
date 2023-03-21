.class public Lcom/apk/lp;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lp$do;,
        Lcom/apk/lp$for;,
        Lcom/apk/lp$if;
    }
.end annotation


# instance fields
.field public break:Lcom/apk/lp$do;

.field public case:Z

.field public catch:Z

.field public class:Lcom/apk/lp$do;

.field public const:Landroid/graphics/Bitmap;

.field public final do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

.field public else:Z

.field public final:Lcom/apk/lp$do;

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/lp$if;",
            ">;"
        }
    .end annotation
.end field

.field public goto:Z

.field public final if:Landroid/os/Handler;

.field public final new:Lcom/apk/qi;

.field public super:I

.field public this:Lcom/apk/pi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/pi<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public throw:I

.field public final try:Lcom/apk/pl;

.field public while:I


# direct methods
.method public constructor <init>(Lcom/apk/ii;Lcom/bumptech/glide/gifdecoder/GifDecoder;IILcom/apk/qj;Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/ii;",
            "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/apk/ii;->if:Lcom/apk/pl;

    .line 2
    invoke-virtual {p1}, Lcom/apk/ii;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lcom/apk/ii;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/ii;->case(Landroid/content/Context;)Lcom/apk/qi;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/apk/qi;->case()Lcom/apk/pi;

    move-result-object p1

    sget-object v2, Lcom/apk/uk;->do:Lcom/apk/uk;

    .line 5
    new-instance v3, Lcom/apk/dr;

    invoke-direct {v3}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v3, v2}, Lcom/apk/xq;->else(Lcom/apk/uk;)Lcom/apk/xq;

    move-result-object v2

    check-cast v2, Lcom/apk/dr;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/apk/xq;->abstract(Z)Lcom/apk/xq;

    move-result-object v2

    check-cast v2, Lcom/apk/dr;

    .line 7
    invoke-virtual {v2, v3}, Lcom/apk/xq;->finally(Z)Lcom/apk/xq;

    move-result-object v2

    check-cast v2, Lcom/apk/dr;

    .line 8
    invoke-virtual {v2, p3, p4}, Lcom/apk/xq;->return(II)Lcom/apk/xq;

    move-result-object p3

    .line 9
    invoke-virtual {p1, p3}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/apk/lp;->for:Ljava/util/List;

    .line 12
    iput-object v1, p0, Lcom/apk/lp;->new:Lcom/apk/qi;

    .line 13
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    new-instance v1, Lcom/apk/lp$for;

    invoke-direct {v1, p0}, Lcom/apk/lp$for;-><init>(Lcom/apk/lp;)V

    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 14
    iput-object v0, p0, Lcom/apk/lp;->try:Lcom/apk/pl;

    .line 15
    iput-object p3, p0, Lcom/apk/lp;->if:Landroid/os/Handler;

    .line 16
    iput-object p1, p0, Lcom/apk/lp;->this:Lcom/apk/pi;

    .line 17
    iput-object p2, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    .line 18
    invoke-virtual {p0, p5, p6}, Lcom/apk/lp;->for(Lcom/apk/qj;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/apk/lp;->case:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/apk/lp;->else:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/apk/lp;->goto:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/apk/eg;->try(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->try()V

    .line 5
    iput-boolean v2, p0, Lcom/apk/lp;->goto:Z

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    .line 8
    invoke-virtual {p0, v0}, Lcom/apk/lp;->if(Lcom/apk/lp$do;)V

    return-void

    .line 9
    :cond_3
    iput-boolean v1, p0, Lcom/apk/lp;->else:Z

    .line 10
    iget-object v0, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->new()I

    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 12
    iget-object v0, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->if()V

    .line 13
    new-instance v0, Lcom/apk/lp$do;

    iget-object v3, p0, Lcom/apk/lp;->if:Landroid/os/Handler;

    iget-object v4, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->case()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/apk/lp$do;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/apk/lp;->class:Lcom/apk/lp$do;

    .line 14
    iget-object v0, p0, Lcom/apk/lp;->this:Lcom/apk/pi;

    .line 15
    new-instance v1, Lcom/apk/vr;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apk/vr;-><init>(Ljava/lang/Object;)V

    .line 16
    new-instance v2, Lcom/apk/dr;

    invoke-direct {v2}, Lcom/apk/dr;-><init>()V

    invoke-virtual {v2, v1}, Lcom/apk/xq;->extends(Lcom/apk/kj;)Lcom/apk/xq;

    move-result-object v1

    check-cast v1, Lcom/apk/dr;

    .line 17
    invoke-virtual {v0, v1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/lp;->do:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0, v1}, Lcom/apk/pi;->a(Ljava/lang/Object;)Lcom/apk/pi;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/lp;->class:Lcom/apk/lp$do;

    invoke-virtual {v0, v1}, Lcom/apk/pi;->protected(Lcom/apk/pr;)Lcom/apk/pr;

    :cond_4
    :goto_1
    return-void
.end method

.method public for(Lcom/apk/qj;Landroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/qj<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p2, v0}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/apk/lp;->const:Landroid/graphics/Bitmap;

    .line 4
    iget-object v0, p0, Lcom/apk/lp;->this:Lcom/apk/pi;

    new-instance v1, Lcom/apk/dr;

    invoke-direct {v1}, Lcom/apk/dr;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, p1, v2}, Lcom/apk/xq;->package(Lcom/apk/qj;Z)Lcom/apk/xq;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/apk/pi;->strictfp(Lcom/apk/xq;)Lcom/apk/pi;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/lp;->this:Lcom/apk/pi;

    .line 7
    invoke-static {p2}, Lcom/apk/gs;->case(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/apk/lp;->super:I

    .line 8
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/apk/lp;->throw:I

    .line 9
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/apk/lp;->while:I

    return-void
.end method

.method public if(Lcom/apk/lp$do;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/lp;->else:Z

    .line 2
    iget-boolean v0, p0, Lcom/apk/lp;->catch:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/lp;->if:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/apk/lp;->case:Z

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lcom/apk/lp;->final:Lcom/apk/lp$do;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/apk/lp$do;->else:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/apk/lp;->const:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 8
    iget-object v2, p0, Lcom/apk/lp;->try:Lcom/apk/pl;

    invoke-interface {v2, v0}, Lcom/apk/pl;->do(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/apk/lp;->const:Landroid/graphics/Bitmap;

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/apk/lp;->break:Lcom/apk/lp$do;

    .line 11
    iput-object p1, p0, Lcom/apk/lp;->break:Lcom/apk/lp$do;

    .line 12
    iget-object p1, p0, Lcom/apk/lp;->for:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Lcom/apk/lp;->for:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/lp$if;

    .line 14
    invoke-interface {v2}, Lcom/apk/lp$if;->do()V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Lcom/apk/lp;->if:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/apk/lp;->do()V

    return-void
.end method
