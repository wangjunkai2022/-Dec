.class public Lcom/apk/p1;
.super Ljava/lang/Object;
.source "NewBasePresenter.java"


# instance fields
.field public do:Landroid/app/Activity;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public if()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/apk/p1;->do:Landroid/app/Activity;

    .line 3
    new-instance v2, Lcom/apk/lv;

    invoke-direct {v2}, Lcom/apk/lv;-><init>()V

    .line 4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    iput-object v3, v2, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 6
    iput-object v3, v2, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    const v3, 0x7f10025c

    .line 7
    invoke-static {v3}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c006a

    .line 8
    sget-boolean v5, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean v5, v2, Lcom/apk/lv;->continue:Z

    .line 10
    new-instance v5, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v5, v1, v4}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {v5, v3}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 12
    iput-object v2, v5, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 13
    invoke-direct {v0, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/apk/p1;->if:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
