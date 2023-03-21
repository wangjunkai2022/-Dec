.class public Lcom/apk/j40;
.super Ljava/lang/Object;
.source "ColorGradient.java"


# instance fields
.field public do:I

.field public for:[I

.field public if:[I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/apk/j40;->do:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/apk/j40;->do(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/apk/j40;->if:[I

    .line 4
    invoke-virtual {p0, p2}, Lcom/apk/j40;->do(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/apk/j40;->for:[I

    return-void
.end method


# virtual methods
.method public final do(I)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object v0
.end method
