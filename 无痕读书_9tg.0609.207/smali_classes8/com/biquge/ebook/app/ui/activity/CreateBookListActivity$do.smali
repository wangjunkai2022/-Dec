.class public Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;
.super Ljava/lang/Object;
.source "CreateBookListActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902d9

    if-eq p1, p2, :cond_3

    const p2, 0x7f0902dc

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 4
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 6
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->this:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 p1, p3, 0x1

    .line 8
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 10
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 13
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->this:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    const/4 p2, 0x0

    .line 16
    iput-object p2, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->this:Ljava/lang/String;

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 18
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 19
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 20
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->this:Ljava/lang/String;

    .line 21
    iput-object p2, p1, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;->do:Ljava/lang/String;

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 23
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 24
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    .line 25
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 26
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 29
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 30
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 31
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 32
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 33
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/biquge/ebook/app/bean/Book;

    invoke-virtual {p2}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object p1, p1, Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;->if:Ljava/util/Map;

    if-eqz p1, :cond_4

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;

    .line 37
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/CreateBookListActivity;->case:Lcom/biquge/ebook/app/adapter/CreateBookListAdapter;

    .line 38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
