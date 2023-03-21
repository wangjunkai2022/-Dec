.class public Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;
.super Lcom/lxj/xpopup/impl/FullScreenPopupView;
.source "WebContentPopup.java"


# instance fields
.field public final break:Z

.field public final catch:Z

.field public else:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

.field public final goto:Ljava/lang/String;

.field public final this:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/impl/FullScreenPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->goto:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->this:Z

    .line 4
    iput-boolean p4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->break:Z

    .line 5
    iput-boolean p5, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->catch:Z

    return-void
.end method

.method public static this(Landroid/content/Context;Ljava/lang/String;ZZZ)V
    .locals 8

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/apk/lv;->case:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/apk/lv;->extends:Ljava/lang/Boolean;

    .line 4
    sget-object v1, Lcom/apk/ov;->static:Lcom/apk/ov;

    .line 5
    iput-object v1, v0, Lcom/apk/lv;->this:Lcom/apk/ov;

    .line 6
    new-instance v1, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZ)V

    .line 7
    instance-of p0, v1, Lcom/lxj/xpopup/core/CenterPopupView;

    if-eqz p0, :cond_0

    .line 8
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 9
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 10
    :cond_0
    instance-of p0, v1, Lcom/lxj/xpopup/core/BottomPopupView;

    if-eqz p0, :cond_1

    .line 11
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 12
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 13
    :cond_1
    instance-of p0, v1, Lcom/lxj/xpopup/core/AttachPopupView;

    if-eqz p0, :cond_2

    .line 14
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 15
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 16
    :cond_2
    instance-of p0, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;

    if-eqz p0, :cond_3

    .line 17
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 18
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    goto :goto_0

    .line 19
    :cond_3
    instance-of p0, v1, Lcom/lxj/xpopup/core/PositionPopupView;

    if-eqz p0, :cond_4

    .line 20
    sget-boolean p0, Lcom/apk/zu;->try:Z

    .line 21
    iput-boolean p0, v0, Lcom/apk/lv;->continue:Z

    .line 22
    :cond_4
    :goto_0
    iput-object v0, v1, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    .line 23
    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0168

    return v0
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f09041f

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iput-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->else:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 3
    new-instance v1, Lcom/apk/ie;

    invoke-direct {v1, p0}, Lcom/apk/ie;-><init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;)V

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->setWebCodeCallback(Lcom/apk/jd;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->else:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->goto:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->this:Z

    iget-boolean v3, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->break:Z

    iget-boolean v4, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentPopup;->catch:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->catch(Ljava/lang/String;ZZZ)V

    return-void
.end method
