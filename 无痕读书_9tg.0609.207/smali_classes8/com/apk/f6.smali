.class public abstract Lcom/apk/f6;
.super Lcom/apk/ne0;
.source "BaseActivity.java"


# static fields
.field public static final PUBLIC_EMNU_VIEW:I = 0xa


# instance fields
.field public mImmersionBar:Lcom/apk/iu;

.field public mLoadingWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lxj/xpopup/impl/LoadingPopupView;",
            ">;"
        }
    .end annotation
.end field

.field public mPopupLoadingWeak:Ljava/lang/ref/WeakReference;
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
    invoke-direct {p0}, Lcom/apk/ne0;-><init>()V

    return-void
.end method

.method private createLoadingPopupView(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/zu$do;

    invoke-direct {v0, p1}, Lcom/apk/zu$do;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iget-object v1, v0, Lcom/apk/zu$do;->do:Lcom/apk/lv;

    iput-object p1, v1, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    const p1, 0x7f10025c

    .line 4
    invoke-static {p1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apk/zu$do;->break(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object p1

    return-object p1
.end method

.method private createPublicLoadingDialog(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;
    .locals 4

    .line 1
    new-instance v0, Lcom/apk/lv;

    invoke-direct {v0}, Lcom/apk/lv;-><init>()V

    .line 2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    iput-object v1, v0, Lcom/apk/lv;->try:Ljava/lang/Boolean;

    .line 4
    iput-object v1, v0, Lcom/apk/lv;->for:Ljava/lang/Boolean;

    const v1, 0x7f10025c

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c006a

    .line 6
    sget-boolean v3, Lcom/apk/zu;->try:Z

    .line 7
    iput-boolean v3, v0, Lcom/apk/lv;->continue:Z

    .line 8
    new-instance v3, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-direct {v3, p1, v2}, Lcom/lxj/xpopup/impl/LoadingPopupView;-><init>(Landroid/content/Context;I)V

    .line 9
    invoke-virtual {v3, v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    .line 10
    iput-object v0, v3, Lcom/lxj/xpopup/core/BasePopupView;->popupInfo:Lcom/apk/lv;

    return-object v3
.end method

.method private setDayNight(Z)V
    .locals 3

    const-string v0, "SP_APP_DARK_THEME_SWITCH_KEY"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/apk/da;->while()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    xor-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_3

    const-string v0, "night"

    goto :goto_2

    :cond_3
    const-string v0, "APP_SKIN_STYLE_KEY"

    .line 3
    invoke-static {v0, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/apk/ze;->i()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/SkinModel;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/SkinModel;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-static {p1}, Lcom/apk/da;->finally(Z)V

    .line 7
    sget-object p1, Lcom/apk/yp0;->class:Lcom/apk/yp0;

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/apk/yp0;->if(Ljava/lang/String;I)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->isTouchHideKeybord()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    instance-of v3, v0, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 5
    fill-array-data v3, :array_0

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    aget v4, v3, v2

    .line 8
    aget v3, v3, v1

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v3, v5

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    .line 13
    invoke-static {p0}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V

    .line 14
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 16
    :cond_4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 17
    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public finish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public abstract getLayoutId()I
.end method

.method public getToolBarMenuView()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideBaseLoading()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

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

.method public hidePopupLoading()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

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

.method public init(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initImmersionBar()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->isDarkFont()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apk/f6;->setImmersionBar(Z)V

    return-void
.end method

.method public initTopBarOnlyTitle(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(II)V

    return-void
.end method

.method public initTopBarOnlyTitle(II)V
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/apk/f6;->initTopBarOnlyTitle(ILjava/lang/String;)V

    return-void
.end method

.method public initTopBarOnlyTitle(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/HeaderView;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;)V

    return-void
.end method

.method public initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;)V
    .locals 1

    const-string v0, ""

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;)V

    return-void
.end method

.method public initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;I)V
    .locals 0

    .line 6
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;)V

    return-void
.end method

.method public initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, p2, v0}, Lcom/apk/f6;->initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;Z)V

    return-void
.end method

.method public initTopBarOnlyTitle(Lcom/biquge/ebook/app/widget/HeaderView;Ljava/lang/String;Z)V
    .locals 1

    .line 8
    invoke-virtual {p1, p2}, Lcom/biquge/ebook/app/widget/HeaderView;->setTitile(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/HeaderView;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/HeaderView;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    const p3, 0x7f08010d

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/HeaderView;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 12
    iget-object p2, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    if-eqz p2, :cond_3

    if-eqz p2, :cond_2

    .line 13
    iget p3, p2, Lcom/apk/iu;->import:I

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 14
    iput v0, p2, Lcom/apk/iu;->import:I

    .line 15
    :cond_1
    iget-object p3, p2, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput-object p1, p3, Lcom/apk/cu;->switch:Landroid/view/View;

    .line 16
    iput-boolean v0, p3, Lcom/apk/cu;->while:Z

    const/4 p1, 0x0

    .line 17
    iput p1, p3, Lcom/apk/cu;->if:I

    .line 18
    iput-boolean v0, p3, Lcom/apk/cu;->goto:Z

    .line 19
    invoke-virtual {p2}, Lcom/apk/iu;->else()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 20
    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public isDarkFont()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEventBusRegisted(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->case(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isImmersionBarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTouchHideKeybord()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/apk/f6;->setDayNight(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/apk/f6;->setDayNight(Z)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/apk/ne0;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 4
    invoke-virtual {p0}, Lcom/apk/f6;->isImmersionBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/apk/f6;->initImmersionBar()V

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/biquge/ebook/app/ui/activity/WelComeActivity;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/apk/f6;->finish()V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lcom/apk/f6;->init(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/apk/f6;->initView()V

    .line 12
    invoke-virtual {p0}, Lcom/apk/f6;->initData()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/apk/f6;->getToolBarMenuView()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/apk/f6;->getToolBarMenuView()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apk/f6;->getToolBarMenuView()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 5
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onItemMenuSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/apk/ze;->goto(Landroid/app/Activity;)V

    .line 3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090084

    if-ne v0, v1, :cond_1

    .line 5
    sget-object v0, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {p0, v0}, Lcom/biquge/ebook/app/ui/activity/BookSearchActivity;->i(Landroid/content/Context;Lcom/apk/hf;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/apk/f6;->onItemMenuSelected(Landroid/view/MenuItem;)V

    .line 7
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public registerEventBus(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/f6;->isEventBusRegisted(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->catch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setImmersionBar(Z)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/apk/iu;->super(Landroid/app/Activity;)Lcom/apk/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/iu;->this()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0}, Lcom/apk/iu;->const(ZF)Lcom/apk/iu;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/apk/iu;->const(ZF)Lcom/apk/iu;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/apk/f6;->mImmersionBar:Lcom/apk/iu;

    .line 8
    iget-object v0, p1, Lcom/apk/iu;->class:Lcom/apk/cu;

    iput-boolean v1, v0, Lcom/apk/cu;->continue:Z

    .line 9
    invoke-virtual {p1}, Lcom/apk/iu;->else()V

    return-void
.end method

.method public setStatusTransparent()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWindowStatusBarColor(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x106000c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWindowStatusBarColor(Landroid/app/Activity;I)V
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setWindowStatusBarColorValue(Landroid/app/Activity;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showBaseLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/f6;->showBaseLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showBaseLoading(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p0}, Lcom/apk/f6;->createPublicLoadingDialog(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10025c

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/f6;->mLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showPopupLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/apk/f6;->showPopupLoading(Ljava/lang/String;)V

    return-void
.end method

.method public showPopupLoading(Ljava/lang/String;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p0}, Lcom/apk/f6;->createLoadingPopupView(Landroid/content/Context;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f10025c

    .line 5
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object p1, v0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/apk/f6;->mPopupLoadingWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0, p1}, Lcom/lxj/xpopup/impl/LoadingPopupView;->if(Ljava/lang/CharSequence;)Lcom/lxj/xpopup/impl/LoadingPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BasePopupView;->show()Lcom/lxj/xpopup/core/BasePopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, p3, v0}, Lcom/apk/ze;->c0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Z)V

    return-void
.end method

.method public showTipDialog(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcom/apk/ze;->b0(Landroid/content/Context;Ljava/lang/String;Lcom/apk/ft;Lcom/apk/dt;Z)V

    return-void
.end method

.method public unRegisterEventBus(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/apk/f6;->isEventBusRegisted(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/apk/rl0;->if()Lcom/apk/rl0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apk/rl0;->const(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
