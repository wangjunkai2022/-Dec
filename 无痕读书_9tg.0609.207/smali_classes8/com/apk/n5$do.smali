.class public Lcom/apk/n5$do;
.super Lcom/apk/bg;
.source "WelComePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/n5;->if(Lcom/lxj/xpopup/core/BasePopupView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/lxj/xpopup/core/BasePopupView;

.field public final synthetic if:Lcom/apk/n5;


# direct methods
.method public constructor <init>(Lcom/apk/n5;Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n5$do;->if:Lcom/apk/n5;

    iput-object p2, p0, Lcom/apk/n5$do;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/apk/v;->do()Lcom/apk/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/apk/n5$do;->do:Lcom/lxj/xpopup/core/BasePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/apk/n5$do;->if:Lcom/apk/n5;

    iget-object p1, p1, Lcom/apk/n5;->do:Lcom/apk/q5;

    .line 4
    invoke-virtual {p1}, Lcom/apk/q5;->new()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
