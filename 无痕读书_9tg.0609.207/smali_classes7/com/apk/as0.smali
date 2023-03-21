.class public Lcom/apk/as0;
.super Lcom/apk/tr0;
.source "SkinCompatProgressBarHelper.java"


# instance fields
.field public final do:Landroid/widget/ProgressBar;

.field public for:I

.field public if:Landroid/graphics/Bitmap;

.field public new:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/tr0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/as0;->for:I

    .line 3
    iput v0, p0, Lcom/apk/as0;->new:I

    .line 4
    iput v0, p0, Lcom/apk/as0;->try:I

    .line 5
    iput-object p1, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public for(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lskin/support/appcompat/R$styleable;->SkinCompatProgressBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2
    sget v1, Lskin/support/appcompat/R$styleable;->SkinCompatProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/as0;->for:I

    .line 3
    sget v1, Lskin/support/appcompat/R$styleable;->SkinCompatProgressBar_android_progressDrawable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/apk/as0;->new:I

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v3, 0x1010469

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/apk/as0;->try:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/apk/as0;->if()V

    return-void
.end method

.method public if()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/apk/as0;->for:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/as0;->for:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/apk/as0;->for:I

    invoke-static {v0, v2}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    iget-object v2, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    .line 5
    instance-of v3, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_1

    .line 6
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v3

    .line 8
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x2710

    if-ge v5, v3, :cond_0

    .line 10
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/apk/as0;->new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 11
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 12
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object v0, v4

    .line 14
    :cond_1
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_2
    iget v0, p0, Lcom/apk/as0;->new:I

    .line 16
    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    .line 17
    iput v0, p0, Lcom/apk/as0;->new:I

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/apk/as0;->new:I

    invoke-static {v0, v2}, Lcom/apk/pq0;->do(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/apk/as0;->new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_4

    .line 21
    iget v0, p0, Lcom/apk/as0;->try:I

    invoke-static {v0}, Lcom/apk/tr0;->do(I)I

    move-result v0

    iput v0, p0, Lcom/apk/as0;->try:I

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/apk/as0;->do:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/apk/as0;->try:I

    invoke-static {v1, v2}, Lcom/apk/lq0;->if(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method public final new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/apk/jr0;->new(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    const-string v1, "setWrappedDrawable"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/apk/jr0;->if(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/apk/as0;->new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 4
    sget-object v0, Lcom/apk/jr0;->new:Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 5
    sget-object v4, Lcom/apk/jr0;->case:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    .line 6
    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/apk/jr0;->case:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 8
    :cond_0
    :goto_0
    sget-object v0, Lcom/apk/jr0;->case:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    :try_start_1
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 9
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_6

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/apk/jr0;->for(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1}, Lcom/apk/jr0;->do(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 12
    invoke-virtual {p0, v0, p2}, Lcom/apk/as0;->new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 13
    sget-object v0, Lcom/apk/jr0;->do:Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 14
    sget-object v4, Lcom/apk/jr0;->for:Ljava/lang/reflect/Method;

    if-nez v4, :cond_2

    :try_start_2
    new-array v4, v3, [Ljava/lang/Class;

    .line 15
    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v2

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/apk/jr0;->for:Ljava/lang/reflect/Method;

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 17
    :cond_2
    :goto_1
    sget-object v0, Lcom/apk/jr0;->for:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    :try_start_3
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 19
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_8

    .line 20
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    .line 22
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_6

    .line 23
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 24
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v6, 0x102000d

    if-eq v4, v6, :cond_5

    const v6, 0x102000f

    if-ne v4, v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-virtual {p0, v5, v4}, Lcom/apk/as0;->new(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_6
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_5
    if-ge v2, p2, :cond_7

    .line 26
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-object v1

    .line 27
    :cond_8
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 28
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/apk/as0;->if:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9

    .line 31
    iput-object v0, p0, Lcom/apk/as0;->if:Landroid/graphics/Bitmap;

    .line 32
    :cond_9
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    const/16 v2, 0x8

    new-array v2, v2, [F

    .line 33
    fill-array-data v2, :array_0

    .line 34
    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 35
    invoke-direct {v1, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 36
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 37
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 38
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz p2, :cond_a

    .line 39
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, p1

    :cond_a
    return-object v1

    :catch_2
    :cond_b
    :goto_6
    return-object p1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method
