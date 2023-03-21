.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;
.super Ljava/lang/Object;
.source "BookMyListChildFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    iput p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/BookElement;

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->for:Lcom/apk/v3;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget v4, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$for;->do:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/apk/v3;->const(ZLjava/lang/String;Lcom/biquge/ebook/app/bean/BookInfoEntity;I)V

    :cond_0
    return-void
.end method
