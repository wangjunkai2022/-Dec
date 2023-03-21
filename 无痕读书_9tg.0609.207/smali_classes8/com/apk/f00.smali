.class public Lcom/apk/f00;
.super Lcom/apk/qz;
.source "ComicReadPresenter.java"

# interfaces
.implements Lcom/apk/u20$for;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/f00$this;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/qz<",
        "Lcom/apk/k00;",
        ">;",
        "Lcom/apk/u20$for;"
    }
.end annotation


# instance fields
.field public final abstract:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

.field public final break:Lcom/apk/e00;

.field public case:Ljava/lang/String;

.field public catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

.field public class:Lcom/apk/lz;

.field public const:Lcom/manhua/ui/widget/ZoomRecyclerView;

.field public continue:Z

.field public final default:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public else:I

.field public final extends:Lcom/apk/import$try;

.field public final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

.field public final finally:Lcom/apk/l00;

.field public for:Lcom/manhua/data/bean/ComicBean;

.field public goto:I

.field public final import:Lcom/apk/k1;

.field public native:I

.field public new:Lcom/manhua/data/bean/ComicCollectBean;

.field public package:Z

.field public private:Z

.field public public:I

.field public return:Lcom/biquge/ebook/app/bean/BookChapter;

.field public static:Z

.field public strictfp:Z

.field public final super:Lcom/apk/import;

.field public final switch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public this:Z

.field public throw:Lcom/apk/zg;

.field public throws:Ljava/lang/String;

.field public try:Ljava/lang/String;

.field public final volatile:Lcom/apk/pz;

.field public final while:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/apk/k00;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/apk/qz;-><init>(Landroid/app/Activity;Lcom/apk/rz;)V

    .line 2
    new-instance p1, Lcom/apk/f00$new;

    invoke-direct {p1, p0}, Lcom/apk/f00$new;-><init>(Lcom/apk/f00;)V

    iput-object p1, p0, Lcom/apk/f00;->import:Lcom/apk/k1;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/apk/f00;->switch:Ljava/util/Map;

    .line 4
    new-instance p1, Lcom/apk/gg;

    invoke-direct {p1}, Lcom/apk/gg;-><init>()V

    iput-object p1, p0, Lcom/apk/f00;->default:Lcom/apk/gg;

    .line 5
    new-instance p1, Lcom/apk/f00$case;

    invoke-direct {p1, p0}, Lcom/apk/f00$case;-><init>(Lcom/apk/f00;)V

    iput-object p1, p0, Lcom/apk/f00;->extends:Lcom/apk/import$try;

    .line 6
    new-instance p1, Lcom/apk/f00$else;

    invoke-direct {p1, p0}, Lcom/apk/f00$else;-><init>(Lcom/apk/f00;)V

    iput-object p1, p0, Lcom/apk/f00;->finally:Lcom/apk/l00;

    .line 7
    new-instance p1, Lcom/apk/f00$do;

    invoke-direct {p1, p0}, Lcom/apk/f00$do;-><init>(Lcom/apk/f00;)V

    iput-object p1, p0, Lcom/apk/f00;->abstract:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    .line 8
    new-instance p1, Lcom/apk/f00$for;

    invoke-direct {p1, p0}, Lcom/apk/f00$for;-><init>(Lcom/apk/f00;)V

    iput-object p1, p0, Lcom/apk/f00;->volatile:Lcom/apk/pz;

    .line 9
    iput-object p2, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    .line 10
    new-instance p1, Lcom/apk/e00;

    invoke-direct {p1}, Lcom/apk/e00;-><init>()V

    iput-object p1, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    .line 11
    new-instance p1, Lcom/apk/import;

    sget-object p2, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-direct {p1, p2}, Lcom/apk/import;-><init>(Lcom/apk/hf;)V

    iput-object p1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    return-void
.end method

