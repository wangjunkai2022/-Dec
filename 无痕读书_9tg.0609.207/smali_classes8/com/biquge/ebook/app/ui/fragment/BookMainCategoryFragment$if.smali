.class public Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;

    .line 2
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/fragment/BookMainCategoryFragment;->goto:Lcom/biquge/ebook/app/adapter/BookParentCategoryAdapter;

    .line 3
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/NovelCategory;

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookListCategoryActivity;->i(Landroid/content/Context;Lcom/biquge/ebook/app/bean/NovelCategory;)V

    return-void
.end method
