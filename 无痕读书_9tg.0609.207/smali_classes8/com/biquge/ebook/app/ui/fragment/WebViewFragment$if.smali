.class public Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$if;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/browse/ProgressBarWebView$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

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
    .locals 0

    return-void
.end method

.method public static(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$if;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    .line 2
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->new:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0, p2}, Lcom/biquge/ebook/app/ui/activity/WebViewActivity;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
