.class public Lcom/apk/h20;
.super Lcom/apk/yv;
.source "ComicReadMenuView.java"


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 3

    const v0, 0x7f090426

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x42a00000    # 80.0f

    .line 3
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iget-object v2, p0, Lcom/apk/h20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v2}, Lcom/manhua/ui/widget/ComicReadMenuView;->try(Lcom/manhua/ui/widget/ComicReadMenuView;)I

    move-result v2

    add-int/2addr v2, v1

    .line 4
    invoke-static {}, Lcom/apk/u0;->do()Lcom/apk/u0;

    move-result-object v1

    .line 5
    iget v1, v1, Lcom/apk/u0;->if:I

    add-int/2addr v2, v1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 6
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/high16 v1, 0x42700000    # 60.0f

    .line 7
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x50

    .line 8
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
