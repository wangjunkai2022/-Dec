.class public Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WebViewActivity;

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
    .locals 0

    return-void
.end method

.method public interface(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WebViewActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->if:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity$do;->do:Lcom/biquge/ebook/app/ui/activity/WebViewActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->mHeaderView:Lcom/biquge/ebook/app/widget/HeaderView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/HeaderView;->setTitile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
