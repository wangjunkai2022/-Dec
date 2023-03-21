.class public Lcom/manhua/adapter/CreateComicListAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "CreateComicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/adapter/CreateComicListAdapter$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/manhua/data/bean/ComicBean;",
        "Lcom/chad/library/adapter/base/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0c00fa

    .line 1
    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Lcom/manhua/data/bean/ComicBean;

    const v0, 0x7f0902d8

    .line 2
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/labelview/LabelView;

    .line 3
    iget-object v1, p0, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :try_start_0
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09032a

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/apk/u;->import(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const v0, 0x7f09033a

    .line 8
    :try_start_1
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    const v0, 0x7f090349

    const v1, 0x7f10042d

    new-array v4, v2, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    .line 10
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const v1, 0x7f090344

    if-nez v0, :cond_3

    const v0, 0x7f10042e

    new-array v4, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getCName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/BaseViewHolder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const v0, 0x7f0902d9

    .line 14
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0902da

    .line 15
    invoke-virtual {p1, v4}, Lcom/chad/library/adapter/base/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 16
    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/text/TextWatcher;

    if-eqz v5, :cond_4

    .line 17
    invoke-virtual {v4}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    :cond_4
    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/manhua/adapter/CreateComicListAdapter;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    new-instance v5, Lcom/manhua/adapter/CreateComicListAdapter$if;

    invoke-virtual {p2}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x0

    invoke-direct {v5, p0, p2, v1, v6}, Lcom/manhua/adapter/CreateComicListAdapter$if;-><init>(Lcom/manhua/adapter/CreateComicListAdapter;Ljava/lang/String;Landroid/widget/ImageView;Lcom/manhua/adapter/CreateComicListAdapter$do;)V

    .line 20
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 21
    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    new-array p2, v2, [I

    const v1, 0x7f0902dc

    aput v1, p2, v3

    .line 22
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    new-array p2, v2, [I

    aput v0, p2, v3

    .line 23
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseViewHolder;->addOnClickListener([I)Lcom/chad/library/adapter/base/BaseViewHolder;

    return-void
.end method

.method public do(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method
