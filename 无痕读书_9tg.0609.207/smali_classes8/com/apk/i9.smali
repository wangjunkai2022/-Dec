.class public Lcom/apk/i9;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/i9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/i9;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->default()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    invoke-virtual {v1}, Lcom/apk/h2;->x()V

    .line 4
    :cond_0
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->public:Z

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->final()V

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->K()V

    .line 8
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/apk/continue;->for:Lcom/biquge/ebook/app/bean/NewYyConfBean;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/NewYyConfBean;->getBd_tts_err()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 11
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_4

    const-string v1, "\u6717\u8bfb\u5931\u8d25\uff01<br> <font color=\'#C0392B\'>\u5efa\u8bae\u60a8\u65ad\u5f00WiFi\uff0c\u4f7f\u7528\u8702\u7a9d\u7f51\u7edc\u5c1d\u8bd5</font><br>\u5982\u4ecd\u65e0\u6cd5\u542c\u4e66\uff0c\u8bf7\u53cd\u9988\u7ed9\u5ba2\u670d\u3002"

    .line 12
    :cond_4
    :try_start_1
    new-instance v4, Lcom/apk/zs;

    invoke-direct {v4}, Lcom/apk/zs;-><init>()V

    .line 13
    iput-object v0, v4, Lcom/apk/zs;->do:Landroid/content/Context;

    .line 14
    iput-object v1, v4, Lcom/apk/zs;->for:Ljava/lang/String;

    .line 15
    iput-boolean v2, v4, Lcom/apk/zs;->final:Z

    const v1, 0x7f100326

    .line 16
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v4, Lcom/apk/zs;->new:Ljava/lang/String;

    .line 18
    new-instance v1, Lcom/apk/h9;

    invoke-direct {v1, v0}, Lcom/apk/h9;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    .line 19
    iput-object v1, v4, Lcom/apk/zs;->try:Lcom/apk/ft;

    const v0, 0x7f10018e

    .line 20
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, v4, Lcom/apk/zs;->case:Ljava/lang/String;

    .line 22
    iput-object v3, v4, Lcom/apk/zs;->else:Lcom/apk/dt;

    .line 23
    iput-boolean v2, v4, Lcom/apk/zs;->const:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, v4, Lcom/apk/zs;->class:Z

    .line 25
    invoke-static {v4}, Lcom/apk/eg;->f(Lcom/apk/zs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
