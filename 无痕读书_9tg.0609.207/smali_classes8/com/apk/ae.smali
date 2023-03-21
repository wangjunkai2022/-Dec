.class public Lcom/apk/ae;
.super Lcom/apk/c1;
.source "WebSiteSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/apk/b6<",
        "Lcom/biquge/ebook/app/ui/webread/entity/WebBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

.field public final synthetic if:I


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    iput-object p2, p0, Lcom/apk/ae;->do:Ljava/lang/String;

    iput p3, p0, Lcom/apk/ae;->if:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic do(Lcom/apk/b6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->const:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz v1, :cond_1

    .line 4
    iget v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 5
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    iput v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 7
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->break:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 11
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    .line 12
    iget v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    .line 13
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x1

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    invoke-virtual {v1, v0, p1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do(ILjava/util/List;I)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz v1, :cond_1

    .line 15
    iget v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 16
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 18
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 19
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->break:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 22
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    .line 23
    iget v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    .line 24
    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x2

    check-cast v1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    invoke-virtual {v1, v0, p1, v2}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do(ILjava/util/List;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/ae;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v2, v1, v3}, Lcom/apk/qd;->goto(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/apk/b6;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lcom/apk/b6;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 4
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz v2, :cond_7

    .line 5
    iget p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    .line 6
    check-cast v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    invoke-virtual {v2, p1, v1, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do(ILjava/util/List;I)V

    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 8
    iget v3, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 9
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 10
    check-cast v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    .line 11
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 12
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-virtual {p1}, Lcom/apk/b6;->do()Ljava/util/List;

    move-result-object v5

    if-eqz v2, :cond_5

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x3

    if-gt v1, v6, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    div-int/2addr v1, v6

    add-int/lit8 v0, v1, 0x1

    .line 17
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v6, v0

    .line 19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    div-int/2addr v7, v0

    move v8, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    if-lez v8, :cond_3

    mul-int v9, v3, v7

    add-int/2addr v9, v6

    add-int/lit8 v10, v3, 0x1

    mul-int v10, v10, v7

    add-int/2addr v10, v6

    add-int/2addr v10, v4

    .line 20
    invoke-interface {v5, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    mul-int v9, v3, v7

    add-int/2addr v9, v6

    add-int/lit8 v10, v3, 0x1

    mul-int v10, v10, v7

    add-int/2addr v10, v6

    .line 21
    invoke-interface {v5, v9, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 22
    :goto_2
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iput-object v1, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->catch:Ljava/util/List;

    .line 24
    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->final:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    .line 25
    iget-object v0, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 26
    iget-boolean p1, p1, Lcom/apk/b6;->if:Z

    .line 27
    iput-boolean p1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->const:Z

    if-eqz p1, :cond_7

    .line 28
    iget p1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    add-int/2addr p1, v4

    iput p1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    goto :goto_3

    .line 29
    :cond_5
    throw v1

    .line 30
    :cond_6
    iget-boolean v0, p1, Lcom/apk/b6;->if:Z

    .line 31
    iput-boolean v0, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->const:Z

    .line 32
    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    new-instance v1, Lcom/apk/vd;

    invoke-direct {v1, p0, p1}, Lcom/apk/vd;-><init>(Lcom/apk/ae;Lcom/apk/b6;)V

    invoke-virtual {v0, v1}, Lcom/apk/i6;->post(Ljava/lang/Runnable;)Z

    .line 33
    iget-object p1, p0, Lcom/apk/ae;->for:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 34
    iget v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    add-int/2addr v0, v4

    iput v0, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->else:I

    :cond_7
    :goto_3
    return-void
.end method
