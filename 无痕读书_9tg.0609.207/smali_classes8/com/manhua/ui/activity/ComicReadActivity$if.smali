.class public Lcom/manhua/ui/activity/ComicReadActivity$if;
.super Ljava/lang/Object;
.source "ComicReadActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/activity/ComicReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iput-boolean v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->throws:Z

    .line 3
    iget-object v2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v2}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 6
    iput-boolean v1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->throws:Z

    .line 7
    iput-boolean v1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->default:Z

    .line 8
    iget-object v2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v2}, Lcom/manhua/ui/widget/ComicReadMenuView;->native()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->const()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 11
    iput-boolean v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->throws:Z

    .line 12
    iput-boolean v1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->extends:Z

    .line 13
    iput-boolean v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->default:Z

    .line 14
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_6

    .line 15
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/apk/h00;

    invoke-direct {v3, p1}, Lcom/apk/h00;-><init>(Lcom/apk/f00;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 17
    iget-object v2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz v2, :cond_5

    .line 18
    iget-boolean p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->default:Z

    if-eqz p1, :cond_4

    .line 19
    iput-boolean v1, v2, Lcom/apk/f00;->strictfp:Z

    .line 20
    invoke-virtual {v2}, Lcom/apk/f00;->default()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {v2}, Lcom/apk/f00;->if()V

    .line 23
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 24
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/apk/f00;->n()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 p1, 0x0

    .line 26
    throw p1
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-boolean p2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->switch:Z

    if-eqz p2, :cond_0

    .line 3
    iget-boolean p2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->throws:Z

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 4
    iget-boolean p2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->extends:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->extends:Z

    .line 6
    invoke-virtual {p1}, Lcom/manhua/ui/activity/ComicReadActivity;->import()V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/f00;->k(I)V

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 5
    iget-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/apk/f00;->static(Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {v1}, Lcom/apk/f00;->extends()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v1}, Lcom/apk/f00;->import()I

    move-result v3

    if-nez v3, :cond_1

    if-nez p1, :cond_3

    :goto_0
    const/4 v2, 0x1

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/apk/f00;->import()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 10
    iget-object v1, v1, Lcom/apk/f00;->class:Lcom/apk/lz;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/apk/lz;->getCount()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    :goto_2
    iput-boolean v2, v0, Lcom/manhua/ui/activity/ComicReadActivity;->switch:Z

    .line 12
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$if;->do:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 13
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 14
    invoke-virtual {p1}, Lcom/apk/f00;->goto()V

    return-void
.end method
