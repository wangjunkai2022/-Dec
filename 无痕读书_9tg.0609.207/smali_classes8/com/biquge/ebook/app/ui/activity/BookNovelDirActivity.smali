.class public Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;
.super Lcom/apk/f6;
.source "BookNovelDirActivity.java"


# instance fields
.field public final case:Lcom/apk/u5;

.field public do:Lcom/apk/k;

.field public for:Lcom/biquge/ebook/app/bean/CollectBook;

.field public if:Lcom/biquge/ebook/app/bean/Book;

.field public mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090183
    .end annotation
.end field

.field public mDirSortView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ec
    .end annotation
.end field

.field public mDirTitleTView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903f4
    .end annotation
.end field

.field public mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09043a
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public try:Lcom/apk/v3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$if;-><init>(Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->case:Lcom/apk/u5;

    return-void
.end method

.method public static j(Landroid/app/Activity;Lcom/biquge/ebook/app/bean/CollectBook;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "collectBook"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "readChapterId"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010023

    const p2, 0x7f010024

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/f6;->finish()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->for:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v0, :cond_0

    const v0, 0x7f010024

    const v1, 0x7f010029

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004b

    return v0
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->try:Lcom/apk/v3;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->if:Lcom/biquge/ebook/app/bean/Book;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->for:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getCollectId()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v1, v2

    :cond_2
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/apk/v3;->static(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirTitleTView:Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->if:Lcom/biquge/ebook/app/bean/Book;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->for:Lcom/biquge/ebook/app/bean/CollectBook;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/CollectBook;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v1, v2

    .line 5
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->case:Lcom/apk/u5;

    invoke-direct {v0, p0, v1}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->try:Lcom/apk/v3;

    .line 7
    new-instance v0, Lcom/apk/k;

    invoke-direct {v0, p0}, Lcom/apk/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    .line 8
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    new-instance v1, Lcom/apk/n7;

    invoke-direct {v1, p0}, Lcom/apk/n7;-><init>(Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->new:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apk/k;->new(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/apk/k;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v0, :cond_5

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    invoke-virtual {v0}, Lcom/apk/k;->getCount()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    .line 13
    :try_start_2
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    invoke-virtual {v3, v2}, Lcom/apk/k;->if(I)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->new:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 14
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    :cond_4
    if-lez v1, :cond_5

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->i()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "book"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/Book;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->if:Lcom/biquge/ebook/app/bean/Book;

    :cond_0
    const-string v1, "collectBook"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/CollectBook;

    iput-object v1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->for:Lcom/biquge/ebook/app/bean/CollectBook;

    :cond_1
    const-string v1, "readChapterId"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->new:Ljava/lang/String;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity$do;-><init>(Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public isDarkFont()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->do:Lcom/apk/k;

    invoke-virtual {p1}, Lcom/apk/k;->getCount()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
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

.method public menuClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0903ed,
            0x7f0903ec
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0903ed

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0903ec

    if-ne p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "bottom"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->k(I)V

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->k(I)V

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
