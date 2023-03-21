.class public Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;
.super Ljava/lang/Object;
.source "WebSiteSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->catch:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 5
    iget v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    iput-boolean v2, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->goto:Z

    .line 7
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 8
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 10
    iget v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    if-ge v1, v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 12
    iget v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 13
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 14
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->catch:Ljava/util/List;

    .line 15
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 16
    iget v3, v3, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    .line 17
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 18
    iput v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->this:I

    .line 19
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 20
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->break:Ljava/util/List;

    .line 21
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 22
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->catch:Ljava/util/List;

    .line 23
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 24
    iget v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 27
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    .line 28
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 29
    iget v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    .line 30
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 31
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->catch:Ljava/util/List;

    .line 32
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 33
    iget v3, v3, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    .line 34
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 35
    iget-boolean v3, v3, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->goto:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    :try_start_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->if(ILjava/util/List;Z)V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 38
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->goto:Z

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 40
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->const:Z

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 42
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 44
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    .line 45
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 46
    iget v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    .line 47
    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    .line 48
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    .line 49
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->case:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$try;

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setEnableLoadMore(Z)V

    :cond_2
    return-void

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 52
    iget v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->class:I

    .line 53
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$for;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 54
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->final:Ljava/lang/Runnable;

    .line 55
    sget-object v2, Lcom/apk/dg;->do:Ljava/util/Random;

    const/16 v3, 0x12c

    .line 56
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/apk/i6;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
