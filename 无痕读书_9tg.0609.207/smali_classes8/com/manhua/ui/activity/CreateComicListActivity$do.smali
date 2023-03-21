.class public Lcom/manhua/ui/activity/CreateComicListActivity$do;
.super Ljava/lang/Object;
.source "CreateComicListActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/activity/CreateComicListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/activity/CreateComicListActivity;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/activity/CreateComicListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0902d9

    if-eq p1, p2, :cond_4

    const p2, 0x7f0902dc

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 4
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 6
    iget-object p2, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 p1, p3, 0x1

    .line 8
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 9
    iget-object p2, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 10
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 12
    iget-object p2, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 13
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_2

    .line 14
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getImg()Ljava/lang/String;

    move-result-object p1

    .line 15
    iput-object p1, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    const/4 p2, 0x0

    .line 17
    iput-object p2, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 19
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 20
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 21
    iget-object p2, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->break:Ljava/lang/String;

    .line 22
    iput-object p2, p1, Lcom/manhua/adapter/CreateComicListAdapter;->do:Ljava/lang/String;

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 24
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 25
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    .line 26
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 27
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 30
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 31
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 32
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    if-eqz p1, :cond_5

    .line 33
    iget-object p2, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 34
    iget-object p2, p2, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 35
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object p2, p2, Lcom/manhua/adapter/CreateComicListAdapter;->if:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/manhua/ui/activity/CreateComicListActivity$do;->do:Lcom/manhua/ui/activity/CreateComicListActivity;

    .line 38
    iget-object p1, p1, Lcom/manhua/ui/activity/CreateComicListActivity;->else:Lcom/manhua/adapter/CreateComicListAdapter;

    .line 39
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
