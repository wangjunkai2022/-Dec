.class public Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$if;
.super Ljava/lang/Object;
.source "BookCategoryRankFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->initData()V
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->try:Lcom/apk/v3;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->if:Ljava/lang/String;

    iget-object v2, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->for:Ljava/lang/String;

    iget v3, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    invoke-static {v1, v2, v3}, Lcom/apk/w;->for(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->try:Lcom/apk/v3;

    iget v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookCategoryRankFragment;->new:I

    invoke-virtual {v2, v1, v0}, Lcom/apk/v3;->switch(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
