.class public Lcom/manhua/ui/activity/ComicNovelDirActivity;
.super Lcom/apk/f6;
.source "ComicNovelDirActivity.java"


# instance fields
.field public do:Lcom/apk/ez;

.field public for:Lcom/apk/z2;

.field public if:Lcom/manhua/data/bean/ComicCollectBean;

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

.field public final new:Lcom/apk/r5;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/f6;-><init>()V

    .line 2
    new-instance v0, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;

    invoke-direct {v0, p0}, Lcom/manhua/ui/activity/ComicNovelDirActivity$if;-><init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->new:Lcom/apk/r5;

    return-void
.end method

.method public static j(Landroid/content/Context;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/manhua/ui/activity/ComicNovelDirActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "collectBean"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0c004b

    return v0
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->for:Lcom/apk/z2;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->if:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getCollectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/apk/z2;->import(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "collectBean"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicCollectBean;

    iput-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->if:Lcom/manhua/data/bean/ComicCollectBean;

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirTitleTView:Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->if:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v0, Lcom/apk/z2;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->new:Lcom/apk/r5;

    invoke-direct {v0, p0, v1}, Lcom/apk/z2;-><init>(Landroid/app/Activity;Lcom/apk/r5;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->for:Lcom/apk/z2;

    .line 5
    new-instance v0, Lcom/apk/ez;

    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-direct {v0, p0, v1}, Lcom/apk/ez;-><init>(Landroid/content/Context;Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;)V

    iput-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->do:Lcom/apk/ez;

    .line 6
    iget-object v1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {v1, v0}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    new-instance v1, Lcom/apk/f10;

    invoke-direct {v1, p0}, Lcom/apk/f10;-><init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->i()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    new-instance v1, Lcom/manhua/ui/activity/ComicNovelDirActivity$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/activity/ComicNovelDirActivity$do;-><init>(Lcom/manhua/ui/activity/ComicNovelDirActivity;)V

    invoke-virtual {v0, v1}, Lcom/manhua/ui/widget/PublicLoadingView;->setReloadListener(Lcom/manhua/ui/widget/PublicLoadingView$do;)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

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
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->do:Lcom/apk/ez;

    invoke-virtual {p1}, Lcom/apk/ez;->getCount()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

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
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "bottom"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->k(I)V

    .line 6
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/manhua/ui/activity/ComicNovelDirActivity;->k(I)V

    .line 10
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/manhua/ui/activity/ComicNovelDirActivity;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
