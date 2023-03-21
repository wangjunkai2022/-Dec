.class public Lcom/apk/v9;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BookViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/v9$if;
    }
.end annotation


# instance fields
.field public final break:I

.field public case:I

.field public final catch:I

.field public final class:Z

.field public const:Lcom/apk/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/gg<",
            "Ljava/lang/String;",
            "Lcom/manhua/ui/widget/barrage/BarrageView;",
            ">;"
        }
    .end annotation
.end field

.field public final do:Landroid/app/Activity;

.field public else:Z

.field public final:Landroid/widget/LinearLayout$LayoutParams;

.field public final for:Landroid/view/LayoutInflater;

.field public final goto:Z

.field public final if:Lcom/apk/import;

.field public import:Landroid/view/View$OnClickListener;

.field public native:Z

.field public final new:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public super:Landroid/widget/LinearLayout$LayoutParams;

.field public this:Z

.field public final throw:Landroid/view/View$OnClickListener;

.field public try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/BookChapter;",
            ">;"
        }
    .end annotation
.end field

.field public while:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/apk/import;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/v9$do;

    invoke-direct {v0, p0}, Lcom/apk/v9$do;-><init>(Lcom/apk/v9;)V

    iput-object v0, p0, Lcom/apk/v9;->throw:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p1, p0, Lcom/apk/v9;->do:Landroid/app/Activity;

    .line 4
    iput p2, p0, Lcom/apk/v9;->case:I

    .line 5
    iput-object p3, p0, Lcom/apk/v9;->if:Lcom/apk/import;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/apk/v9;->try:Ljava/util/List;

    .line 7
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/apk/v9;->new:Ljava/util/Queue;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/v9;->for:Landroid/view/LayoutInflater;

    .line 9
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->extends()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->default()Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/finally;->throw()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/apk/v9;->goto:Z

    const/high16 p1, 0x41f00000    # 30.0f

    .line 12
    invoke-static {p1}, Lcom/apk/eg;->catch(F)I

    move-result p1

    iput p1, p0, Lcom/apk/v9;->break:I

    .line 13
    invoke-static {}, Lcom/apk/finally;->case()I

    move-result p1

    iput p1, p0, Lcom/apk/v9;->catch:I

    .line 14
    invoke-static {}, Lcom/apk/w0;->static()Z

    move-result p1

    iput-boolean p1, p0, Lcom/apk/v9;->class:Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    iget-object p1, p0, Lcom/apk/v9;->new:Ljava/util/Queue;

    invoke-interface {p1, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lcom/apk/v9;->do(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object p2

    invoke-static {p2}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apk/gg;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public do(I)Lcom/biquge/ebook/app/bean/BookChapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/BookChapter;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public for()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apk/v9;->native:Z

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/apk/v9;->native:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public if(Lcom/biquge/ebook/app/bean/BookChapter;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/apk/v9;->try:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/BookChapter;

    .line 2
    invoke-static {p2}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "#08000000"

    const v4, 0x7f090312

    const/4 v5, 0x1

    const v6, 0x7f09030f

    const-string v7, "AD"

    const v8, 0x7f0c00db

    const v9, 0x7f090310

    const/4 v10, 0x2

    const/16 v11, 0x8

    if-ne v1, v10, :cond_2

    .line 4
    iget-object p2, p0, Lcom/apk/v9;->for:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v8, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v6, 0x7f100020

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, ""

    aput-object v7, v5, v2

    .line 7
    invoke-static {v6, v5}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ContinueReadTView"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/apk/v9;->if:Lcom/apk/import;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apk/import;->try()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/apk/v9;->if:Lcom/apk/import;

    iget-object v1, p0, Lcom/apk/v9;->do:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/apk/import;->goto(Landroid/app/Activity;)V

    .line 16
    :try_start_0
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 17
    iget-object v1, p0, Lcom/apk/v9;->if:Lcom/apk/import;

    .line 18
    iget-object v1, v1, Lcom/apk/import;->for:Ljava/lang/String;

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f10029e

    .line 20
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/apk/v9;->do:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41880000    # 17.0f

    .line 22
    invoke-virtual {v2, v10, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    invoke-static {}, Lcom/apk/ca;->do()Lcom/apk/ca;

    move-result-object v3

    .line 24
    iget-object v3, v3, Lcom/apk/ca;->do:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 29
    invoke-static {v3}, Lcom/apk/eg;->catch(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 30
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 35
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 36
    sget-object v1, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 37
    iget-object v3, p0, Lcom/apk/v9;->do:Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 38
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    .line 39
    :cond_2
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_3

    .line 40
    iget-object p2, p0, Lcom/apk/v9;->for:Landroid/view/LayoutInflater;

    invoke-virtual {p2, v8, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 47
    sget-object v1, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 48
    iget-object v3, p0, Lcom/apk/v9;->do:Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Lcom/apk/d;->do(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/apk/v9;->new:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 51
    iget-object v1, p0, Lcom/apk/v9;->new:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apk/v9$if;

    goto :goto_1

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/apk/v9;->for:Landroid/view/LayoutInflater;

    const v3, 0x7f0c0123

    invoke-virtual {v1, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    new-instance v3, Lcom/apk/v9$if;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/apk/v9$if;-><init>(Lcom/apk/v9$do;)V

    const v4, 0x7f0900e0

    .line 55
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/widget/BookTitleTextView;

    iput-object v4, v3, Lcom/apk/v9$if;->do:Lcom/biquge/ebook/app/widget/BookTitleTextView;

    const v4, 0x7f0900e1

    .line 56
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/widget/ReadContentLayout;

    iput-object v4, v3, Lcom/apk/v9$if;->if:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    const v4, 0x7f090110

    .line 57
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biquge/ebook/app/widget/BookPageTextView;

    iput-object v4, v3, Lcom/apk/v9$if;->for:Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 58
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_1
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterName()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 61
    invoke-static {}, Lcom/apk/da;->else()Lcom/apk/da;

    move-result-object v4

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getNovelid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/apk/da;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_5
    const-string v6, "BookTitleTextView"

    .line 62
    invoke-static {v0, v6}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    iget-object v7, v3, Lcom/apk/v9$if;->do:Lcom/biquge/ebook/app/widget/BookTitleTextView;

    .line 64
    iget-boolean v8, p0, Lcom/apk/v9;->native:Z

    if-nez v8, :cond_6

    invoke-virtual {v7}, Lcom/biquge/ebook/app/widget/BookTitleTextView;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 65
    :cond_6
    invoke-virtual {v7, v4}, Lcom/biquge/ebook/app/widget/BookTitleTextView;->setText(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :cond_7
    iget-boolean v6, p0, Lcom/apk/v9;->else:Z

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/apk/v9;->case:I

    if-ne v6, v10, :cond_8

    goto :goto_2

    .line 68
    :cond_8
    iget-boolean v6, p0, Lcom/apk/v9;->goto:Z

    if-eqz v6, :cond_9

    invoke-virtual {p0, p2}, Lcom/apk/v9;->if(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v5, 0x0

    .line 69
    :goto_3
    iget-object v6, v3, Lcom/apk/v9$if;->if:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    iget-object v7, p0, Lcom/apk/v9;->while:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iget-object v6, v3, Lcom/apk/v9$if;->if:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    iget-object v7, p0, Lcom/apk/v9;->throw:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->setReloadClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v6, v3, Lcom/apk/v9$if;->if:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    invoke-virtual {v6, p2, v4, v5}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->do(Lcom/biquge/ebook/app/bean/BookChapter;Ljava/lang/String;Z)V

    .line 72
    iget v4, p0, Lcom/apk/v9;->case:I

    if-eq v4, v10, :cond_d

    .line 73
    iget-object v4, v3, Lcom/apk/v9$if;->if:Lcom/biquge/ebook/app/widget/ReadContentLayout;

    invoke-virtual {v4}, Lcom/biquge/ebook/app/widget/ReadContentLayout;->getBarrageView()Lcom/manhua/ui/widget/barrage/BarrageView;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 74
    iget-boolean v6, p0, Lcom/apk/v9;->class:Z

    if-eqz v6, :cond_c

    .line 75
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/manhua/ui/widget/barrage/BarrageView;->setChapterId(Ljava/lang/String;I)V

    .line 76
    iget-object v6, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

    if-nez v6, :cond_a

    .line 77
    new-instance v6, Lcom/apk/gg;

    invoke-direct {v6}, Lcom/apk/gg;-><init>()V

    iput-object v6, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

    .line 78
    :cond_a
    iget-object v6, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

    invoke-virtual {v6, v0, v4}, Lcom/apk/gg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_b

    .line 79
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_d

    .line 80
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 81
    :cond_b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_d

    .line 82
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 83
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v11, :cond_d

    .line 84
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_4
    const-string v4, "BookPageTextView"

    .line 85
    invoke-static {v0, v4}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v3, v3, Lcom/apk/v9$if;->for:Lcom/biquge/ebook/app/widget/BookPageTextView;

    .line 87
    iget-boolean v4, p0, Lcom/apk/v9;->native:Z

    if-nez v4, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 88
    :cond_e
    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getReadPage()I

    move-result v4

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/BookChapter;->getAllPage()I

    move-result p2

    invoke-virtual {v3, v4, p2}, Lcom/biquge/ebook/app/widget/BookPageTextView;->if(II)V

    .line 89
    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :cond_f
    iget-boolean p2, p0, Lcom/apk/v9;->this:Z

    const/4 v0, -0x1

    if-eqz p2, :cond_11

    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v4, p0, Lcom/apk/v9;->catch:I

    iget v5, p0, Lcom/apk/v9;->break:I

    add-int/2addr v4, v5

    if-eq p2, v4, :cond_13

    .line 92
    iget-object p2, p0, Lcom/apk/v9;->final:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_10

    .line 93
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/apk/v9;->catch:I

    iget v5, p0, Lcom/apk/v9;->break:I

    add-int/2addr v4, v5

    invoke-direct {p2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/apk/v9;->final:Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    :cond_10
    iget-object p2, p0, Lcom/apk/v9;->final:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget v4, p0, Lcom/apk/v9;->catch:I

    invoke-virtual {v3, p2, v2, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_5

    .line 96
    :cond_11
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v4, p0, Lcom/apk/v9;->break:I

    if-eq p2, v4, :cond_13

    .line 97
    iget-object p2, p0, Lcom/apk/v9;->super:Landroid/widget/LinearLayout$LayoutParams;

    if-nez p2, :cond_12

    .line 98
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/apk/v9;->break:I

    invoke-direct {p2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p2, p0, Lcom/apk/v9;->super:Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    :cond_12
    iget-object p2, p0, Lcom/apk/v9;->super:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {v3, p2, v2, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    :cond_13
    :goto_5
    iput-boolean v2, p0, Lcom/apk/v9;->native:Z

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
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
    iget-object v0, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

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

.method public try(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/v9;->const:Lcom/apk/gg;

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
