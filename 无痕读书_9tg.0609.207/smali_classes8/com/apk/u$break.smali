.class public final Lcom/apk/u$break;
.super Ljava/lang/Object;
.source "ImageUtils.java"

# interfaces
.implements Lcom/apk/cr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/u;->class(Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V
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

.field public final synthetic if:Lcom/manhua/ui/widget/barrage/BarrageView;


# direct methods
.method public constructor <init>(Lcom/apk/j1;Lcom/manhua/ui/widget/barrage/BarrageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u$break;->do:Lcom/apk/j1;

    iput-object p2, p0, Lcom/apk/u$break;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case(Ljava/lang/Object;Ljava/lang/Object;Lcom/apk/pr;Lcom/apk/dj;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-static {}, Lcom/apk/eg;->static()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 6
    sget p3, Lcom/apk/u;->else:I

    if-nez p3, :cond_0

    .line 7
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result p3

    sput p3, Lcom/apk/u;->else:I

    .line 8
    :cond_0
    sget p3, Lcom/apk/u;->else:I

    int-to-float p4, p3

    mul-float p1, p1, p4

    float-to-int p1, p1

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, p1

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/apk/u$break;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 10
    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 11
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object p3, p0, Lcom/apk/u$break;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/apk/u$break;->if:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/barrage/BarrageView;->setHeight(I)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/apk/u$break;->do:Lcom/apk/j1;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lcom/apk/j1;->do()V

    :cond_3
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
    iget-object p1, p0, Lcom/apk/u$break;->do:Lcom/apk/j1;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/apk/j1;->if()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
