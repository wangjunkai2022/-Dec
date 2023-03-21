.class public Lcom/apk/n9;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Lcom/apk/uv;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/n9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    .line 3
    invoke-virtual {v0}, Lcom/apk/h2;->static()Lcom/biquge/ebook/app/bean/ChapterBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/n9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 5
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ChapterBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\u9605\u8bfb\u5173\u95ed\u7545\u8bfb\u5230\u7f51\u9875"

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v3, v2}, Lcom/biquge/ebook/app/ui/webread/ui/WebReadActivity;->j(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/apk/n9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
