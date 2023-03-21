.class public Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;
.super Landroid/widget/FrameLayout;
.source "WebBookDirLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public break:Lcom/apk/qd;

.field public case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

.field public final catch:Lcom/apk/md;

.field public do:Lcom/apk/k;

.field public else:I

.field public for:Ljava/lang/String;

.field public goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

.field public mBatchChapterLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c3
    .end annotation
.end field

.field public mBatchChapterListBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c4
    .end annotation
.end field

.field public mBatchChapterNextBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c5
    .end annotation
.end field

.field public mBatchChapterPreBtn:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c6
    .end annotation
.end field

.field public mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09063f
    .end annotation
.end field

.field public mDirSortView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ec
    .end annotation
.end field

.field public mLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09061f
    .end annotation
.end field

.field public mTitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090640
    .end annotation
.end field

.field public new:Ljava/lang/String;

.field public this:Lcom/apk/h1;

.field public try:Ljava/lang/String;


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
    new-instance p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout$do;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->catch:Lcom/apk/md;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c01ce

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    const-string p2, "bottom"

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const p1, 0x7f0903ec

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09063e

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    new-instance p2, Lcom/apk/fe;

    invoke-direct {p2, p0}, Lcom/apk/fe;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->setReloadListener(Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;)V

    .line 9
    new-instance p1, Lcom/apk/qd;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->catch:Lcom/apk/md;

    invoke-direct {p1, p2, v0}, Lcom/apk/qd;-><init>(Landroid/app/Activity;Lcom/apk/md;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->break:Lcom/apk/qd;

    .line 10
    new-instance p1, Lcom/apk/k;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apk/k;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    .line 11
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    invoke-virtual {p2, p1}, Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    new-instance p2, Lcom/apk/ge;

    invoke-direct {p2, p0}, Lcom/apk/ge;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public static do(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getBatchOptionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterListBtn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    iget v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mBatchChapterLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p0, 0x0

    .line 7
    throw p0
.end method


# virtual methods
.method public final for(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->break:Lcom/apk/qd;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/qd;->break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    :cond_0
    return-void
.end method

.method public if(Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Ljava/lang/String;Ljava/lang/String;Lcom/apk/h1;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->try:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->this:Lcom/apk/h1;

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getChapterUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_1

    const p1, 0x7f09063e

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for(I)V

    return-void
.end method

.method public menuClick(Landroid/view/View;)V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900c6,
            0x7f0900c4,
            0x7f0900c5
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900c6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->getPreUrl()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for(I)V

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900c4

    if-ne v0, v1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->goto:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/webread/entity/WebBook$ChaptersBean;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    const v2, 0x7f100254

    .line 13
    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->else:I

    new-instance v5, Lcom/apk/he;

    invoke-direct {v5, p0}, Lcom/apk/he;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V

    const v6, 0x7f0c01dc

    const v7, 0x7f0c01db

    .line 14
    sget-boolean v8, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean v8, v1, Lcom/apk/lv;->continue:Z

    .line 16
    new-instance v8, Lcom/lxj/xpopup/impl/CenterListPopupView;

    invoke-direct {v8, v0, v6, v7}, Lcom/lxj/xpopup/impl/CenterListPopupView;-><init>(Landroid/content/Context;II)V

    .line 17
    iput-object v2, v8, Lcom/lxj/xpopup/impl/CenterListPopupView;->for:Ljava/lang/CharSequence;

    .line 18
    iput-object p1, v8, Lcom/lxj/xpopup/impl/CenterListPopupView;->new:[Ljava/lang/String;

    .line 19
    iput-object v3, v8, Lcom/lxj/xpopup/impl/CenterListPopupView;->try:[I

    .line 20
    iput v4, v8, Lcom/lxj/xpopup/impl/CenterListPopupView;->else:I

    .line 21
    iput-object v5, v8, Lcom/lxj/xpopup/impl/CenterListPopupView;->case:Lcom/apk/xv;

    .line 22
    iput-object v1, v8, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v8}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c5

    if-ne p1, v0, :cond_3

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->if:Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/webread/WebChapterBatchBean;->getNextUrl()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apk/k;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/apk/k;->new(Ljava/lang/String;Z)V

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    invoke-virtual {p1}, Lcom/apk/k;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    invoke-virtual {v2, v1}, Lcom/apk/k;->if(I)Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->new:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    :cond_1
    if-lez v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09063e

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->this:Lcom/apk/h1;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Lcom/apk/h1;->do()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0903ec

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "bottom"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->setListSelection(I)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    const v0, 0x7f08015e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->setListSelection(I)V

    .line 11
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    const v1, 0x7f08015f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirSortView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setListSelection(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->mDirListView:Lcom/biquge/ebook/app/widget/pinnedheaderlistview/SectionPinListView;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->do:Lcom/apk/k;

    invoke-virtual {v0}, Lcom/apk/k;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
