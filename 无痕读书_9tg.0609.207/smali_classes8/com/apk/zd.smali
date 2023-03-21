.class public Lcom/apk/zd;
.super Ljava/lang/Object;
.source "WebReadActivity.java"

# interfaces
.implements Lcom/apk/k1;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/zd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    new-instance v1, Lcom/apk/td;

    invoke-direct {v1, p0}, Lcom/apk/td;-><init>(Lcom/apk/zd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public for()V
    .locals 0

    return-void
.end method

.method public if(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/zd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->i(Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;Z)V

    return-void
.end method
