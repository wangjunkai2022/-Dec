.class public Lcom/apk/n5;
.super Lcom/apk/yv;
.source "WelComePresenter.java"


# instance fields
.field public final synthetic do:Lcom/apk/q5;


# direct methods
.method public constructor <init>(Lcom/apk/q5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n5;->do:Lcom/apk/q5;

    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 2

    const v0, 0x7f090653

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/apk/n5$do;

    invoke-direct {v1, p0, p1}, Lcom/apk/n5$do;-><init>(Lcom/apk/n5;Lcom/lxj/xpopup/core/BasePopupView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public new(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 2

    const/4 p1, 0x1

    .line 1
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v1, "SP_SHOW_AGREENMENT_KEY"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
