.class public Lcom/apk/b1;
.super Landroid/os/AsyncTask;
.source "AppReqTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TResultType;>;"
    }
.end annotation


# instance fields
.field public do:Lcom/apk/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/c1<",
            "TResultType;>;"
        }
    .end annotation
.end field

.field public for:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field

.field public if:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/c1;)Lcom/apk/b1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apk/c1<",
            "TResultType;>;)",
            "Lcom/apk/b1<",
            "TResultType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    iput-object p1, p0, Lcom/apk/b1;->do:Lcom/apk/c1;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p0
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/apk/b1;->do:Lcom/apk/c1;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/apk/b1<",
            "TResultType;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    const v0, 0x7f10025c

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v1, Lcom/apk/zu$do;

    invoke-direct {v1, p1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iget-object v2, v1, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v2, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 6
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/apk/zu$do;->break(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object p1

    .line 7
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    .line 8
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p1, p3}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_2

    .line 12
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 13
    new-instance v1, Lcom/apk/lv;

    invoke-direct {v1}, Lcom/apk/lv;-><init>()V

    .line 14
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    iput-object v2, v1, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 16
    iput-object v2, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    .line 17
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c006a

    .line 18
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 19
    iput-boolean v3, v1, Lcom/apk/lv;->continue:Z

    .line 20
    new-instance v3, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v3, p1, v2}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 21
    invoke-virtual {v3, v0}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 22
    iput-object v1, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-direct {p2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    .line 24
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p1, p3}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public if(Landroid/content/Context;)Lcom/apk/b1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/apk/b1<",
            "TResultType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v1, v0}, Lcom/apk/b1;->for(Landroid/content/Context;ZLjava/lang/String;)Lcom/apk/b1;

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/b1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/apk/b1;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/apk/b1;->do:Lcom/apk/c1;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/b1;->do:Lcom/apk/c1;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/apk/c1;->onPreExecute()V

    :cond_0
    return-void
.end method
