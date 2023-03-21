.class public final Lcom/hjq/toast/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static sInterceptor:Lcom/hjq/toast/IToastInterceptor;

.field public static sStrategy:Lcom/hjq/toast/IToastStrategy;

.field public static sToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized cancel()V
    .locals 2

    const-class v0, Lcom/hjq/toast/ToastUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 2
    sget-object v1, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    invoke-interface {v1}, Lcom/hjq/toast/IToastStrategy;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static checkNullPointer(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "are you ok?"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkToastState()V
    .locals 2

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ToastUtils has not been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createTextView(Landroid/content/Context;Lcom/hjq/toast/IToastStyle;)Landroid/widget/TextView;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const p0, 0x102000b

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setId(I)V

    .line 3
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getTextSize()F

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getPaddingStart()I

    move-result p0

    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getPaddingTop()I

    move-result v1

    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getPaddingEnd()I

    move-result v2

    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 6
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 8
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getCornerRadius()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 10
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getZ()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setZ(F)V

    .line 12
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getMaxLines()I

    move-result p0

    if-lez p0, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getMaxLines()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_0
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 2
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getToast()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">()TV;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 2
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hjq/toast/style/ToastBlackStyle;

    invoke-direct {v0, p0}, Lcom/hjq/toast/style/ToastBlackStyle;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/hjq/toast/ToastUtils;->init(Landroid/app/Application;Lcom/hjq/toast/IToastStyle;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lcom/hjq/toast/IToastStyle;)V
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sInterceptor:Lcom/hjq/toast/IToastInterceptor;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/hjq/toast/ToastInterceptor;

    invoke-direct {v0}, Lcom/hjq/toast/ToastInterceptor;-><init>()V

    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setToastInterceptor(Lcom/hjq/toast/IToastInterceptor;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/hjq/toast/ToastStrategy;

    invoke-direct {v0}, Lcom/hjq/toast/ToastStrategy;-><init>()V

    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setToastStrategy(Lcom/hjq/toast/IToastStrategy;)V

    .line 7
    :cond_1
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    invoke-interface {v0, p0}, Lcom/hjq/toast/IToastStrategy;->create(Landroid/app/Application;)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->setToast(Landroid/widget/Toast;)V

    .line 8
    invoke-static {p0, p1}, Lcom/hjq/toast/ToastUtils;->createTextView(Landroid/content/Context;Lcom/hjq/toast/IToastStyle;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->setView(Landroid/view/View;)V

    .line 9
    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getGravity()I

    move-result p0

    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getXOffset()I

    move-result v0

    invoke-interface {p1}, Lcom/hjq/toast/IToastStyle;->getYOffset()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/hjq/toast/ToastUtils;->setGravity(III)V

    return-void
.end method

.method public static initStyle(Lcom/hjq/toast/IToastStyle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 4
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-static {}, Lcom/hjq/toast/ToastUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/hjq/toast/ToastUtils;->createTextView(Landroid/content/Context;Lcom/hjq/toast/IToastStyle;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 5
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-interface {p0}, Lcom/hjq/toast/IToastStyle;->getGravity()I

    move-result v1

    invoke-interface {p0}, Lcom/hjq/toast/IToastStyle;->getXOffset()I

    move-result v2

    invoke-interface {p0}, Lcom/hjq/toast/IToastStyle;->getYOffset()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    :cond_0
    return-void
.end method

.method public static setGravity(III)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 2
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    .line 3
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0, p1, p2}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 4
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getGravity()I

    move-result v0

    sget-object v1, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    sget-object v2, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getYOffset()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v0

    sget-object v1, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Toast;->setMargin(FF)V

    .line 6
    :cond_0
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    .line 7
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0, p0}, Lcom/hjq/toast/IToastStrategy;->bind(Landroid/widget/Toast;)V

    :cond_1
    return-void
.end method

.method public static setToastInterceptor(Lcom/hjq/toast/IToastInterceptor;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 2
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sInterceptor:Lcom/hjq/toast/IToastInterceptor;

    return-void
.end method

.method public static setToastStrategy(Lcom/hjq/toast/IToastStrategy;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 2
    sput-object p0, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    .line 3
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p0, v0}, Lcom/hjq/toast/IToastStrategy;->bind(Landroid/widget/Toast;)V

    :cond_0
    return-void
.end method

.method public static setView(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 2
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->setView(Landroid/view/View;)V

    return-void
.end method

.method public static setView(Landroid/view/View;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 4
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->checkNullPointer(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    instance-of v0, v0, Landroid/app/Service;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 9
    sget-object v0, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The view must be initialized using the context of the application"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static show(I)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/CharSequence;)V
    .locals 3

    const-class v0, Lcom/hjq/toast/ToastUtils;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/hjq/toast/ToastUtils;->checkToastState()V

    .line 6
    sget-object v1, Lcom/hjq/toast/ToastUtils;->sInterceptor:Lcom/hjq/toast/IToastInterceptor;

    sget-object v2, Lcom/hjq/toast/ToastUtils;->sToast:Landroid/widget/Toast;

    invoke-interface {v1, v2, p0}, Lcom/hjq/toast/IToastInterceptor;->intercept(Landroid/widget/Toast;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    :try_start_1
    sget-object v1, Lcom/hjq/toast/ToastUtils;->sStrategy:Lcom/hjq/toast/IToastStrategy;

    invoke-interface {v1, p0}, Lcom/hjq/toast/IToastStrategy;->show(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static show(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-static {p0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    return-void
.end method
