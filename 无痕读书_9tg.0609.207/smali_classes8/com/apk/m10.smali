.class public Lcom/apk/m10;
.super Ljava/lang/Object;
.source "ComicDetailDataFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicDetailDataFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDetailDataFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/m10;->do:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/apk/m10;->do:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicDetailDataFragment;->for:Lcom/manhua/adapter/ComicAuthorAdapter;

    .line 3
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {p2}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;->getImg()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/manhua/data/bean/ComicBean;->setImg(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;->getLastChapter()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/manhua/data/bean/ComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicBean$SameUserBooksNameBean;->getLastChapterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/manhua/data/bean/ComicBean;->setLastChapterId(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/apk/m10;->do:Lcom/manhua/ui/fragment/ComicDetailDataFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    .line 11
    invoke-static {p1, p2}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
