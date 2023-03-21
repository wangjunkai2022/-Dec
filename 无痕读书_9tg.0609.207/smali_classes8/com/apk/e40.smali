.class public Lcom/apk/e40;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/e40$do;,
        Lcom/apk/e40$for;,
        Lcom/apk/e40$if;,
        Lcom/apk/e40$new;
    }
.end annotation


# instance fields
.field public do:Lcom/apk/b40;

.field public for:Lcom/apk/e40$new;

.field public if:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/apk/b40;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/e40;->do:Lcom/apk/b40;

    .line 3
    iput-object p2, p0, Lcom/apk/e40;->if:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x1

    .line 4
    invoke-interface {p1, p2}, Lcom/apk/b40;->setItemClickable(Z)V

    .line 5
    iget-object p1, p0, Lcom/apk/e40;->do:Lcom/apk/b40;

    new-instance p2, Lcom/apk/c40;

    invoke-direct {p2, p0}, Lcom/apk/c40;-><init>(Lcom/apk/e40;)V

    invoke-interface {p1, p2}, Lcom/apk/b40;->setOnItemSelectListener(Lcom/apk/b40$new;)V

    .line 6
    iget-object p1, p0, Lcom/apk/e40;->if:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcom/apk/d40;

    invoke-direct {p2, p0}, Lcom/apk/d40;-><init>(Lcom/apk/e40;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/e40$if;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/e40;->if:Landroidx/viewpager/widget/ViewPager;

    check-cast p1, Lcom/apk/e40$do;

    .line 2
    iget-object v1, p1, Lcom/apk/e40$do;->do:Lcom/apk/a40;

    .line 3
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/apk/e40;->do:Lcom/apk/b40;

    .line 5
    iget-object p1, p1, Lcom/apk/e40$do;->for:Lcom/apk/b40$if;

    .line 6
    invoke-interface {v0, p1}, Lcom/apk/b40;->setAdapter(Lcom/apk/b40$if;)V

    return-void
.end method

.method public if(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/e40;->if:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2
    iget-object v0, p0, Lcom/apk/e40;->do:Lcom/apk/b40;

    invoke-interface {v0, p1, p2}, Lcom/apk/b40;->if(IZ)V

    return-void
.end method
