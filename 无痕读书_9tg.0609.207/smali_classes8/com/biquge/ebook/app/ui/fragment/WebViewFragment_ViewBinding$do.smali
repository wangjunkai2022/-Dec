.class public Lcom/biquge/ebook/app/ui/fragment/WebViewFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WebViewFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/WebViewFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    .line 2
    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    return-void
.end method
