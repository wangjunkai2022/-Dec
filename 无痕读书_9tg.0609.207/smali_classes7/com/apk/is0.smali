.class public Lcom/apk/is0;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "SkinCompatSpinner.java"

# interfaces
.implements Lcom/apk/js0;


# static fields
.field public static final for:Ljava/lang/String;

.field public static final new:[I


# instance fields
.field public do:Lcom/apk/mr0;

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lcom/apk/is0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apk/is0;->for:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102f1

    aput v2, v0, v1

    .line 2
    sput-object v0, Lcom/apk/is0;->new:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    sget v6, Lskin/support/appcompat/R$attr;->spinnerStyle:I

    const/4 v5, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v6

    .line 2
    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/apk/is0;->if:I

    .line 4
    sget-object v1, Lskin/support/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v1, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 6
    :try_start_0
    sget-object v4, Lcom/apk/is0;->new:[I

    invoke-virtual {p1, p2, v4, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 7
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, p1

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    :cond_0
    throw p1

    :goto_0
    if-eqz v2, :cond_2

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const/4 p1, 0x1

    if-ne v3, p1, :cond_3

    .line 12
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lskin/support/appcompat/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v2, v6, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 13
    sget v2, Lskin/support/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/apk/is0;->if:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p1, Lcom/apk/mr0;

    invoke-direct {p1, p0}, Lcom/apk/mr0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apk/is0;->do:Lcom/apk/mr0;

    .line 17
    invoke-virtual {p1, p2, v6}, Lcom/apk/mr0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/is0;->do:Lcom/apk/mr0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/apk/mr0;->if()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/apk/is0;->if()V

    return-void
.end method

.method public final if()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/is0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/is0;->if:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/is0;->if:I

    invoke-static {v0, v1}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundResource(I)V

    .line 2
    iput p1, p0, Lcom/apk/is0;->if:I

    .line 3
    invoke-virtual {p0}, Lcom/apk/is0;->if()V

    return-void
.end method
