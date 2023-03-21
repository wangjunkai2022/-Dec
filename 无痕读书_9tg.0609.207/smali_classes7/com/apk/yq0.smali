.class public Lcom/apk/yq0;
.super Lcom/google/android/material/tabs/TabLayout;
.source "SkinMaterialTabLayout.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:I

.field public for:I

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Lcom/apk/yq0;->do:I

    .line 3
    iput v0, p0, Lcom/apk/yq0;->if:I

    .line 4
    iput v0, p0, Lcom/apk/yq0;->for:I

    .line 5
    sget-object v1, Lskin/support/design/R$styleable;->TabLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    sget v1, Lskin/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/yq0;->do:I

    .line 7
    sget v1, Lskin/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v2, Lskin/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 8
    sget-object v2, Lskin/support/design/R$styleable;->SkinTextAppearance:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    :try_start_0
    sget v1, Lskin/support/design/R$styleable;->SkinTextAppearance_android_textColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/yq0;->if:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    sget p1, Lskin/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget p1, Lskin/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/apk/yq0;->if:I

    .line 13
    :cond_0
    sget p1, Lskin/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    sget p1, Lskin/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/apk/yq0;->for:I

    .line 15
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p0}, Lcom/apk/yq0;->do()V

    return-void

    :catchall_0
    move-exception p2

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p2
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/yq0;->do:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/yq0;->do:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/yq0;->do:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/apk/yq0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/yq0;->if:I

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/yq0;->if:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 5
    :cond_1
    iget v0, p0, Lcom/apk/yq0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/yq0;->for:I

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/yq0;->for:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    :cond_2
    return-void
.end method
