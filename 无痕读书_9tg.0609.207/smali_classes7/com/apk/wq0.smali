.class public Lcom/apk/wq0;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
.source "SkinMaterialFloatingActionButton.java"

# interfaces
.implements Lcom/apk/js0;


# instance fields
.field public do:I

.field public for:Lcom/apk/vr0;

.field public if:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput v0, p0, Lcom/apk/wq0;->do:I

    .line 3
    iput v0, p0, Lcom/apk/wq0;->if:I

    .line 4
    sget-object v1, Lskin/support/design/R$styleable;->FloatingActionButton:[I

    sget v2, Lskin/support/design/R$style;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget v1, Lskin/support/design/R$styleable;->FloatingActionButton_backgroundTint:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/wq0;->if:I

    .line 6
    sget v1, Lskin/support/design/R$styleable;->FloatingActionButton_rippleColor:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/wq0;->do:I

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    invoke-virtual {p0}, Lcom/apk/wq0;->if()V

    .line 9
    invoke-virtual {p0}, Lcom/apk/wq0;->for()V

    .line 10
    new-instance p1, Lcom/apk/vr0;

    invoke-direct {p1, p0}, Lcom/apk/vr0;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lcom/apk/wq0;->for:Lcom/apk/vr0;

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/apk/vr0;->for(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/apk/wq0;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/apk/wq0;->for()V

    .line 3
    iget-object v0, p0, Lcom/apk/wq0;->for:Lcom/apk/vr0;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/apk/vr0;->if()V

    :cond_0
    return-void
.end method

.method public final for()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/wq0;->do:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/wq0;->do:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/wq0;->do:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setRippleColor(I)V

    :cond_0
    return-void
.end method

.method public final if()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/apk/wq0;->if:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/wq0;->if:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/apk/wq0;->if:I

    invoke-static {v0, v1}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
