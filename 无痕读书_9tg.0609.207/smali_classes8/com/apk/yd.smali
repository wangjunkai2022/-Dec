.class public Lcom/apk/yd;
.super Ljava/lang/Object;
.source "WebReadActivity.java"

# interfaces
.implements Lcom/apk/v60;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/yd;->if:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    iput-object p2, p0, Lcom/apk/yd;->do:Ljava/lang/String;

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

    return-void
.end method

.method public onAdClick()V
    .locals 0

    return-void
.end method

.method public onAdClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yd;->if:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->break:Lcom/apk/c60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/c60;->else()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdShow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/yd;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/i;->case(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/apk/yd;->do:Ljava/lang/String;

    invoke-static {v0}, Lcom/apk/i;->do(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoCached()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/yd;->if:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->break:Lcom/apk/c60;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lcom/apk/c60;->goto(Landroid/app/Activity;)Z

    :cond_0
    return-void
.end method
