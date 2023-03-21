.class public final Lcom/apk/u$goto;
.super Ljava/lang/Object;
.source "ImageUtils.java"

# interfaces
.implements Lcom/apk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u;->break(Ljava/lang/String;Lcom/manhua/ui/widget/ComicImageLayout;Lcom/apk/j1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apk/cr<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/j1;

.field public final synthetic if:Lcom/manhua/ui/widget/ComicImageLayout;


# direct methods
.method public constructor <init>(Lcom/apk/j1;Lcom/manhua/ui/widget/ComicImageLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u$goto;->do:Lcom/apk/j1;

    iput-object p2, p0, Lcom/apk/u$goto;->if:Lcom/manhua/ui/widget/ComicImageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/dj;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 4
    sget p2, Lcom/apk/u;->else:I

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result p2

    sput p2, Lcom/apk/u;->else:I

    .line 6
    :cond_0
    sget p2, Lcom/apk/u;->else:I

    .line 7
    iget-object p3, p0, Lcom/apk/u$goto;->if:Lcom/manhua/ui/widget/ComicImageLayout;

    int-to-float p4, p2

    mul-float p1, p1, p4

    float-to-int p1, p1

    .line 8
    iget-object p4, p3, Lcom/manhua/ui/widget/ComicImageLayout;->for:Landroid/view/ViewGroup$LayoutParams;

    if-eqz p4, :cond_1

    iget p5, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p5, p2, :cond_1

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p4, p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p4, p3, Lcom/manhua/ui/widget/ComicImageLayout;->for:Landroid/view/ViewGroup$LayoutParams;

    if-nez p4, :cond_2

    .line 10
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput-object p4, p3, Lcom/manhua/ui/widget/ComicImageLayout;->for:Landroid/view/ViewGroup$LayoutParams;

    .line 11
    :cond_2
    iget-object p4, p3, Lcom/manhua/ui/widget/ComicImageLayout;->for:Landroid/view/ViewGroup$LayoutParams;

    iput p2, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iput p1, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {p3, p4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 15
    iget-object p2, p3, Lcom/manhua/ui/widget/ComicImageLayout;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {p2, p1}, Lcom/manhua/ui/widget/barrage/BarrageView;->setHeight(I)V

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/apk/u$goto;->do:Lcom/apk/j1;

    if-eqz p1, :cond_4

    .line 17
    invoke-interface {p1}, Lcom/apk/j1;->do()V

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public new(Lcom/apk/bl;Ljava/lang/Object;Lcom/apk/pr;Z)Z
    .locals 0
    .param p1    # Lcom/apk/bl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/bl;",
            "Ljava/lang/Object;",
            "Lcom/apk/pr<",
            "Landroid/graphics/Bitmap;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/apk/u$goto;->do:Lcom/apk/j1;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/apk/j1;->if()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
