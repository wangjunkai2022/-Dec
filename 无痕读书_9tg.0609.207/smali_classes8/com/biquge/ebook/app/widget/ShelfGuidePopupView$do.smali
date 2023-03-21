.class public Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;
.super Ljava/lang/Object;
.source "ShelfGuidePopupView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;

    .line 3
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;

    .line 5
    iget-object v2, v2, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x40c00000    # 6.0f

    .line 7
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 8
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/apk/eg;->catch(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView$do;->do:Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;

    .line 10
    iget-object v1, v1, Lcom/biquge/ebook/app/widget/ShelfGuidePopupView;->if:Landroid/widget/ImageView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
