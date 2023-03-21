.class public Lcom/apk/ke$do;
.super Lcom/apk/c1;
.source "WebContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/ke;->static(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/apk/ke;

.field public final synthetic if:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/apk/ke;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ke$do;->for:Lcom/apk/ke;

    iput-object p2, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/ke$do;->if:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/nd;->const(Ljava/lang/String;)Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getInfo_urlExpression()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apk/n2;->goto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/webread/WebSiteRulesBean;->getContent_urlExpression()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apk/n2;->goto(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/ke$do;->for:Lcom/apk/ke;

    iget-object p1, p1, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/ke$do;->for:Lcom/apk/ke;

    iget-object v2, v2, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 5
    iget-boolean v3, v2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->this:Z

    .line 6
    iget-boolean v2, v2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->catch:Z

    .line 7
    invoke-static {p1, v1, v3, v2, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->this(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/apk/ke$do;->for:Lcom/apk/ke;

    iget-object p1, p1, Lcom/apk/ke;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->case(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;Z)V

    .line 9
    iget-object p1, p0, Lcom/apk/ke$do;->if:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/apk/ke$do;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
