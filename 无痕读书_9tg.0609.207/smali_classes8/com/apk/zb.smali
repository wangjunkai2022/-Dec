.class public Lcom/apk/zb;
.super Lcom/apk/yv;
.source "MainStoreFragment.java"


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/MainStoreFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/yv;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/lxj/xpopup/core/BasePopupView;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/StoreSearchGuidePopupView;->if()Z

    move-result p1

    return p1
.end method

.method public for(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_STORE_GUIDE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2
    sget-object p1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v0, "SP_STORE_TAB_MODEL_GUIDE_KEY"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
