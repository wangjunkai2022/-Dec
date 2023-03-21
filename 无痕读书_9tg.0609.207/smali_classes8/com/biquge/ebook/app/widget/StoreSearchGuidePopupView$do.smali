.class public Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;
.super Ljava/lang/Object;
.source "StoreSearchGuidePopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    .line 4
    iget v2, v1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->new:I

    .line 5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    sub-int/2addr v1, v3

    if-le v2, v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    .line 6
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0xb

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    .line 9
    iget v1, v1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->new:I

    .line 10
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    const/4 v1, 0x3

    const v2, 0x7f090424

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 12
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 13
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    .line 14
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->case:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
