.class public Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;
.super Ljava/lang/Object;
.source "WebSiteSearchFragment.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public goto()V
    .locals 0

    return-void
.end method

.method public instanceof(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget p2, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->if:I

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    const-string v0, "\u7ad9\u5916\u641c\u7d22-"

    invoke-static {v0}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment$do;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;

    .line 2
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/webread/ui/WebSiteSearchFragment;->new:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