.method public static case(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-1"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static for(Lcom/apk/f00;I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "BOOKRE_CHAPTER_PAGE_AD_TYPE"

    invoke-static {p1, p0}, Lcom/apk/mf;->do(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static native(Lcom/biquge/ebook/app/bean/BookChapter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static new(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_2

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic try(Lcom/apk/f00;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static while(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOAD_AD_CHAPTER_ID"

    const-string v1, ""

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V

    .line 2
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 3
    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/apk/f00$if;

    invoke-direct {v2, p0, v0, p1}, Lcom/apk/f00$if;-><init>(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/apk/f00;->m(Z)V

    .line 6
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadMore(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/apk/zg;

    iget-object v1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/apk/zg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    iget-object v1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0, v1}, Lcom/apk/zg;->do(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized b(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/f00;->continue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/apk/f00;->continue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadUp(Z)V

    .line 5
    invoke-virtual {p0, v2}, Lcom/apk/f00;->m(Z)V

    .line 6
    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/apk/f00$goto;

    invoke-direct {v2, p0, v0, p1}, Lcom/apk/f00$goto;-><init>(Lcom/apk/f00;Lcom/manhua/data/bean/ComicChapterBean;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 9
    iget-object p1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v1}, Lcom/manhua/ui/widget/PageRecyclerView;->setLoadUp(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final break(Lcom/manhua/data/bean/ComicChapterBean;)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 10
    new-instance v0, Lcom/apk/a00;

    invoke-direct {v0, p0, v1}, Lcom/apk/a00;-><init>(Lcom/apk/f00;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final catch()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->new:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final class()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->new:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;
    .locals 5

    const-string v0, "LOAD_AD_CHAPTER_ID"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/e00;->if(Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v2, v4}, Lcom/manhua/data/bean/ComicChapterBean;->setHasContent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method

.method public synthetic continue(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v0, Lcom/apk/k00;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/apk/k00;->do(ZZ)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/f00;->private:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v1}, Lcom/apk/lz;->getCount()I

    move-result v1

    :goto_1
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_5

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/f00;->static(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v0, Lcom/apk/k00;

    invoke-interface {v0}, Lcom/apk/k00;->import()V

    :cond_3
    return-void

    .line 7
    :cond_4
    invoke-virtual {p0, v2}, Lcom/apk/f00;->a(Z)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/2addr v0, v2

    .line 9
    iget-object v1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/k00;

    invoke-interface {v1, v0}, Lcom/apk/k00;->g(I)V

    goto :goto_2

    .line 10
    :cond_6
    iget-object v1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    add-int/2addr v0, v2

    invoke-virtual {v1, v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public default()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "SP_READ_SHOW_DARRAGE_KEY"

    .line 2
    invoke-static {v1, v0}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public do()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/f00;->strictfp:Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/import;->case()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Lcom/apk/e00;->do:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    if-eqz v0, :cond_4

    .line 9
    iget-object v1, v0, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v2}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v0, Lcom/apk/lz;->goto:Lcom/apk/gg;

    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/apk/f00;->default:Lcom/apk/gg;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/apk/gg;->clear()V

    :cond_5
    return-void
.end method

.method public final else(Lcom/manhua/data/bean/ComicChapterBean;I)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, p2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p2, 0x1

    .line 3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/apk/f00;->super(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    invoke-virtual {p0, v2}, Lcom/apk/f00;->public(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 7
    invoke-static {p1, v1}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0, v2}, Lcom/apk/f00;->public(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lcom/apk/f00;->transient(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0, p1}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    new-instance v0, Lcom/apk/sz;

    invoke-direct {v0, p0, p2, v3}, Lcom/apk/sz;-><init>(Lcom/apk/f00;ILjava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 16
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-static {p1, v1}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p0, p1}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_2
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    new-instance v0, Lcom/apk/yz;

    invoke-direct {v0, p0, p2}, Lcom/apk/yz;-><init>(Lcom/apk/f00;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    return-void
.end method

.method public final extends()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/n0;->new()Lcom/apk/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->isRewardAdType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "read"

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/f;->this()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/apk/e;->while()Lcom/apk/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/apk/e;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swl/gg/sdk/TrAdSdk;->isFullAdType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apk/f;->this()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-static {}, Lcom/apk/c;->while()Lcom/apk/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apk/g;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/apk/g;->do()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/apk/c;->native(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final()Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/f00;->super(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/f00;->super(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public finally(ILjava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->remove(I)V

    .line 3
    iget-object p1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    add-int/lit8 p1, p1, -0x1

    .line 6
    iget-object v1, v1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 8
    iget-object p1, p1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    add-int/lit8 p1, p1, 0x1

    .line 10
    iget-object v1, v1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 12
    iget-object p1, p1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_1
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    return-void

    :goto_2
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    .line 16
    throw p1
.end method

.method public g()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/apk/f00;->private:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/k00;

    invoke-interface {v1, v0}, Lcom/apk/k00;->g(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/apk/f00;->return()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p0, v1}, Lcom/apk/f00;->b(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    iget-object v2, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/apk/f00;->return()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p0, v1}, Lcom/apk/f00;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public goto()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/f00;->else:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/apk/import;->if(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-static {v1}, Lcom/apk/ze;->switch(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    const-string v2, "ContinueReadTView"

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/apk/import;->try()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 8
    iget-boolean v3, v1, Lcom/apk/import;->try:Z

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v1, v0}, Lcom/apk/import;->if(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    if-eqz v0, :cond_3

    .line 11
    check-cast v0, Lcom/apk/k00;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apk/k00;->case(Z)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v0}, Lcom/apk/f00;->this(Landroid/widget/TextView;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/apk/f00;->this(Landroid/widget/TextView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apk/o;->new()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/apk/f00$try;

    invoke-direct {v1, p0}, Lcom/apk/f00$try;-><init>(Lcom/apk/f00;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/f00;->else:I

    invoke-virtual {p0, v0}, Lcom/apk/f00;->j(I)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    move-object v5, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lcom/apk/f00;->for:Lcom/manhua/data/bean/ComicBean;

    iget-object v3, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    const/4 v7, 0x1

    const-string v4, ""

    const/4 v8, 0x1

    .line 6
    invoke-static/range {v2 .. v8}, Lcom/apk/mu;->v(Lcom/manhua/data/bean/ComicBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 7
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 8
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/f00;->class()Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 9
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public if()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/f00;->strictfp:Z

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->setScrollState(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/apk/f00;->n()V

    :cond_0
    return-void
.end method

.method public final implements(Ljava/lang/String;Ljava/lang/String;II)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_AD_CHAPTER_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 6
    invoke-virtual {v0, p4}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    const/4 p1, 0x3

    .line 7
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    return-object v0
.end method

.method public import()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SP_READ_PAGE_MODE_KEY"

    .line 2
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final instanceof(Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            ")",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final interface(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOAD_AD_CHAPTER_ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100083

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    return-object v0
.end method

.method public final j(I)V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/apk/f00;->native:I

    .line 2
    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 3
    iput v0, v1, Lcom/apk/import;->case:I

    .line 4
    iput p1, p0, Lcom/apk/f00;->else:I

    .line 5
    iget-object p1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast p1, Lcom/apk/k00;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/apk/k00;->do(ZZ)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    iget-boolean v4, p0, Lcom/apk/f00;->package:Z

    if-eqz v4, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iput-boolean v1, p0, Lcom/apk/f00;->package:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 13
    invoke-static {v2, v1}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    const/4 v5, 0x0

    .line 15
    invoke-static {v2, v4, v5, v3}, Lcom/apk/mu;->extends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 17
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 18
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 19
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {v3, v0}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/apk/mu;->default(Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    :cond_5
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v3

    .line 23
    invoke-virtual {p0, v3, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object v5

    .line 24
    move-object v6, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    and-int/2addr v6, v1

    if-eqz v6, :cond_7

    .line 25
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {p0, v3}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 28
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    .line 29
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {v2, v0}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 31
    invoke-virtual {p0, v2}, Lcom/apk/f00;->transient(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 32
    :cond_9
    invoke-virtual {p0, v2, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object v5

    .line 33
    move-object v6, v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    and-int/2addr v7, v1

    if-eqz v7, :cond_e

    .line 34
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 35
    iget-object v7, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    invoke-virtual {v7}, Lcom/apk/import;->for()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 36
    iget v7, p0, Lcom/apk/f00;->else:I

    if-lez v7, :cond_b

    add-int/lit8 v7, v7, -0x1

    .line 37
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_6
    if-ge v7, v8, :cond_d

    .line 38
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 39
    iget v10, p0, Lcom/apk/f00;->native:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/apk/f00;->native:I

    if-eqz v10, :cond_c

    .line 40
    iget-object v11, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 41
    iget v11, v11, Lcom/apk/import;->goto:I

    .line 42
    rem-int/2addr v10, v11

    if-nez v10, :cond_c

    .line 43
    invoke-virtual {v9}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v10, v9, v8, v7}, Lcom/apk/f00;->implements(Ljava/lang/String;Ljava/lang/String;II)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 44
    :cond_d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    :cond_e
    :goto_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 46
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 48
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 49
    invoke-static {v4, v0}, Lcom/apk/f00;->throws(Lcom/manhua/data/bean/ComicChapterBean;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 50
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/apk/mu;->default(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    :cond_f
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p0, v2}, Lcom/apk/f00;->instanceof(Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;

    move-result-object v6

    .line 54
    move-object v7, v6

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_10

    const/4 v0, 0x1

    :cond_10
    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 55
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    .line 56
    :cond_11
    invoke-virtual {p0, v2}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_12
    move v2, v0

    move v0, v3

    goto :goto_9

    .line 59
    :cond_13
    iput v0, p0, Lcom/apk/f00;->else:I

    .line 60
    invoke-virtual {p0, v2}, Lcom/apk/f00;->transient(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 61
    :goto_9
    iget v3, p0, Lcom/apk/f00;->else:I

    if-lez v3, :cond_14

    add-int/lit8 v3, v3, -0x1

    .line 62
    :cond_14
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v4

    if-nez v4, :cond_15

    add-int/2addr v2, v5

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    goto :goto_a

    :cond_15
    add-int v2, v0, v3

    .line 63
    :goto_a
    iget-object v0, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz v0, :cond_16

    .line 64
    new-instance v1, Lcom/apk/zz;

    invoke-direct {v1, p0, p1, v2}, Lcom/apk/zz;-><init>(Lcom/apk/f00;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public k(I)V
    .locals 11

    .line 1
    iput p1, p0, Lcom/apk/f00;->public:I

    .line 2
    invoke-virtual {p0, p1}, Lcom/apk/f00;->super(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    iput v0, p0, Lcom/apk/f00;->else:I

    .line 8
    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getNeed_share()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f00;->case:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 10
    :cond_2
    invoke-static {p1}, Lcom/apk/f00;->native(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/k00;

    iget-object v2, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v3

    iget-object v4, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lcom/apk/k00;->switch(Ljava/lang/String;II)V

    .line 12
    :cond_3
    iget-boolean v1, p0, Lcom/apk/f00;->this:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v5}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v5

    .line 14
    invoke-static {v1, v3, v4, v5, v2}, Lcom/apk/e00;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 15
    :cond_4
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v1

    new-instance v3, Lcom/apk/i00;

    invoke-direct {v3, p0}, Lcom/apk/i00;-><init>(Lcom/apk/f00;)V

    invoke-virtual {v1, v3}, Lcom/apk/o;->if(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 17
    iget-object p1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    iget-object v1, p0, Lcom/apk/qz;->if:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lcom/apk/import;->this(Landroid/app/Activity;)V

    .line 18
    iget-object p1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 19
    iget v1, p1, Lcom/apk/import;->case:I

    add-int/2addr v1, v3

    iput v1, p1, Lcom/apk/import;->case:I

    :cond_5
    if-nez v0, :cond_6

    .line 20
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/apk/f00;->abstract:Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;

    invoke-interface {p1}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;->onResultBarrage()V

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p1

    if-eq p1, v3, :cond_8

    .line 23
    iget-object p1, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result p1

    if-ne p1, v3, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v1

    iget-object v4, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v4

    if-ne v1, v4, :cond_9

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :cond_9
    const/4 v1, 0x0

    .line 25
    :goto_1
    invoke-static {}, Lcom/apk/k30;->catch()Lcom/apk/k30;

    move-result-object v4

    iget-object v5, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    iget-object v6, p0, Lcom/apk/f00;->case:Ljava/lang/String;

    .line 26
    iget-object v7, v4, Lcom/apk/k30;->package:Lcom/apk/k1;

    const-string v8, ""

    if-nez v7, :cond_a

    goto/16 :goto_6

    .line 27
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto/16 :goto_6

    .line 28
    :cond_b
    iget-object v7, v4, Lcom/apk/n0;->static:Ljava/util/List;

    if-eqz v7, :cond_17

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_5

    .line 29
    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v9, "LOAD_AD_CHAPTER_ID"

    if-nez v7, :cond_d

    .line 30
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 31
    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_d
    move-object v7, v5

    .line 32
    :goto_2
    iput-object v7, v4, Lcom/apk/n0;->switch:Ljava/lang/String;

    .line 33
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/apk/n0;->throws:Z

    if-eqz p1, :cond_f

    .line 34
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "yes"

    .line 35
    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_3

    :cond_e
    const/4 v5, 0x0

    .line 36
    :goto_3
    iput-boolean v5, v4, Lcom/apk/k30;->private:Z

    if-eqz v5, :cond_f

    .line 37
    invoke-static {v7}, Lcom/apk/k30;->final(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 38
    iput-boolean v3, v4, Lcom/apk/n0;->break:Z

    .line 39
    iget-object v5, v4, Lcom/apk/k30;->package:Lcom/apk/k1;

    if-eqz v5, :cond_f

    .line 40
    invoke-interface {v5}, Lcom/apk/k1;->for()V

    .line 41
    :cond_f
    iget-boolean v5, v4, Lcom/apk/k30;->private:Z

    if-eqz v5, :cond_10

    goto/16 :goto_6

    .line 42
    :cond_10
    iget-boolean v5, v4, Lcom/apk/n0;->catch:Z

    const-string v6, "#"

    if-eqz v5, :cond_15

    .line 43
    iget-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_11
    if-eqz v1, :cond_13

    .line 44
    iget-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 45
    invoke-static {v7, v6}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    goto :goto_4

    .line 46
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v0, v1, v7, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 47
    :goto_4
    iget-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 48
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v5, "SP_VIEWTOPREWARD_COMIC_CHAPTERS_KEY"

    invoke-virtual {v1, v5, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    :cond_13
    iget-object v0, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 50
    iget-boolean p1, v4, Lcom/apk/n0;->final:Z

    iget-boolean v0, v4, Lcom/apk/n0;->super:Z

    iget-wide v9, v4, Lcom/apk/n0;->throw:J

    invoke-static {p1, v0, v9, v10}, Lcom/apk/k30;->break(ZZJ)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, v4, Lcom/apk/n0;->const:Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    iget v0, v4, Lcom/apk/n0;->class:I

    if-lt p1, v0, :cond_18

    .line 52
    :cond_14
    invoke-virtual {v4}, Lcom/apk/k30;->this()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/apk/eg;->implements()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 53
    iput-boolean v3, v4, Lcom/apk/n0;->break:Z

    .line 54
    iget-object p1, v4, Lcom/apk/k30;->package:Lcom/apk/k1;

    if-eqz p1, :cond_18

    .line 55
    invoke-interface {p1}, Lcom/apk/k1;->do()V

    goto :goto_6

    .line 56
    :cond_15
    iget-object p1, v4, Lcom/apk/k30;->package:Lcom/apk/k1;

    invoke-virtual {v4, p1, v0}, Lcom/apk/k30;->while(Lcom/apk/k1;Z)V

    .line 57
    iget-object p1, v4, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, v4, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 58
    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Lcom/apk/n0;->goto:Ljava/lang/String;

    invoke-static {p1, v0, v7, v6}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/apk/n0;->goto:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object p1

    new-instance v0, Lcom/apk/j30;

    invoke-direct {v0, v4}, Lcom/apk/j30;-><init>(Lcom/apk/k30;)V

    .line 60
    iget-object p1, p1, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_18

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_17
    :goto_5
    if-eqz p1, :cond_18

    const-string p1, "&"

    .line 62
    invoke-static {p1, v5, p1}, Lcom/apk/goto;->else(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SP_LIMIT_CHAPTER_KEY_COMIC"

    .line 63
    invoke-static {v0, v8}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 65
    iget-object p1, v4, Lcom/apk/k30;->package:Lcom/apk/k1;

    invoke-interface {p1, v5}, Lcom/apk/k1;->if(Ljava/lang/String;)V

    .line 66
    :cond_18
    :goto_6
    iget-object p1, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    if-eqz p1, :cond_19

    .line 67
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 68
    iget-object p1, p0, Lcom/apk/f00;->throw:Lcom/apk/zg;

    .line 69
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 70
    iget-object v0, p1, Lcom/apk/zg;->do:Landroid/widget/TextView;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/apk/zg;->if:Landroid/view/animation/Animation;

    if-eqz v0, :cond_19

    .line 71
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 72
    iget-object p1, p1, Lcom/apk/zg;->do:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    .line 73
    :cond_19
    iget-boolean p1, p0, Lcom/apk/f00;->static:Z

    if-nez p1, :cond_1a

    .line 74
    invoke-virtual {p0, v3}, Lcom/apk/f00;->static(Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 75
    iput-boolean v3, p0, Lcom/apk/f00;->static:Z

    .line 76
    invoke-static {}, Lcom/apk/switch;->for()Lcom/apk/switch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/switch;->new()V

    .line 77
    :cond_1a
    iget-object p1, p0, Lcom/apk/f00;->switch:Ljava/util/Map;

    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 78
    iget-object p1, p0, Lcom/apk/f00;->switch:Ljava/util/Map;

    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-interface {p1, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apk/f00;->class()Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/apk/f00;->while(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/apk/f00;->return:Lcom/biquge/ebook/app/bean/BookChapter;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    :cond_1b
    if-eqz p1, :cond_1c

    goto :goto_7

    .line 81
    :cond_1c
    throw v2

    :cond_1d
    :goto_7
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/apk/f00;->native(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/qz;->do:Lcom/apk/rz;

    check-cast v1, Lcom/apk/k00;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v3

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    invoke-interface {v1, v2, v3, v0}, Lcom/apk/k00;->switch(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/PageRecyclerView;->setScrollEnabled(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/apk/f00;->private:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCanScroll(Z)V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->default()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/apk/f00;->p(I)V

    :cond_0
    return-void
.end method

.method public o(IZZ)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/apk/f00;->native:I

    .line 2
    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 3
    iput v0, v1, Lcom/apk/import;->case:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 6
    sget-object p2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v3, "SP_READ_PAGE_MODE_KEY"

    invoke-virtual {p2, v3, p1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p2, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    if-eqz p2, :cond_0

    .line 8
    iput p1, p2, Lcom/apk/lz;->else:I

    :cond_0
    if-eqz v2, :cond_a

    .line 9
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {p0, p2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p2, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p2

    .line 13
    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 14
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/apk/f00;->synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 17
    iget-object v4, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    invoke-virtual {v4}, Lcom/apk/import;->for()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 18
    iget v4, p0, Lcom/apk/f00;->else:I

    if-lez v4, :cond_2

    add-int/lit8 v4, v4, -0x1

    .line 19
    :cond_2
    move-object v5, p2

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-ge v4, v6, :cond_4

    .line 20
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 21
    iget v8, p0, Lcom/apk/f00;->native:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/apk/f00;->native:I

    if-eqz v8, :cond_3

    .line 22
    iget-object v9, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 23
    iget v9, v9, Lcom/apk/import;->goto:I

    .line 24
    rem-int/2addr v8, v9

    if-nez v8, :cond_3

    .line 25
    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7, v6, v4}, Lcom/apk/f00;->implements(Ljava/lang/String;Ljava/lang/String;II)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26
    :cond_4
    move-object v4, p2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 27
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-static {p2}, Lcom/apk/f00;->case(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 30
    invoke-virtual {p0, p2}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/apk/f00;->instanceof(Lcom/manhua/data/bean/ComicChapterBean;)Ljava/util/List;

    move-result-object p2

    .line 32
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 33
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_5
    iget p2, p0, Lcom/apk/f00;->else:I

    if-lez p2, :cond_6

    add-int/lit8 p2, p2, -0x1

    :cond_6
    if-nez p1, :cond_7

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p2

    goto :goto_2

    :cond_7
    add-int v0, v3, p2

    :goto_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_9

    .line 35
    iget-object p1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    if-eqz p3, :cond_8

    .line 36
    iget-object p1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget-object p2, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    :cond_8
    iget-object p1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    goto :goto_3

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 39
    iget-object p1, p1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 40
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 41
    iget-object p1, p1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object p1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object p2, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 43
    iget-object p1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final p(I)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_8

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getFirstItem()I

    move-result v0

    sub-int/2addr v0, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v7, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    if-eqz v7, :cond_1

    iget-object v6, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {v6}, Lcom/manhua/ui/widget/PageRecyclerView;->getLastItem()I

    move-result v6

    add-int/2addr v6, v5

    :cond_1
    :goto_1
    if-ge v0, v6, :cond_e

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/f00;->super(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 5
    invoke-static {v7}, Lcom/apk/f00;->native(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 6
    iget-object v8, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-static {v7}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/manhua/ui/widget/barrage/BarrageView;

    if-eqz v7, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->resume()V

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->pause()V

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->reloadSync()V

    goto :goto_2

    .line 10
    :cond_5
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_2

    .line 11
    :cond_6
    invoke-virtual {v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :cond_8
    if-eq p1, v4, :cond_d

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v2, :cond_a

    if-eq p1, v1, :cond_9

    goto/16 :goto_6

    .line 13
    :cond_9
    :try_start_1
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 14
    iget-object p1, p1, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz p1, :cond_e

    .line 15
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->resume()V

    goto :goto_3

    .line 17
    :cond_a
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 18
    iget-object p1, p1, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz p1, :cond_e

    .line 19
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->pause()V

    goto :goto_4

    .line 21
    :cond_b
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/lz;->if(Ljava/lang/String;)V

    goto :goto_6

    .line 22
    :cond_c
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 23
    iget-object p1, p1, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz p1, :cond_e

    .line 24
    invoke-virtual {p1}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_5

    .line 26
    :cond_d
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apk/lz;->new(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_6
    return-void
.end method

.method public package(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(Ljava/util/Collection;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 4
    iget-object v1, v1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 6
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    return-void

    :goto_1
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    .line 10
    throw p1
.end method

.method public private(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {v1, v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->addData(ILjava/util/Collection;)V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Lcom/apk/f00;->c(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 8
    iget-object v1, v1, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 9
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 10
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 12
    iget-object v1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {v1}, Lcom/apk/lz;->getCount()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {v1, p1}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 15
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 16
    :goto_2
    invoke-virtual {p0, v0}, Lcom/apk/f00;->m(Z)V

    .line 17
    throw p1
.end method

.method public final protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setImageUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    return-object v0
.end method

.method public final public(Lcom/biquge/ebook/app/bean/BookChapter;)Z
    .locals 4

    const-string v0, "LOAD_FAILED"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/apk/f00;->native(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/apk/f00;->native(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    move v2, v1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return v2
.end method

.method public return()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-1"

    .line 2
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/apk/f00;->else:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static(Z)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v2, "-1"

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2
    :try_start_1
    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    .line 3
    iget v4, p0, Lcom/apk/f00;->else:I

    iget-object v5, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_1

    .line 4
    :try_start_2
    iget-object v6, v5, Lcom/apk/e00;->do:Lcom/apk/gg;

    if-eqz v6, :cond_0

    .line 5
    iget-object v5, v5, Lcom/apk/e00;->do:Lcom/apk/gg;

    invoke-virtual {v5, v1}, Lcom/apk/gg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v4, v1, :cond_3

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 8
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    if-nez v1, :cond_5

    .line 9
    :try_start_4
    invoke-virtual {p0}, Lcom/apk/f00;->final()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    .line 10
    iget-object v4, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v4

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v4}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v2, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :catch_1
    move-exception p1

    move v0, v1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 12
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    move v1, v0

    :cond_5
    return v1
.end method

.method public synthetic strictfp()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    iget v2, p0, Lcom/apk/f00;->else:I

    invoke-static {v0, v1, v2}, Lcom/biquge/ebook/app/bean/ReadFootprint;->addComicFootprint(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final super(I)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/f00;->import()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/lz;->do(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookChapter;

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/apk/lz;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/apk/lz;->do(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public switch()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v0

    return v0
.end method

.method public final synchronized(Lcom/manhua/data/bean/ComicChapterBean;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/manhua/data/bean/ComicChapterBean;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation

    const-string v0, "-1"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    sget-object v4, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-virtual {v0, v4}, Lcom/apk/import;->new(Lcom/apk/hf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/apk/f00;->interface(Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iput v5, p0, Lcom/apk/f00;->native:I

    .line 12
    iget-object v0, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    new-instance v4, Lcom/apk/d00;

    invoke-direct {v4, p0}, Lcom/apk/d00;-><init>(Lcom/apk/f00;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v0, v2}, Lcom/apk/e00;->do(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v0, :cond_4

    .line 18
    :try_start_1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/apk/f00;->else:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    iput v4, p0, Lcom/apk/f00;->else:I

    .line 20
    iget-object v4, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v4, v0, v2}, Lcom/apk/e00;->for(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 22
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 23
    :cond_3
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/apk/f00;->else:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 24
    :try_start_6
    iput v4, p0, Lcom/apk/f00;->else:I

    .line 25
    iget-object v4, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v4, v0, v2}, Lcom/apk/e00;->for(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 26
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 27
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/apk/f00;->break:Lcom/apk/e00;

    invoke-virtual {v0, v2}, Lcom/apk/e00;->do(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_2
    if-ge v5, v4, :cond_9

    .line 30
    new-instance v8, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v8}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 31
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNovelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8, v3}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setUrl(Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setImageUrl(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v8, v4}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 37
    invoke-virtual {v8, v7}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    .line 38
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getHostKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setHostKey(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    const-string v9, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    .line 40
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 41
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 42
    :cond_5
    invoke-virtual {v8, v6}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x4

    .line 43
    invoke-virtual {v8, v9}, Lcom/biquge/ebook/app/bean/BookChapter;->setItemType(I)V

    .line 44
    :goto_4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    .line 45
    invoke-static {}, Lcom/apk/da;->public()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz p2, :cond_7

    .line 46
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 47
    invoke-virtual {v9}, Lcom/apk/import;->for()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 48
    iget v9, p0, Lcom/apk/f00;->native:I

    add-int/2addr v9, v6

    iput v9, p0, Lcom/apk/f00;->native:I

    if-eqz v9, :cond_7

    .line 49
    iget-object v10, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    .line 50
    iget v10, v10, Lcom/apk/import;->goto:I

    .line 51
    rem-int/2addr v9, v10

    if-nez v9, :cond_7

    .line 52
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v9, v8, v4, v5}, Lcom/apk/f00;->implements(Ljava/lang/String;Ljava/lang/String;II)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 53
    :cond_8
    invoke-virtual {p0, p1}, Lcom/apk/f00;->protected(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_5
    return-object v1
.end method

.method public this(Landroid/widget/TextView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apk/f00;->else:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/apk/f00;->super:Lcom/apk/import;

    iget-object v2, p0, Lcom/apk/f00;->extends:Lcom/apk/import$try;

    invoke-virtual {v1, p1, v0, v2}, Lcom/apk/import;->break(Landroid/widget/TextView;Ljava/lang/String;Lcom/apk/import$try;)V

    :cond_1
    return-void
.end method

.method public throw()Lcom/manhua/data/bean/ComicChapterBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apk/f00;->const(Ljava/lang/String;)Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object v0

    return-object v0
.end method

.method public final transient(Lcom/manhua/data/bean/ComicChapterBean;)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/BookChapter;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/BookChapter;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNovelid(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterId(Ljava/lang/String;)V

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setChapterName(Ljava/lang/String;)V

    const-string v2, "LOAD_FAILED"

    .line 5
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setImageUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setAllPage(I)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/bean/BookChapter;->setReadPage(I)V

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getNeed_share()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/BookChapter;->setNeed_share(Ljava/lang/String;)V

    return-object v0
.end method

.method public volatile(Ljava/util/List;I)V
    .locals 5

    const-string v0, "Cartoon"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/apk/f00;->extends()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {v3, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    iget-object v3, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    iget-object p1, p0, Lcom/apk/f00;->const:Lcom/manhua/ui/widget/ZoomRecyclerView;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/PageRecyclerView;->scrollToPosition(I)V

    .line 5
    iget-object p1, p0, Lcom/apk/f00;->final:Lcom/manhua/adapter/ComicRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p1

    if-ne p1, v4, :cond_1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 7
    iget-object v3, v3, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 8
    iget-object v3, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    .line 9
    iget-object v3, v3, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object p1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    iget-object v3, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p1, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 11
    iget-object p1, p0, Lcom/apk/f00;->catch:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-virtual {p1, p2}, Lcom/manhua/ui/widget/ComicReaderViewpager;->setCurrentItem(I)V

    .line 12
    iget-object p1, p0, Lcom/apk/f00;->class:Lcom/apk/lz;

    invoke-virtual {p1}, Lcom/apk/lz;->getCount()I

    move-result p1

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p2}, Lcom/apk/f00;->k(I)V

    .line 14
    invoke-virtual {p0}, Lcom/apk/f00;->l()V

    .line 15
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/apk/f00;->while:Landroid/os/Handler;

    new-instance p2, Lcom/apk/c00;

    invoke-direct {p2, p0, v4}, Lcom/apk/c00;-><init>(Lcom/apk/f00;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_2
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object p2

    .line 20
    iget-object v3, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 21
    invoke-static {v3}, Lcom/apk/f00;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p1, v0, p2, v3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_3
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 24
    invoke-virtual {p0}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result p1

    if-nez p1, :cond_7

    .line 26
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 27
    :cond_4
    throw v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 30
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object p2

    .line 32
    iget-object v3, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 33
    invoke-static {v3}, Lcom/apk/f00;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p1, v0, p2, v3}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_5
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result p1

    if-nez p1, :cond_7

    .line 38
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 39
    :cond_6
    throw v2

    :cond_7
    :goto_1
    return-void

    .line 40
    :goto_2
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 41
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object p2

    .line 42
    invoke-virtual {p0}, Lcom/apk/f00;->catch()Ljava/lang/String;

    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 44
    invoke-static {v4}, Lcom/apk/f00;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {p2, v0, v3, v4}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->loadBarrageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_8
    invoke-virtual {p0, v1}, Lcom/apk/f00;->m(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 48
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicChapterBean;->isHasContent()Z

    move-result p2

    if-nez p2, :cond_a

    .line 49
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_3

    .line 50
    :cond_9
    throw v2

    .line 51
    :cond_a
    :goto_3
    throw p1
.end method
