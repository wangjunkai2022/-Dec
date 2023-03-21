.class public Lcom/apk/qg;
.super Ljava/lang/Object;
.source "ComicViewPagerRecyclerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/qg;->do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/qg;->do:Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/ComicViewPagerRecyclerView;->new:Lcom/apk/sg;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/sg;->setSelectedPage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
