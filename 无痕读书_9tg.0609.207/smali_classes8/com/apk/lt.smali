.class public Lcom/apk/lt;
.super Ljava/lang/Object;
.source "PopBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/lt$do;
    }
.end annotation


# instance fields
.field public do:Landroid/app/Activity;

.field public for:Z

.field public if:Landroid/widget/PopupWindow;

.field public new:F

.field public try:Lcom/apk/lt$do;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/apk/lt$do;)V
    .locals 2

    .line 1
    sget v0, Lcom/codelibrary/R$style;->popShowAnim_scale:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x3f19999a    # 0.6f

    .line 3
    iput v1, p0, Lcom/apk/lt;->new:F

    .line 4
    iput-object p1, p0, Lcom/apk/lt;->do:Landroid/app/Activity;

    .line 5
    iput-object p3, p0, Lcom/apk/lt;->try:Lcom/apk/lt$do;

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/widget/PopupWindow;

    const/4 p3, -0x2

    const/4 v1, 0x1

    invoke-direct {p1, p2, p3, p3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 10
    iget-object p1, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 11
    iget-object p1, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3}, Landroid/view/View;->measure(II)V

    .line 12
    iget-object p1, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    new-instance p3, Lcom/apk/it;

    invoke-direct {p3, p0}, Lcom/apk/it;-><init>(Lcom/apk/lt;)V

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 13
    new-instance p1, Lcom/apk/jt;

    invoke-direct {p1, p0}, Lcom/apk/jt;-><init>(Lcom/apk/lt;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 15
    new-instance p1, Lcom/apk/kt;

    invoke-direct {p1, p0}, Lcom/apk/kt;-><init>(Lcom/apk/lt;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final do(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lt;->do:Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/lt;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/apk/lt;->do:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5
    iget-object p1, p0, Lcom/apk/lt;->do:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/lt;->if:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
