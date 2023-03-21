.class public Lcom/apk/ne0;
.super Lcom/apk/i6;
.source "SwipeBackActivity.java"


# instance fields
.field public mHelper:Lcom/apk/oe0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/i6;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/ne0;->mHelper:Lcom/apk/oe0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/apk/oe0;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSwipeBackEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/ne0;->isSwipeBackEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/apk/oe0;

    invoke-direct {p1, p0}, Lcom/apk/oe0;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/apk/ne0;->mHelper:Lcom/apk/oe0;

    .line 4
    iget-object v0, p1, Lcom/apk/oe0;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p1, Lcom/apk/oe0;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v0, p1, Lcom/apk/oe0;->do:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0173

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    iput-object v0, p1, Lcom/apk/oe0;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/apk/ne0;->isSwipeBackEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apk/ne0;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/apk/ne0;->setSwipeBackEnable(Z)V

    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/apk/ne0;->mHelper:Lcom/apk/oe0;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p1, Lcom/apk/oe0;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    iget-object p1, p1, Lcom/apk/oe0;->do:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010054

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 6
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 12
    invoke-virtual {v0, v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setContentView(Landroid/view/View;)V

    .line 13
    new-instance v2, Lcom/apk/pe0;

    invoke-direct {v2, p1}, Lcom/apk/pe0;-><init>(Landroid/app/Activity;)V

    .line 14
    iget-object p1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-nez p1, :cond_0

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 16
    :cond_0
    iget-object p1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 18
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollToFinishActivity()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/apk/sb0;->public(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/apk/ne0;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 4
    iget-object v2, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 5
    iget v3, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->do:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    iget-object v2, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0xa

    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    goto :goto_0

    :cond_0
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_1

    neg-int v1, v1

    .line 8
    iget-object v2, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v1, -0xa

    const/4 v1, 0x2

    .line 9
    iput v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    :goto_0
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/16 v1, 0x8

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    neg-int v2, v2

    .line 10
    iget-object v3, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0xa

    .line 11
    iput v1, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    const/4 v2, 0x0

    .line 12
    :goto_2
    iget-object v3, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    iget-object v4, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    .line 13
    iput-object v4, v3, Lcom/apk/me0;->native:Landroid/view/View;

    const/4 v4, -0x1

    .line 14
    iput v4, v3, Lcom/apk/me0;->for:I

    .line 15
    invoke-virtual {v3, v2, v1, v5, v5}, Lcom/apk/me0;->catch(IIII)Z

    .line 16
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSwipeBackEnable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/ne0;->getSwipeBackLayout()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEnableGesture(Z)V

    return-void
.end method
