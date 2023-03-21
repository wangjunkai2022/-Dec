.class public Lcom/apk/ua;
.super Ljava/lang/Object;
.source "BookDetailDirFragment.java"

# interfaces
.implements Lcom/apk/v60;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ua;->if:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    iput-object p2, p0, Lcom/apk/ua;->do:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public if(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ua;->if:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->new:Lcom/apk/c60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/c60;->else()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public onAdShow()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/ua;->do:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/apk/i;->case(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/apk/ua;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/i;->do(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/ua;->if:Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/fragment/BookDetailDirFragment;->new:Lcom/apk/c60;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apk/c60;->goto(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method
