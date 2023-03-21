.class public Lcom/apk/xs;
.super Ljava/lang/Object;
.source "PtrIndicator.java"


# instance fields
.field public break:F

.field public case:I

.field public catch:Z

.field public class:I

.field public const:I

.field public do:I

.field public else:I

.field public for:F

.field public goto:I

.field public if:Landroid/graphics/PointF;

.field public new:F

.field public this:F

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/xs;->do:I

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/apk/xs;->if:Landroid/graphics/PointF;

    .line 4
    iput v0, p0, Lcom/apk/xs;->try:I

    .line 5
    iput v0, p0, Lcom/apk/xs;->case:I

    .line 6
    iput v0, p0, Lcom/apk/xs;->goto:I

    const v1, 0x3f99999a    # 1.2f

    .line 7
    iput v1, p0, Lcom/apk/xs;->this:F

    const v1, 0x3fd9999a    # 1.7f

    .line 8
    iput v1, p0, Lcom/apk/xs;->break:F

    .line 9
    iput-boolean v0, p0, Lcom/apk/xs;->catch:Z

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/apk/xs;->class:I

    .line 11
    iput v0, p0, Lcom/apk/xs;->const:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xs;->class:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/apk/xs;->else:I

    :goto_0
    return v0
.end method

.method public for()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xs;->try:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/apk/xs;->try:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
