.class public Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$if;
.super Lcom/apk/bg;
.source "WebSiteSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$if;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->case:Lcom/apk/kd;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout$for;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->goto:Z

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->if()V

    :cond_0
    return-void
.end method
