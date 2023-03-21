.class public Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;
.super Landroid/widget/LinearLayout;
.source "ViewPagerRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$if;,
        Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;
    }
.end annotation


# instance fields
.field public do:I

.field public for:Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView$do;

.field public if:Lcom/youth/banner/view/BannerViewPager;

.field public new:Lcom/apk/sg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    new-instance p1, Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, p2, v0}, Lcom/youth/banner/view/BannerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    .line 7
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/high16 v0, 0x43390000    # 185.0f

    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Lcom/apk/sg;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/sg;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->new:Lcom/apk/sg;

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;->if:Lcom/youth/banner/view/BannerViewPager;

    new-instance p2, Lcom/apk/dh;

    invoke-direct {p2, p0}, Lcom/apk/dh;-><init>(Lcom/biquge/ebook/app/widget/ViewPagerRecyclerView;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
