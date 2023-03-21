.class public Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "ConfigImagePopupView.java"

# interfaces
.implements Lcom/apk/o40;


# instance fields
.field public final do:Lcom/biquge/ebook/app/bean/ConfigMessage;

.field public for:Landroid/widget/ImageView;

.field public final if:Z

.field public new:Lcom/swl/gg/widget/SwlAdImageView;

.field public try:Lcom/biquge/ebook/app/widget/AppProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ConfigMessage;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->if:Z

    return-void
.end method

.method public static getMessageMaxCountTag()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/kg;->if()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SP_MAIN_PUBLIC_IMAGE_MAXCOUNT_IID_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c016a

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09042e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swl/gg/widget/SwlAdImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->new:Lcom/swl/gg/widget/SwlAdImageView;

    .line 3
    iget-boolean v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->if:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09042c

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->for:Landroid/widget/ImageView;

    .line 5
    new-instance v1, Lcom/apk/rc;

    invoke-direct {v1, p0}, Lcom/apk/rc;-><init>(Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09042f

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/AppProgressBar;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->try:Lcom/biquge/ebook/app/widget/AppProgressBar;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getPdcover()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->new:Lcom/swl/gg/widget/SwlAdImageView;

    check-cast v0, Lcom/apk/y;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->new:Lcom/swl/gg/widget/SwlAdImageView;

    new-instance v1, Lcom/apk/sc;

    invoke-direct {v1, p0}, Lcom/apk/sc;-><init>(Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONFIG_MESSAGE_"

    .line 12
    invoke-static {v1, v0}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v1, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-static {}, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->getMessageMaxCountTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 16
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-void
.end method

.method public success()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->for:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->for:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigImagePopupView;->try:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
