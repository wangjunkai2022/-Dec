.class public Lcom/apk/kb;
.super Lcom/apk/bg;
.source "ExternalSearchFragment.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/kb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    iput-object p2, p0, Lcom/apk/kb;->do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/apk/kb;->do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SP_WEB_TO_RED_KEY"

    invoke-static {v0, p1}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/kb;->if:Lcom/biquge/ebook/app/ui/fragment/ExternalSearchFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    iget-object p1, p0, Lcom/apk/kb;->do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/apk/kb;->do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    .line 3
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->isRuleSite()Z

    move-result p1

    xor-int/lit8 v4, p1, 0x1

    iget-object p1, p0, Lcom/apk/kb;->do:Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;

    .line 4
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/ExternalWebSite$WebSiteBean;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->k(Landroid/content/Context;Ljava/lang/String;ZZZLjava/lang/String;)V

    return-void
.end method
