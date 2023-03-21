.class public abstract Lcom/apk/l;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BaseFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/fragment/app/Fragment;",
        ">",
        "Landroidx/fragment/app/FragmentPagerAdapter;"
    }
.end annotation


# instance fields
.field public final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public if:Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/l;->do:Ljava/util/List;

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/apk/w7;

    .line 4
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/fragment/HomeFragment;-><init>()V

    .line 5
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 6
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 7
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->break:Lcom/biquge/ebook/app/ui/fragment/HomeFragment;

    .line 8
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;-><init>()V

    .line 10
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->catch:Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;

    .line 11
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 12
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->catch:Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;-><init>()V

    .line 15
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->class:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

    .line 16
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 17
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->class:Lcom/biquge/ebook/app/ui/fragment/MainCategoryFragment;

    .line 18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 20
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/DiscoverBean;->getDiscoverTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 22
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    .line 23
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/DiscoverBean;->getDiscoverUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 24
    invoke-static {v1, v2, v3, v4, v4}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 26
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->goto:Lcom/biquge/ebook/app/bean/DiscoverBean;

    .line 27
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/DiscoverBean;->getDiscoverTitle()Ljava/lang/String;

    move-result-object v2

    .line 28
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->else:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->is_tab_show()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    new-instance v1, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;

    invoke-direct {v1}, Lcom/biquge/ebook/app/ui/fragment/LocalWebShareFragment;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 33
    iget-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->this:Lcom/biquge/ebook/app/bean/NewShareDisBean;

    .line 34
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/NewShareDisBean;->getTab_name()Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->else:Ljava/lang/String;

    .line 36
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    new-instance v2, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    invoke-direct {v2}, Lcom/biquge/ebook/app/ui/fragment/InfoFragment;-><init>()V

    .line 37
    iput-object v2, v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->const:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 38
    iget-object v0, v0, Lcom/apk/w7;->for:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    .line 39
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MainActivity;->const:Lcom/biquge/ebook/app/ui/fragment/InfoFragment;

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/l;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/l;->do:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/l;->if:Landroidx/fragment/app/Fragment;

    if-eq v0, p3, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Lcom/apk/l;->if:Landroidx/fragment/app/Fragment;

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
