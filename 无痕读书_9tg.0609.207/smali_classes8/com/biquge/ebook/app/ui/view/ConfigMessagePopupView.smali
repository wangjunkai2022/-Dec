.class public Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;
.super Lcom/lxj/xpopup/core/CenterPopupView;
.source "ConfigMessagePopupView.java"


# instance fields
.field public case:Landroid/widget/TextView;

.field public final do:Lcom/biquge/ebook/app/bean/ConfigMessage;

.field public else:Landroid/widget/TextView;

.field public final for:Ljava/lang/String;

.field public final goto:Lcom/apk/bg;

.field public final if:Ljava/lang/String;

.field public new:Landroid/widget/TextView;

.field public try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/biquge/ebook/app/bean/ConfigMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView$do;-><init>(Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->goto:Lcom/apk/bg;

    .line 3
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    .line 4
    iput-object p3, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->if:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->for:Ljava/lang/String;

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

    const-string v1, "SP_MAIN_PUBLIC_TEXT_MAXCOUNT_IID_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c016b

    return v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0901c4

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->new:Landroid/widget/TextView;

    const v0, 0x7f0901ce

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->try:Landroid/widget/TextView;

    const v0, 0x7f0901c0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->case:Landroid/widget/TextView;

    const v0, 0x7f0901cf

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->else:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->case:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->goto:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->else:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->goto:Lcom/apk/bg;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->new:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getNavtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->try:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getMsgintro()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->case:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->for:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->case:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->if:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->else:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->if:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->else:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->do:Lcom/biquge/ebook/app/bean/ConfigMessage;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/ConfigMessage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONFIG_MESSAGE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 18
    sget-object v3, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v3, v0, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-static {}, Lcom/biquge/ebook/app/ui/view/ConfigMessagePopupView;->getMessageMaxCountTag()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 21
    sget-object v2, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
