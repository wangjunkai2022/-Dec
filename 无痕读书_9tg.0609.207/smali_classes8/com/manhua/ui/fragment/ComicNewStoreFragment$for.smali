.class public Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;
.super Ljava/lang/Object;
.source "ComicNewStoreFragment.java"

# interfaces
.implements Lcom/apk/cc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicNewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    .line 2
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->this:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ad"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v0, v3, p1}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "book"

    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 11
    invoke-static {v1, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    goto :goto_0

    :cond_1
    const-string v0, "booklist"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicNewStoreFragment$for;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ComicStoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/manhua/ui/activity/ComicListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
