.class public Lcom/apk/lp$do;
.super Lcom/apk/ir;
.source "GifFrameLoader.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ir<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final case:J

.field public else:Landroid/graphics/Bitmap;

.field public final new:Landroid/os/Handler;

.field public final try:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;IJ)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/apk/ir;-><init>(II)V

    .line 2
    iput-object p1, p0, Lcom/apk/lp$do;->new:Landroid/os/Handler;

    .line 3
    iput p2, p0, Lcom/apk/lp$do;->try:I

    .line 4
    iput-wide p3, p0, Lcom/apk/lp$do;->case:J

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;Lcom/apk/sr;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/sr;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    iput-object p1, p0, Lcom/apk/lp$do;->else:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p0, Lcom/apk/lp$do;->new:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/apk/lp$do;->new:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/apk/lp$do;->case:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public this(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/apk/lp$do;->else:Landroid/graphics/Bitmap;

    return-void
.end method
