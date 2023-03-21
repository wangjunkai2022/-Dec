.class public Lcom/apk/hs0;
.super Lcom/apk/as0;
.source "SkinCompatSeekBarHelper.java"


# instance fields
.field public final case:Landroid/widget/SeekBar;

.field public else:I


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/apk/as0;-><init>(Landroid/widget/ProgressBar;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/hs0;->else:I

    .line 3
    iput-object p1, p0, Lcom/apk/hs0;->case:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public for(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/apk/as0;->for(Landroid/util/AttributeSet;I)V

    .line 2
    iget-object v0, p0, Lcom/apk/hs0;->case:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lskin/support/appcompat/R$styleable;->AppCompatSeekBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Lskin/support/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/hs0;->else:I

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    invoke-virtual {p0}, Lcom/apk/hs0;->if()V

    return-void
.end method

.method public if()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/apk/as0;->if()V

    .line 2
    iget v0, p0, Lcom/apk/hs0;->else:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/hs0;->else:I

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/hs0;->case:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/apk/hs0;->else:I

    invoke-static {v1, v2}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
