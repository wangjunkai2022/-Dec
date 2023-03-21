.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;
.super Ljava/lang/Object;
.source "BookMainCategoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->this:Lcom/biquge/ebook/app/adapter/LeftCategoryAdapter;

    .line 5
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 6
    iget p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->for:I

    .line 7
    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/RankListBean;

    if-eqz p1, :cond_0

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5206\u7c7b|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/RankListBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-virtual {p2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p2

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 10
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->break:Lcom/biquge/ebook/app/adapter/NovelRankListAdapter;

    .line 11
    invoke-virtual {v0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/biquge/ebook/app/bean/Book;

    invoke-static {p2, p1, p3}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
