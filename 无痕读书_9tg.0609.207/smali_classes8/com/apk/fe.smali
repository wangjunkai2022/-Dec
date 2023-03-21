.class public Lcom/apk/fe;
.super Ljava/lang/Object;
.source "WebBookDirLayout.java"

# interfaces
.implements Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView$if;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/fe;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/fe;->do:Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->break:Lcom/apk/qd;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->for:Ljava/lang/String;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/view/WebBookDirLayout;->case:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v0}, Lcom/apk/qd;->break(ILjava/lang/String;Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;)V

    :cond_0
    return-void
.end method
