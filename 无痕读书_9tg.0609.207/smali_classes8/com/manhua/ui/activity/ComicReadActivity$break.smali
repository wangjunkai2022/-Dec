.class public Lcom/manhua/ui/activity/ComicReadActivity$break;
.super Lcom/apk/c1;
.source "ComicReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/ComicReadActivity;->y(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/manhua/ui/activity/ComicReadActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/ComicReadActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iput-object p2, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->do:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    .line 6
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 8
    invoke-static {v0, v2}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 10
    iput-object v0, v1, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getReadChapterId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-static {v0, v2}, Lcom/apk/z2;->super(Ljava/lang/String;Z)Lcom/manhua/data/bean/ComicBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 14
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getFirstChapterId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "firstChapterId"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-class v1, Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "collectId = ?"

    aput-object v6, v4, v5

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lorg/litepal/LitePal;->updateAll(Ljava/lang/Class;Landroid/content/ContentValues;[Ljava/lang/String;)I

    .line 16
    :cond_1
    invoke-static {v0}, Lcom/apk/mu;->finally(Ljava/lang/String;)Lcom/manhua/data/bean/ComicCollectBean;

    move-result-object v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 18
    iput-object v1, v0, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    .line 19
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    .line 3
    iget-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->const:Lcom/apk/f00;

    .line 4
    iget-object v1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mViewPager:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v2, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mRecyclerView:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 5
    iget-object v3, p1, Lcom/manhua/ui/activity/ComicReadActivity;->this:Lcom/apk/l30;

    .line 6
    iget-object v4, p1, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    .line 7
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    .line 8
    iget-object v5, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->do:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    .line 10
    iput-object v2, v0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    .line 11
    iput-object v4, v0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    .line 12
    iput-object p1, v0, Lcom/apk/f00;->new:Lcom/manhua/data/bean/ComicCollectBean;

    .line 13
    new-instance p1, Lcom/apk/lz;

    iget-object v1, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/apk/f00;->import()I

    move-result v2

    iget-object v4, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/apk/lz;-><init>(Landroid/app/Activity;ILcom/apk/l30;Lcom/apk/import;)V

    iput-object p1, v0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 14
    iget-object v1, v0, Lcom/apk/f00;->finally:Lcom/apk/l00;

    .line 15
    iput-object v1, p1, Lcom/apk/lz;->this:Lcom/apk/l00;

    .line 16
    iget-object v1, v0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 17
    new-instance p1, Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    iget-object v1, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    iget-object v2, v0, Lcom/apk/f00;->super:Lcom/apk/import;

    invoke-direct {p1, v1, v2}, Lcom/manhua/adapter/ComicRecyclerViewAdapter;-><init>(Landroid/app/Activity;Lcom/apk/import;)V

    iput-object p1, v0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    .line 18
    iget-object v1, v0, Lcom/apk/f00;->finally:Lcom/apk/l00;

    .line 19
    iput-object v1, p1, Lcom/manhua/adapter/ComicRecyclerViewAdapter;->for:Lcom/apk/l00;

    .line 20
    iget-object v1, v0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 21
    iget-object p1, v0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->setOnScrollStateListener(Lcom/apk/u20$for;)V

    .line 22
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    iget-object v1, v0, Lcom/apk/f00;->abstract:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    invoke-virtual {p1, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setOnBarrageListener(Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;)V

    .line 23
    new-instance p1, Lcom/apk/bs;

    const/high16 v1, -0x80000000

    invoke-direct {p1, v1, v1}, Lcom/apk/bs;-><init>(II)V

    .line 24
    new-instance v1, Lcom/apk/f00$this;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/apk/f00$this;-><init>(Lcom/apk/f00;Lcom/apk/g00;)V

    .line 25
    new-instance v2, Lcom/apk/cj;

    iget-object v3, v0, Lcom/apk/qz;->if:Landroid/app/Activity;

    const-string v4, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 26
    invoke-static {v3, v4}, Lcom/apk/eg;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    invoke-static {v3}, Lcom/apk/ii;->new(Landroid/content/Context;)Lcom/apk/ii;

    move-result-object v4

    .line 28
    iget-object v4, v4, Lcom/apk/ii;->else:Lcom/apk/hq;

    .line 29
    invoke-virtual {v4, v3}, Lcom/apk/hq;->if(Landroid/app/Activity;)Lcom/apk/qi;

    move-result-object v3

    .line 30
    iget v4, v0, Lcom/apk/f00;->goto:I

    if-nez v4, :cond_0

    const/4 v4, 0x6

    const-string v6, "SP_PRELOAD_COMIC_IMAGE_SIZE_KEY"

    .line 31
    invoke-static {v6, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/apk/f00;->goto:I

    .line 32
    :cond_0
    iget v4, v0, Lcom/apk/f00;->goto:I

    .line 33
    invoke-direct {v2, v3, v1, p1, v4}, Lcom/apk/cj;-><init>(Lcom/apk/qi;Lcom/apk/mi$do;Lcom/apk/mi$if;I)V

    .line 34
    iget-object p1, v0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 35
    new-instance p1, Lcom/apk/b1;

    invoke-direct {p1}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/apk/g00;

    invoke-direct {v1, v0, v5}, Lcom/apk/g00;-><init>(Lcom/apk/f00;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 36
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-object v0, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 37
    iget-object v1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->final:Lcom/manhua/data/bean/ComicBean;

    .line 38
    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->super:Lcom/manhua/data/bean/ComicCollectBean;

    .line 39
    invoke-virtual {v0, v1, p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->return(Lcom/manhua/data/bean/ComicBean;Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 40
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicReadActivity$break;->if:Lcom/manhua/ui/activity/ComicReadActivity;

    iget-object p1, p1, Lcom/manhua/ui/activity/ComicReadActivity;->mMenuView:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->throw()V

    return-void
.end method
