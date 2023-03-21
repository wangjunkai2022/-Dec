.class public Lcom/apk/xq0;
.super Lcom/google/android/material/navigation/NavigationView;
.source "SkinMaterialNavigationView.java"

# interfaces
.implements Lcom/apk/js0;


# static fields
.field public static final case:[I

.field public static final else:[I


# instance fields
.field public do:I

.field public for:I

.field public if:I

.field public new:I

.field public try:Lcom/apk/mr0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/apk/xq0;->case:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/apk/xq0;->else:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Lcom/apk/xq0;->do:I

    .line 3
    iput v0, p0, Lcom/apk/xq0;->if:I

    .line 4
    iput v0, p0, Lcom/apk/xq0;->for:I

    .line 5
    iput v0, p0, Lcom/apk/xq0;->new:I

    .line 6
    new-instance v1, Lcom/apk/mr0;

    invoke-direct {v1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/apk/xq0;->try:Lcom/apk/mr0;

    .line 7
    invoke-virtual {v1, p2, v0}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    .line 8
    sget-object v1, Lskin/support/design/R$styleable;->NavigationView:[I

    sget v2, Lskin/support/design/R$style;->Widget_Design_NavigationView:I

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/xq0;->new:I

    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Lcom/apk/oq0;->do:[I

    invoke-static {p1, v1}, Lcom/apk/mq0;->if(Landroid/content/Context;[I)I

    move-result v1

    .line 12
    iput v1, p0, Lcom/apk/xq0;->for:I

    .line 13
    :goto_0
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    sget-object v2, Lskin/support/design/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    sget v2, Lskin/support/design/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    sget v2, Lskin/support/design/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/apk/xq0;->if:I

    .line 18
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    :cond_2
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    sget v1, Lskin/support/design/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/xq0;->if:I

    goto :goto_1

    .line 21
    :cond_3
    sget-object v1, Lcom/apk/oq0;->do:[I

    invoke-static {p1, v1}, Lcom/apk/mq0;->if(Landroid/content/Context;[I)I

    move-result v1

    .line 22
    iput v1, p0, Lcom/apk/xq0;->for:I

    .line 23
    :goto_1
    iget v1, p0, Lcom/apk/xq0;->if:I

    if-nez v1, :cond_4

    .line 24
    invoke-static {p1}, Lcom/apk/mq0;->for(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/apk/xq0;->if:I

    .line 25
    :cond_4
    sget p1, Lskin/support/design/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/apk/xq0;->do:I

    .line 26
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    invoke-virtual {p0}, Lcom/apk/xq0;->for()V

    .line 28
    invoke-virtual {p0}, Lcom/apk/xq0;->new()V

    .line 29
    invoke-virtual {p0}, Lcom/apk/xq0;->if()V

    return-void
.end method


# virtual methods
.method public final createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v0}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/xq0;->for:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 6
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/apk/xq0;->else:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/apk/xq0;->case:[I

    aput-object v6, v5, v2

    sget-object v6, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Lcom/apk/xq0;->else:[I

    .line 7
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/xq0;->try:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/xq0;->for()V

    .line 4
    invoke-virtual {p0}, Lcom/apk/xq0;->new()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/xq0;->if()V

    return-void
.end method

.method public final for()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/xq0;->new:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->new:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/xq0;->new:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/xq0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->for:I

    if-eqz v0, :cond_1

    const v0, 0x1010038

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/xq0;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final if()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/xq0;->do:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->do:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/xq0;->do:I

    invoke-static {v0, v1}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final new()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/xq0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->if:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/xq0;->if:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/xq0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->for:I

    if-eqz v0, :cond_1

    const v0, 0x1010036

    .line 4
    invoke-virtual {p0, v0}, Lcom/apk/xq0;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackgroundResource(I)V

    .line 2
    iput p1, p0, Lcom/apk/xq0;->do:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/xq0;->if()V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemTextAppearance(I)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lskin/support/design/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v0, Lskin/support/design/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget v0, Lskin/support/design/R$styleable;->SkinTextAppearance_android_textColor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/apk/xq0;->if:I

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0}, Lcom/apk/xq0;->new()V

    :cond_1
    return-void
.end method
