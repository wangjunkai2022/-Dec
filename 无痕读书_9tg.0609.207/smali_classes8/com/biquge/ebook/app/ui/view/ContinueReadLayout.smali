.class public Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;
.super Landroid/widget/FrameLayout;
.source "ContinueReadLayout.java"


# instance fields
.field public mContinueReadChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090287
    .end annotation
.end field

.field public mContinueReadIcon:Lcom/biquge/ebook/app/ui/view/CoverImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090289
    .end annotation
.end field

.field public mContinueReadName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field public mReadBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090286
    .end annotation
.end field


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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01bc

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method private setComicBook(Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadIcon:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->setComicCover(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadChapter:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getReadChapterName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1000fa

    invoke-static {p1, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setNovelBook(Lcom/biquge/ebook/app/bean/CollectBook;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadIcon:Lcom/biquge/ebook/app/ui/view/CoverImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/biquge/ebook/app/ui/view/CoverImageView;->do(Lcom/biquge/ebook/app/bean/CollectBook;Z)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mContinueReadChapter:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CollectBook;->getReadChapterName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const p1, 0x7f1000fa

    invoke-static {p1, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public case(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public do(Landroid/app/Activity;)V
    .locals 14

    .line 1
    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SP_HOME_CONTINUE_READ_ONLY_DAY_KEY"

    const-string v2, ""

    .line 2
    invoke-static {v1, v2}, Lcom/apk/tt;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "saveTime desc"

    .line 4
    invoke-static {v3}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-string v5, "readChapterId != ?"

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v4

    const-class v6, Lcom/biquge/ebook/app/bean/CollectBook;

    invoke-virtual {v4, v6}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 6
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/bean/CollectBook;

    goto :goto_0

    :cond_0
    move-object v4, v7

    .line 7
    :goto_0
    invoke-static {v3}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v3

    filled-new-array {v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v2

    const-class v3, Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2, v3}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 9
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/manhua/data/bean/ComicCollectBean;

    :cond_1
    const-wide/16 v2, 0x0

    if-eqz v4, :cond_2

    .line 10
    :try_start_0
    invoke-virtual {v4}, Lcom/biquge/ebook/app/bean/CollectBook;->getSaveTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-wide v8, v2

    goto :goto_2

    :cond_2
    move-wide v5, v2

    :goto_1
    if-eqz v7, :cond_3

    .line 11
    :try_start_1
    invoke-virtual {v7}, Lcom/manhua/data/bean/ComicCollectBean;->getSaveTime()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v8

    move-wide v12, v5

    move-object v5, v8

    move-wide v8, v12

    .line 12
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v5, v8

    :cond_3
    :goto_3
    const-wide/16 v8, 0x1388

    const v10, 0x7f090288

    cmp-long v11, v5, v2

    if-lez v11, :cond_4

    .line 13
    invoke-direct {p0, v4}, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->setNovelBook(Lcom/biquge/ebook/app/bean/CollectBook;)V

    .line 14
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mReadBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/apk/gc;

    invoke-direct {v1, p0, v4, p1}, Lcom/apk/gc;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;Lcom/biquge/ebook/app/bean/CollectBook;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {p0, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/apk/jc;

    invoke-direct {v0, p0}, Lcom/apk/jc;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    new-instance p1, Lcom/apk/lc;

    invoke-direct {p1, p0}, Lcom/apk/lc;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;)V

    invoke-virtual {p0, p1, v8, v9}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_4
    cmp-long v4, v2, v5

    if-lez v4, :cond_5

    .line 18
    invoke-direct {p0, v7}, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->setComicBook(Lcom/manhua/data/bean/ComicCollectBean;)V

    .line 19
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;->mReadBtn:Landroid/widget/TextView;

    new-instance v1, Lcom/apk/ic;

    invoke-direct {v1, p0, v7, p1}, Lcom/apk/ic;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;Lcom/manhua/data/bean/ComicCollectBean;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p0, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/apk/hc;

    invoke-direct {v0, p0}, Lcom/apk/hc;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Lcom/apk/kc;

    invoke-direct {p1, p0}, Lcom/apk/kc;-><init>(Lcom/biquge/ebook/app/ui/view/ContinueReadLayout;)V

    invoke-virtual {p0, p1, v8, v9}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_4
    return-void
.end method

.method public else()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public for(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public if(Lcom/manhua/data/bean/ComicCollectBean;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/manhua/ui/activity/ComicReadActivity;->J(Landroid/app/Activity;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public new()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public try(Lcom/biquge/ebook/app/bean/CollectBook;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 1
    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a0(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
