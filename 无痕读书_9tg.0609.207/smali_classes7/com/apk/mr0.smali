.class public Lcom/apk/mr0;
.super Lcom/apk/tr0;
.source "SkinCompatBackgroundHelper.java"


# instance fields
.field public final do:Landroid/view/View;

.field public if:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/tr0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/mr0;->if:I

    .line 3
    iput-object p1, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public for(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lskin/support/R$styleable;->SkinBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, Lskin/support/R$styleable;->SkinBackgroundHelper_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget p2, Lskin/support/R$styleable;->SkinBackgroundHelper_android_background:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/mr0;->if:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/mr0;->if()V

    return-void

    :catchall_0
    move-exception p2

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    throw p2
.end method

.method public if()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/apk/mr0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/mr0;->if:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/mr0;->if:I

    invoke-static {v0, v1}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-static {v5, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object v0, p0, Lcom/apk/mr0;->do:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
