.class public Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    iput p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 3
    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/BookElement;

    .line 4
    const-class v1, Lcom/biquge/ebook/app/bean/CreateBookList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "bookListId = ?"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookElement;->getListId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 6
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 7
    iget v1, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->remove(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment$if;->if:Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;

    .line 9
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookMyListChildFragment;->if:Lcom/biquge/ebook/app/adapter/BookListAdapter;

    .line 10
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const v0, 0x7f100195

    .line 11
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
