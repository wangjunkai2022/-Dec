.class public Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do$do;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do(Lcom/apk/ss;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment$do;->do:Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->mPtrClassicFrameLayout:Lcom/chanven/lib/cptr/PtrClassicFrameLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/ss;->break()V

    :cond_0
    return-void
.end method
