.class public Lcom/apk/wd;
.super Ljava/lang/Object;
.source "WebHistoryActivity.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemChildClickListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChildClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f09035a

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    .line 4
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TxtCollect;

    if-eqz p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    .line 6
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    .line 7
    invoke-virtual {p2, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->remove(I)V

    .line 8
    iget-object p2, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    .line 9
    iget-object p2, p2, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 11
    const-class p2, Lcom/biquge/ebook/app/bean/TxtCollect;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/String;

    const-string v2, "url = ?"

    aput-object v2, p3, v1

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TxtCollect;->getUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lorg/litepal/LitePal;->deleteAll(Ljava/lang/Class;[Ljava/lang/String;)I

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f09035c

    if-ne p1, p2, :cond_1

    .line 13
    iget-object p1, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    .line 14
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    .line 15
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/TxtCollect;

    if-eqz p1, :cond_1

    .line 16
    iget-object p2, p0, Lcom/apk/wd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/TxtCollect;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string p3, "\u6d4f\u89c8\u5386\u53f2"

    invoke-static {p2, p1, v0, v1, p3}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
