.class public final Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/apk/g1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->c0(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/app/Activity;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->do:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->do:Landroid/app/Activity;

    const-class v1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const-string v1, "EXTRA_WEB_BEAN_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->do:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    if-eqz p1, :cond_1

    const-string p1, "SP_WEB_TO_RED_KEY"

    .line 5
    invoke-static {p1}, Lcom/apk/p0;->do(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getNovelId()Ljava/lang/String;

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$return;->if:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;->getTitle()Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    throw p1

    :cond_1
    :goto_0
    return-void
.end method
