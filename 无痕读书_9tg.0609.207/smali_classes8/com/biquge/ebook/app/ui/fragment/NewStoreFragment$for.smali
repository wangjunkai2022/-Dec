.class public Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;
.super Ljava/lang/Object;
.source "NewStoreFragment.java"

# interfaces
.implements Lcom/apk/cc0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;->this:Ljava/util/List;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad"

    .line 5
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1, v4, v0}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "book"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {v2}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9876\u90e8\u8f6e\u64adBanner|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/apk/n2;->catch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/biquge/ebook/app/bean/Book;

    move-result-object v0

    .line 11
    invoke-static {v2, p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->t(Landroid/content/Context;Ljava/lang/String;Lcom/biquge/ebook/app/bean/Book;)V

    goto :goto_0

    :cond_1
    const-string p1, "booklist"

    .line 12
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment$for;->do:Lcom/biquge/ebook/app/ui/fragment/NewStoreFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/StoreBean$BannerBean;->getParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4}, Lcom/biquge/ebook/app/ui/activity/BookListDetailActivity;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
