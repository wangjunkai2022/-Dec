.class public Lcom/expand/CommendMediaDialog;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "CommendMediaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/expand/CommendMediaDialog$if;
    }
.end annotation


# instance fields
.field public do:Landroidx/recyclerview/widget/RecyclerView;

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lcom/expand/CommendMediaDialog$if;

.field public final new:Lcom/apk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/expand/CommendMediaDialog$do;

    invoke-direct {p1, p0}, Lcom/expand/CommendMediaDialog$do;-><init>(Lcom/expand/CommendMediaDialog;)V

    iput-object p1, p0, Lcom/expand/CommendMediaDialog;->new:Lcom/apk/bg;

    .line 3
    iput-object p2, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    return-void
.end method

.method public static if(Landroid/content/Context;Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getSourceType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cartoon"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getBookName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    :cond_0
    const-string v1, "novel"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getBookName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->o(Landroid/content/Context;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    :cond_1
    const-string v1, "apk"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getBookName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/apk/kf;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCommendMediaBean(Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getDesc()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getBookName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{name}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getAuthor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{author}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{score}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902fa

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090490

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;->getSourceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "movie"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f08010c

    goto :goto_0

    :cond_0
    const-string v2, "tingshu"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f08010a

    goto :goto_0

    :cond_1
    const-string v2, "cartoon"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f080108

    goto :goto_0

    :cond_2
    const-string v2, "novel"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f08010b

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f090491

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcom/expand/CommendMediaDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09048e

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lcom/expand/CommendMediaDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0065

    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/eg;->switch()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public onCreate()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    .line 2
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/apk/continue;->else:Lcom/biquge/ebook/app/bean/SameCommendBean;

    .line 4
    iget-object v1, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getGet_data_size()I

    move-result v1

    iget-object v2, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/SameCommendBean;->setGet_data_size(I)V

    :cond_0
    const/16 v1, 0x8

    const v2, 0x7f090493

    const v3, 0x7f090492

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SameCommendBean;->getGet_data_size()I

    move-result v0

    if-le v0, v5, :cond_2

    const v0, 0x7f09048f

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/expand/CommendMediaDialog;->do:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 11
    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->do:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lcom/apk/eg;->catch(F)I

    move-result v5

    iget-object v6, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v6, v6, v5

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 13
    :goto_0
    iget-object v6, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v6, 0x0

    .line 14
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance v5, Lcom/expand/CommendMediaDialog$if;

    invoke-direct {v5, v0}, Lcom/expand/CommendMediaDialog$if;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lcom/expand/CommendMediaDialog;->if:Lcom/expand/CommendMediaDialog$if;

    .line 16
    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->do:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 17
    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->if:Lcom/expand/CommendMediaDialog$if;

    new-instance v5, Lcom/apk/vt;

    invoke-direct {v5, p0}, Lcom/apk/vt;-><init>(Lcom/expand/CommendMediaDialog;)V

    invoke-virtual {v0, v5}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 18
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const-string v0, "SP_SAME_COMMEND_INDEX_KEY"

    .line 20
    invoke-static {v0, v4}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v6

    .line 21
    iget-object v7, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    rem-int v8, v6, v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;

    if-eqz v7, :cond_3

    .line 22
    invoke-direct {p0, v7}, Lcom/expand/CommendMediaDialog;->setCommendMediaBean(Lcom/biquge/ebook/app/bean/CommendMediaListNameBean;)V

    :cond_3
    add-int/2addr v6, v5

    .line 23
    sget-object v5, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v5, v0, v6}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    const v0, 0x7f09048d

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/expand/CommendMediaDialog;->new:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->do:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/expand/CommendMediaDialog;->if:Lcom/expand/CommendMediaDialog$if;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/expand/CommendMediaDialog;->for:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 28
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_4
    return-void
.end method
