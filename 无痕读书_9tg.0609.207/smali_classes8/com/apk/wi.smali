.class public Lcom/apk/wi;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public const:I

.field public do:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public else:I

.field public for:I

.field public goto:Z

.field public if:I

.field public new:Lcom/apk/vi;

.field public this:I

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apk/vi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/apk/wi;->do:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/wi;->if:I

    .line 4
    iput v0, p0, Lcom/apk/wi;->for:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/wi;->try:Ljava/util/List;

    return-void
.end method
