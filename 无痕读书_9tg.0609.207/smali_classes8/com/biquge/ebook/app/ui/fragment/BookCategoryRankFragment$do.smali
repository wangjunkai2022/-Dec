.class public Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;
.super Ljava/lang/Object;
.source "BookCategoryRankFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->try:Lcom/apk/v3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    .line 4
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->if:Ljava/lang/String;

    iget-object v2, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->for:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/w;->for(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->try:Lcom/apk/v3;

    iget p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    invoke-virtual {v1, v0, p1}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
