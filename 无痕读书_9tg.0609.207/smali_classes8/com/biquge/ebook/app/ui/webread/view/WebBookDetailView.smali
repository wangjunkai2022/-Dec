.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;
.super Landroid/widget/FrameLayout;
.source "WebBookDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;
    }
.end annotation


# instance fields
.field public do:Landroid/app/Activity;

.field public for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

.field public mBookAuthor:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09062b
    .end annotation
.end field

.field public mBookCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09062f
    .end annotation
.end field

.field public mBookName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090630
    .end annotation
.end field

.field public mBookSource:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090633
    .end annotation
.end field

.field public mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09062e
    .end annotation
.end field

.field public mDescTv:Lcom/biquge/ebook/app/widget/ExpandableTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d1
    .end annotation
.end field

.field public mShelfBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090632
    .end annotation
.end field

.field public mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090627
    .end annotation
.end field

.field public new:Lcom/apk/jd;


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

    const p2, 0x7f0c01cd

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 2
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->getBookId()Ljava/lang/String;

    move-result-object p0

    const-string v2, "search_"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/w;->extends()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/v1/book/AddHits"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0, v0}, Lcom/apk/x4;->switch(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method private getBookId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public final for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;-><init>()V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setNovelId(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setTitle(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setAuthor(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setImg(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setDesc(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getFirsturl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setFirstChapterUrl(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setChapterUrl(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setSearchBook(Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getLatestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getLatestTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterTime(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getChapters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterName(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setLastChapterUrl(Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    return-object v0
.end method

.method public final if(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mShelfBtn:Landroid/widget/TextView;

    const v0, 0x7f1003a0

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mShelfBtn:Landroid/widget/TextView;

    const v0, 0x7f100389

    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09062c,
            0x7f090632,
            0x7f090631,
            0x7f09062d,
            0x7f090634
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09062c

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new:Lcom/apk/jd;

    if-eqz p1, :cond_10

    .line 3
    invoke-interface {p1}, Lcom/apk/jd;->continue()V

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090632

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {p1}, Lcom/apk/nd;->native(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lcom/apk/n2;->u(Lcom/biquge/ebook/app/bean/Book;Z)V

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {v1, v3}, Lcom/apk/nd;->import(Ljava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if(Z)V

    .line 12
    invoke-static {}, Lcom/apk/ze;->V()V

    .line 13
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 14
    :cond_2
    throw v2

    .line 15
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3e9

    const-string v1, "type"

    .line 16
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 18
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 19
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090631

    if-ne v0, v1, :cond_6

    .line 20
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {p1, v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->setReadChapterUrl(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->do:Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    goto/16 :goto_1

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09062d

    if-ne v0, v1, :cond_d

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p1, :cond_7

    .line 26
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz p1, :cond_10

    .line 28
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 29
    new-instance p1, Lcom/apk/lv;

    invoke-direct {p1}, Lcom/apk/lv;-><init>()V

    .line 30
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {v0, v1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirPopView;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    .line 32
    instance-of v1, v0, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz v1, :cond_8

    .line 33
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 34
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 35
    :cond_8
    instance-of v1, v0, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz v1, :cond_9

    .line 36
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 37
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 38
    :cond_9
    instance-of v1, v0, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz v1, :cond_a

    .line 39
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 40
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 41
    :cond_a
    instance-of v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz v1, :cond_b

    .line 42
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 43
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 44
    :cond_b
    instance-of v1, v0, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz v1, :cond_c

    .line 45
    sget-boolean v1, Lcom/apk/zu;->try:Z

    .line 46
    iput-boolean v1, p1, Lcom/apk/lv;->continue:Z

    .line 47
    :cond_c
    :goto_0
    iput-object p1, v0, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 48
    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_1

    .line 49
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090634

    if-ne p1, v0, :cond_10

    .line 50
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p1, :cond_e

    .line 51
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 52
    :cond_e
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz p1, :cond_10

    .line 53
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getOpenUrl()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 55
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 57
    invoke-virtual {v2}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-\u539f\u7f51\u9875"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 58
    invoke-static {v0, p1, v2, v2, v1}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public final new()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    const v1, 0x7f080223

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookCover:Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lcom/apk/u;->super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookSource:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getFirsturl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/n2;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mDescTv:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebBook;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook;->getChapters()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookCover:Landroid/widget/ImageView;

    invoke-static {v0, v3, v1, v2}, Lcom/apk/u;->super(Ljava/lang/String;Landroid/widget/ImageView;ILcom/apk/j1;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookAuthor:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mBookSource:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apk/n2;->while(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mDescTv:Lcom/biquge/ebook/app/widget/ExpandableTextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getLastList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/ChapterBean;

    .line 17
    new-instance v3, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 20
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/apk/ze;->new(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 22
    new-instance v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;

    invoke-direct {v0, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;-><init>(Ljava/util/List;)V

    .line 23
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mChapterRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;

    invoke-direct {v1, p0, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$for;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 25
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView$if;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    .line 26
    invoke-direct {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for()Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->for:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apk/n2;->f(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->if(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setReloadListener(Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->setReloadListener(Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;)V

    :cond_0
    return-void
.end method

.method public setWebCodeCallback(Lcom/apk/jd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->new:Lcom/apk/jd;

    return-void
.end method
