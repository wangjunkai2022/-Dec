.class public Lcom/apk/lz;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ComicViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lz$case;
    }
.end annotation


# instance fields
.field public case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation
.end field

.field public final do:Landroid/app/Activity;

.field public else:I

.field public final for:Landroid/view/LayoutInflater;

.field public goto:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/manhua/ui/widget/barrage/BarrageView;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Lcom/apk/import;

.field public final new:Lcom/apk/l30;

.field public this:Lcom/apk/l00;

.field public final try:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/apk/l30;Lcom/apk/import;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/lz;->do:Landroid/app/Activity;

    .line 3
    iput p2, p0, Lcom/apk/lz;->else:I

    .line 4
    iput-object p3, p0, Lcom/apk/lz;->new:Lcom/apk/l30;

    .line 5
    iput-object p4, p0, Lcom/apk/lz;->if:Lcom/apk/import;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/lz;->for:Landroid/view/LayoutInflater;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/apk/lz;->try:Ljava/util/Queue;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apk/lz;->case:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "AD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/lz;->try:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lcom/apk/lz;->do(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public do(I)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookChapter;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final for(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 1
    invoke-virtual {p6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p6, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p5}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    invoke-virtual {p7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6
    invoke-virtual {p7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/apk/lz$try;

    invoke-direct {v0, p0, p6, p5, p7}, Lcom/apk/lz$try;-><init>(Lcom/apk/lz;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/LinearLayout;)V

    invoke-static {p1, p2, p3, p4, v0}, Lcom/apk/u;->catch(ZLjava/lang/String;Landroid/widget/ImageView;Lcom/manhua/ui/widget/barrage/BarrageView;Lcom/apk/j1;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public if(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->reloadSync()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->destory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    .line 1
    iget v1, v9, Lcom/apk/lz;->else:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v9, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/BookChapter;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v9, Lcom/apk/lz;->case:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/apk/mu;->continue(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v11

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const-string v3, "#08000000"

    const v4, 0x7f090312

    const-string v5, ""

    const v6, 0x7f09030f

    const v7, 0x7f0c00db

    const/4 v8, 0x2

    const v12, 0x7f090310

    const-string v13, "AD"

    const/16 v14, 0x8

    const/4 v15, 0x0

    if-ne v1, v8, :cond_3

    .line 6
    iget-object v0, v9, Lcom/apk/lz;->for:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v10, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f100020

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v15

    .line 9
    invoke-static {v6, v2}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ContinueReadTView"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 13
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v0, v9, Lcom/apk/lz;->if:Lcom/apk/import;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, v9, Lcom/apk/lz;->if:Lcom/apk/import;

    iget-object v2, v9, Lcom/apk/lz;->do:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/apk/import;->goto(Landroid/app/Activity;)V

    .line 18
    :try_start_0
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 19
    iget-object v2, v9, Lcom/apk/lz;->if:Lcom/apk/import;

    .line 20
    iget-object v2, v2, Lcom/apk/import;->for:Ljava/lang/String;

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f10029e

    .line 22
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_1
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, v9, Lcom/apk/lz;->do:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x41880000    # 17.0f

    .line 24
    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v4

    .line 26
    iget-object v4, v4, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 27
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 30
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41700000    # 15.0f

    .line 31
    invoke-static {v4}, Lcom/apk/eg;->catch(F)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 32
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 33
    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 38
    sget-object v2, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 39
    iget-object v3, v9, Lcom/apk/lz;->do:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0, v15}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 40
    :goto_1
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    .line 41
    :cond_3
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 42
    iget-object v0, v9, Lcom/apk/lz;->for:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v7, v10, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 47
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 48
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 49
    sget-object v2, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 50
    iget-object v3, v9, Lcom/apk/lz;->do:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1, v15}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 51
    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    .line 52
    :cond_4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "MH_UNLOCK_CHAPTER_NEED_LOGIN_TAG_KEY"

    if-ne v1, v2, :cond_7

    .line 53
    iget-object v1, v9, Lcom/apk/lz;->do:Landroid/app/Activity;

    const v2, 0x7f0c007d

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f09017d

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f09017c

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 57
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {v4, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09017e

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/apk/lz$do;

    invoke-direct {v2, v9}, Lcom/apk/lz$do;-><init>(Lcom/apk/lz;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const-string v3, "MH_UNLOCK_CHAPTER_FALIED_TAG_KEY"

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f09017b

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/apk/lz$if;

    invoke-direct {v2, v9}, Lcom/apk/lz$if;-><init>(Lcom/apk/lz;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017a

    .line 66
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/apk/lz$for;

    invoke-direct {v2, v9}, Lcom/apk/lz$for;-><init>(Lcom/apk/lz;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    :cond_6
    :goto_2
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    .line 68
    :cond_7
    iget-object v1, v9, Lcom/apk/lz;->try:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 69
    iget-object v1, v9, Lcom/apk/lz;->try:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 70
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apk/lz$case;

    goto :goto_3

    .line 71
    :cond_8
    iget-object v1, v9, Lcom/apk/lz;->for:Landroid/view/LayoutInflater;

    const v2, 0x7f0c007b

    invoke-virtual {v1, v2, v10, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/apk/lz$case;

    invoke-direct {v2}, Lcom/apk/lz$case;-><init>()V

    const v4, 0x7f09043b

    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/manhua/ui/widget/photoview/PhotoView;

    iput-object v4, v2, Lcom/apk/lz$case;->do:Lcom/manhua/ui/widget/photoview/PhotoView;

    const v4, 0x7f09043f

    .line 74
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/apk/lz$case;->if:Landroid/widget/ProgressBar;

    const v4, 0x7f09043e

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/apk/lz$case;->for:Landroid/widget/TextView;

    const v4, 0x7f090173

    .line 76
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v2, Lcom/apk/lz$case;->new:Landroid/widget/FrameLayout;

    const v4, 0x7f090175

    .line 77
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/apk/lz$case;->try:Landroid/widget/LinearLayout;

    const v4, 0x7f09043c

    .line 78
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/manhua/ui/widget/barrage/BarrageView;

    iput-object v4, v2, Lcom/apk/lz$case;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    .line 79
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_3
    move-object v12, v1

    move-object v13, v2

    .line 80
    iget-object v1, v13, Lcom/apk/lz$case;->for:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 82
    iget-object v1, v13, Lcom/apk/lz$case;->do:Lcom/manhua/ui/widget/photoview/PhotoView;

    const v2, 0x7f080224

    invoke-virtual {v1, v2}, Lcom/manhua/ui/widget/photoview/PhotoView;->setImageResource(I)V

    goto :goto_4

    .line 83
    :cond_9
    iget-object v14, v13, Lcom/apk/lz$case;->do:Lcom/manhua/ui/widget/photoview/PhotoView;

    iget-object v15, v13, Lcom/apk/lz$case;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    iget-object v8, v13, Lcom/apk/lz$case;->if:Landroid/widget/ProgressBar;

    iget-object v7, v13, Lcom/apk/lz$case;->new:Landroid/widget/FrameLayout;

    iget-object v6, v13, Lcom/apk/lz$case;->try:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v4, v14

    move-object v5, v15

    move-object/from16 p2, v6

    move-object v6, v8

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v8, p2

    .line 84
    invoke-virtual/range {v1 .. v8}, Lcom/apk/lz;->for(ZLcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    .line 85
    new-instance v8, Lcom/apk/mz;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v6, v17

    move-object v14, v8

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/apk/mz;-><init>(Lcom/apk/lz;Lcom/biquge/ebook/app/bean/BookChapter;Lcom/manhua/ui/widget/photoview/PhotoView;Lcom/manhua/ui/widget/barrage/BarrageView;Landroid/widget/ProgressBar;Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    :goto_4
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 87
    iget-object v1, v13, Lcom/apk/lz$case;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v1, v13, Lcom/apk/lz$case;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/manhua/ui/widget/barrage/BarrageView;->setChapterId(Ljava/lang/String;I)V

    .line 89
    iget-object v0, v9, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-nez v0, :cond_a

    .line 90
    new-instance v0, Lcom/apk/gg;

    invoke-direct {v0}, Lcom/apk/gg;-><init>()V

    iput-object v0, v9, Lcom/apk/lz;->goto:Lcom/apk/gg;

    .line 91
    :cond_a
    iget-object v0, v9, Lcom/apk/lz;->goto:Lcom/apk/gg;

    iget-object v1, v13, Lcom/apk/lz$case;->case:Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v0, v11, v1}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_b
    iget-object v0, v13, Lcom/apk/lz$case;->do:Lcom/manhua/ui/widget/photoview/PhotoView;

    new-instance v1, Lcom/apk/lz$new;

    invoke-direct {v1, v9}, Lcom/apk/lz$new;-><init>(Lcom/apk/lz;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/photoview/PhotoView;->setOnViewTapListener(Lcom/apk/g30;)V

    .line 93
    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v12
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public new(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/lz;->goto:Lcom/apk/gg;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/apk/gg;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->initBarrageView()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/manhua/ui/widget/barrage/BarrageView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/barrage/BarrageView;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method
