.class public Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;
.super Lcom/apk/xr0;
.source "FancyButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;
    }
.end annotation


# instance fields
.field public abstract:Landroid/widget/ImageView;

.field public break:I

.field public case:I

.field public catch:I

.field public class:Ljava/lang/String;

.field public const:Landroid/graphics/drawable/Drawable;

.field public continue:Landroid/widget/TextView;

.field public default:I

.field public else:I

.field public extends:I

.field public final:I

.field public finally:I

.field public for:I

.field public goto:I

.field public if:Landroid/content/Context;

.field public import:I

.field public interface:Z

.field public native:I

.field public new:I

.field public package:Z

.field public private:Z

.field public protected:Z

.field public public:I

.field public return:I

.field public static:I

.field public strictfp:Landroid/widget/TextView;

.field public super:Ljava/lang/String;

.field public switch:I

.field public this:I

.field public throw:I

.field public throws:I

.field public try:I

.field public volatile:Z

.field public while:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/apk/xr0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 2
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    const-string v1, "#f6f7f9"

    .line 4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try:I

    const-string v1, "#bec2c9"

    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    const-string v1, "#dddfe2"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->goto:I

    .line 8
    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->this:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/apk/rh;->if(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    const/16 v1, 0x11

    .line 10
    iput v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->catch:I

    const/4 v3, 0x0

    .line 11
    iput-object v3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    .line 12
    iput-object v3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/apk/rh;->if(Landroid/content/Context;F)I

    move-result v2

    iput v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    .line 14
    iput-object v3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    const/4 v2, 0x1

    .line 15
    iput v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    const/16 v4, 0xa

    .line 16
    iput v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->while:I

    .line 17
    iput v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->import:I

    .line 18
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->native:I

    .line 19
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->public:I

    .line 20
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    .line 21
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    .line 22
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    .line 23
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throws:I

    .line 24
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->default:I

    .line 25
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->extends:I

    .line 26
    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->finally:I

    .line 27
    iput-boolean v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    .line 28
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    .line 29
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    .line 30
    iput-boolean v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->interface:Z

    .line 31
    iput-boolean v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->protected:Z

    .line 32
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->if:Landroid/content/Context;

    .line 33
    sget-object v5, Lcom/biquge/ebook/app/R$styleable;->FancyButtonsAttrs:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 34
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for:I

    const/4 v5, 0x6

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for:I

    .line 35
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    .line 36
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try:I

    .line 37
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    .line 38
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    .line 39
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    const/4 v4, 0x7

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    .line 40
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->goto:I

    const/16 v4, 0x1d

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->goto:I

    const/16 v4, 0xe

    .line 41
    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->this:I

    .line 42
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    int-to-float p2, p2

    const/16 v4, 0x21

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    int-to-float p2, p2

    .line 43
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    .line 44
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->catch:I

    const/16 v2, 0x1f

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->catch:I

    .line 45
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    .line 46
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    int-to-float p2, p2

    const/4 v2, 0x5

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    .line 47
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    int-to-float p2, p2

    const/16 v2, 0x16

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    int-to-float p2, p2

    const/16 v2, 0x19

    .line 48
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throws:I

    .line 49
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    int-to-float p2, p2

    const/16 v2, 0x1a

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->default:I

    .line 50
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    int-to-float p2, p2

    const/16 v2, 0x17

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->extends:I

    .line 51
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    int-to-float p2, p2

    const/16 v2, 0x18

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->finally:I

    .line 52
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    int-to-float p2, p2

    const/16 v2, 0xc

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    .line 53
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->while:I

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->while:I

    .line 54
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->import:I

    int-to-float p2, p2

    const/16 v1, 0x12

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->import:I

    .line 55
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->native:I

    int-to-float p2, p2

    const/16 v1, 0x13

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->native:I

    .line 56
    iget p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->public:I

    int-to-float p2, p2

    const/16 v1, 0x10

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->public:I

    const/16 p2, 0x1c

    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    const/4 p2, 0x3

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    .line 59
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    .line 60
    iget-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->interface:Z

    const/16 v0, 0x22

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->interface:Z

    const/16 p2, 0x1b

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 v0, 0x14

    .line 63
    iget v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    const/16 v0, 0xb

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    .line 65
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 v1, 0x1e

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/16 v1, 0x15

    .line 67
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    iput-object v3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v0, :cond_1

    .line 69
    iput-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_3

    .line 70
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    return-void
.end method


# virtual methods
.method public final for(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    if-lez v0, :cond_0

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throws:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->default:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->finally:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->extends:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :goto_0
    return-void
.end method

.method public getIconFontObject()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconImageObject()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTextViewObject()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    return-object v0
.end method

.method public final new()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v4, -0x2

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/16 v0, 0x11

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 10
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x14

    .line 11
    invoke-virtual {p0, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    :cond_3
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, "Fancy Button"

    .line 13
    iput-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    .line 14
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->if:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->catch:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 17
    iget-boolean v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->goto:I

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/apk/rh;->do(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iput-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    .line 21
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x10

    const/4 v7, 0x0

    if-eqz v5, :cond_9

    .line 22
    new-instance v5, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->if:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    iget-object v8, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget v8, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->while:I

    iget v9, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->native:I

    iget v10, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->import:I

    iget v11, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->public:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 25
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    iget-object v9, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    .line 27
    iget v9, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    if-eq v9, v3, :cond_7

    if-ne v9, v2, :cond_6

    goto :goto_3

    :cond_6
    const v9, 0x800003

    .line 28
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 29
    :cond_7
    :goto_3
    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :goto_4
    const/16 v9, 0xa

    .line 30
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 31
    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 32
    :cond_8
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 33
    :goto_5
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_9
    move-object v5, v7

    .line 34
    :goto_6
    iput-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    .line 35
    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 36
    new-instance v7, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->if:Landroid/content/Context;

    invoke-direct {v7, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    iget-boolean v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->this:I

    goto :goto_7

    :cond_a
    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    :goto_7
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->import:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 40
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->while:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 41
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->native:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 42
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->public:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 43
    iget-object v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    .line 44
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    if-eq v4, v3, :cond_c

    if-ne v4, v2, :cond_b

    goto :goto_8

    .line 45
    :cond_b
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_9

    .line 47
    :cond_c
    :goto_8
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 48
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_9

    .line 49
    :cond_d
    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    :goto_9
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 53
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/apk/rh;->do(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 55
    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/apk/rh;->do(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v0, "O"

    .line 56
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_f
    :goto_a
    iput-object v7, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    .line 58
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 59
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    if-eq v2, v1, :cond_13

    if-ne v2, v3, :cond_10

    goto :goto_b

    .line 62
    :cond_10
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_11
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_12
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 68
    :cond_13
    :goto_b
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_14
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_15
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v1, :cond_16

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_16
    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 75
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_d

    :cond_17
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    new-instance p3, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;

    invoke-direct {p3, p0, p1, p2}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton$do;-><init>(Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;II)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setCustomIconFont(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    :cond_0
    return-void
.end method

.method public setCustomTextFont(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    :cond_0
    return-void
.end method

.method public setDisableBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setDisableBorderColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setDisableTextColor(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->case:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    .line 3
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    return-void
.end method

.method public setFocusBackgroundColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setFontIconSize(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/apk/rh;->if(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->final:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setGhost(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setIconColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setIconPosition(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throw:I

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    return-void
.end method

.method public setIconResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->if:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    :goto_1
    return-void
.end method

.method public setIconResource(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 6
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->const:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    :goto_1
    return-void
.end method

.method public setIconResource(Ljava/lang/String;)V
    .locals 1

    .line 11
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->super:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->switch:I

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setRadius([I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    aget v0, p1, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->throws:I

    const/4 v0, 0x1

    .line 5
    aget v0, p1, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->default:I

    const/4 v0, 0x2

    .line 6
    aget v0, p1, v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->extends:I

    const/4 v0, 0x3

    .line 7
    aget p1, p1, v0

    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->finally:I

    .line 8
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->abstract:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->continue:Landroid/widget/TextView;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try()V

    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTextAllCaps(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->private:Z

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->class:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    .line 2
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->goto:I

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setTextGravity(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->catch:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/apk/rh;->if(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->break:I

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->strictfp:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setUsingSystemFont(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->interface:Z

    return-void
.end method

.method public final try()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for(Landroid/graphics/drawable/GradientDrawable;)V

    .line 3
    iget-boolean v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    const v2, 0x106000d

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 6
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for(Landroid/graphics/drawable/GradientDrawable;)V

    .line 8
    iget v3, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 10
    invoke-virtual {p0, v3}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for(Landroid/graphics/drawable/GradientDrawable;)V

    .line 11
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->try:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 12
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 13
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    if-eqz v4, :cond_1

    .line 14
    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 15
    :cond_1
    iget-boolean v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-nez v4, :cond_2

    .line 16
    iget v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 17
    iget-boolean v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    if-eqz v4, :cond_2

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 19
    :cond_2
    iget-boolean v4, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->protected:Z

    if-eqz v4, :cond_4

    .line 20
    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-nez v2, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 22
    :goto_1
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 23
    :cond_4
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 24
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 25
    invoke-virtual {p0, v4}, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->for(Landroid/graphics/drawable/GradientDrawable;)V

    .line 26
    iget-boolean v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    if-eqz v5, :cond_5

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 28
    :cond_5
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 29
    :goto_2
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->return:I

    if-eqz v2, :cond_7

    .line 30
    iget-boolean v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    if-eqz v5, :cond_6

    .line 31
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_3

    .line 32
    :cond_6
    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    invoke-virtual {v4, v5, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 33
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->package:Z

    if-nez v2, :cond_9

    .line 34
    iget-boolean v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->volatile:Z

    if-eqz v2, :cond_8

    .line 35
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_4

    .line 36
    :cond_8
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->static:I

    iget v5, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->else:I

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 37
    :cond_9
    :goto_4
    iget v2, p0, Lcom/biquge/ebook/app/widget/fancybuttons/FancyButton;->new:I

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    new-array v6, v2, [I

    const v7, 0x10100a7

    aput v7, v6, v5

    .line 38
    invoke-virtual {v1, v6, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v6, v2, [I

    const v7, 0x101009c

    aput v7, v6, v5

    .line 39
    invoke-virtual {v1, v6, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v2, [I

    const v4, -0x101009e

    aput v4, v2, v5

    .line 40
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_a
    new-array v2, v5, [I

    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method
