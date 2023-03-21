.class public Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;
.super Landroid/widget/PopupWindow;
.source "BarrageControlPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;
    }
.end annotation


# static fields
.field public static final FONT_DIZE_KEYS:[Ljava/lang/String;

.field public static final FONT_DIZE_VALUES:[F

.field public static final SPEED_KEYS:[Ljava/lang/String;

.field public static final SPEED_VALUES:[F


# instance fields
.field public mAlphaProgress:I

.field public mAlphaTView:Landroid/widget/TextView;

.field public mFontTView:Landroid/widget/TextView;

.field public mOnBarrageConfigListener:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

.field public mSizeProgress:I

.field public mSpeedProgress:I

.field public mSpeedTView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "\u5c0f\u53f7"

    const-string v1, "\u6807\u51c6"

    const-string v2, "\u5927\u53f7"

    const-string v3, "\u7279\u5927"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_KEYS:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_VALUES:[F

    const-string v1, "\u6162"

    const-string v2, "\u6b63\u5e38"

    const-string v3, "\u5feb"

    const-string v4, "\u5f88\u5feb"

    .line 3
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_KEYS:[Ljava/lang/String;

    new-array v0, v0, [F

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_VALUES:[F

    return-void

    :array_0
    .array-data 4
        -0x40000000    # -2.0f
        0x0
        0x40400000    # 3.0f
        0x40c00000    # 6.0f
    .end array-data

    :array_1
    .array-data 4
        -0x41000000    # -0.5f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    .line 4
    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f0c01b6

    goto :goto_0

    :cond_0
    const p2, 0x7f0c01b5

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p2, -0x2

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p2, 0x7f1102cb

    .line 10
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 12
    invoke-direct {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->initView(Landroid/view/View;)V

    .line 13
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$1;-><init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mOnBarrageConfigListener:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    return p0
.end method

.method public static synthetic access$1000()[F
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_VALUES:[F

    return-object v0
.end method

.method public static synthetic access$102(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    return p1
.end method

.method public static synthetic access$200(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaTView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    return p0
.end method

.method public static synthetic access$302(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    return p1
.end method

.method public static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mFontTView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$600()[F
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_VALUES:[F

    return-object v0
.end method

.method public static synthetic access$700(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    return p0
.end method

.method public static synthetic access$702(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    return p1
.end method

.method public static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_KEYS:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedTView:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    const-string v1, "SP_BARRAGE_FONT_ALPHA_MARK_POSITION"

    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    .line 2
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    const-string v1, "SP_BARRAGE_FONT_SIZE_MARK_POSITION"

    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    .line 3
    iget v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    const-string v1, "SP_BARRAGE_FONT_SPEED_MARK_POSITION"

    invoke-static {v1, v0}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    .line 4
    invoke-direct {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->setAlphaView(Landroid/view/View;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->setFontView(Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->setSpeedView(Landroid/view/View;)V

    const v0, 0x7f09012e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/SwitchButton;

    .line 8
    new-instance v0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;

    invoke-direct {v0, p0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$2;-><init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setOnCheckedChangeListener(Lcom/biquge/ebook/app/widget/SwitchButton$new;)V

    const-string v0, "SP_BARRAGE_SWITCH_KEY"

    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/apk/ze;->private(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/widget/SwitchButton;->setChecked(Z)V

    return-void
.end method

.method private setAlphaView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0905f9

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0x64

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f0905fa

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaTView:Landroid/widget/TextView;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mAlphaProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$3;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$3;-><init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setFontView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0905fb

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 2
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_KEYS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f0905fc

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mFontTView:Landroid/widget/TextView;

    .line 5
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->FONT_DIZE_KEYS:[Ljava/lang/String;

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSizeProgress:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$4;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$4;-><init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private setSpeedView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0905fd

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 2
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_KEYS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 3
    iget v1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    const v1, 0x7f0905fe

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedTView:Landroid/widget/TextView;

    .line 5
    sget-object v1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->SPEED_KEYS:[Ljava/lang/String;

    iget v2, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mSpeedProgress:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;

    invoke-direct {p1, p0}, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$5;-><init>(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public setOnBarrageConfigListener(Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow;->mOnBarrageConfigListener:Lcom/manhua/ui/widget/barrage/BarrageControlPopWindow$OnBarrageConfigListener;

    return-void
.end method
