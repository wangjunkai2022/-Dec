.class public Lcom/apk/aa;
.super Lcom/apk/x9;
.source "SimulationPageAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/aa$do;
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public abstract:I

.field public b:Landroid/graphics/PointF;

.field public c:F

.field public continue:I

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Z

.field public final g:F

.field public h:Landroid/graphics/drawable/GradientDrawable;

.field public i:Landroid/graphics/drawable/GradientDrawable;

.field public implements:Landroid/graphics/PointF;

.field public final instanceof:Landroid/graphics/PointF;

.field public final interface:Landroid/graphics/PointF;

.field public j:Landroid/graphics/drawable/GradientDrawable;

.field public k:Landroid/graphics/drawable/GradientDrawable;

.field public final l:Landroid/graphics/Path;

.field public m:I

.field public n:Z

.field public o:I

.field public final private:Lcom/apk/aa$do;

.field public final protected:Landroid/graphics/PointF;

.field public final strictfp:Landroid/graphics/Path;

.field public final synchronized:Landroid/graphics/PointF;

.field public final transient:Landroid/graphics/PointF;

.field public final volatile:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IILandroid/view/ViewGroup;Lcom/apk/y9$if;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apk/x9;-><init>(IILandroid/view/ViewGroup;Lcom/apk/y9$if;)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/apk/aa;->abstract:I

    .line 3
    iput p1, p0, Lcom/apk/aa;->continue:I

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    .line 5
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->transient:Landroid/graphics/PointF;

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->implements:Landroid/graphics/PointF;

    .line 8
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    .line 9
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    .line 10
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->a:Landroid/graphics/PointF;

    .line 11
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->b:Landroid/graphics/PointF;

    const/16 p1, 0x9

    new-array p1, p1, [F

    .line 12
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/apk/aa;->e:[F

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    .line 15
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    .line 16
    iget p1, p0, Lcom/apk/y9;->try:I

    int-to-double p1, p1

    iget p3, p0, Lcom/apk/y9;->case:I

    int-to-double p3, p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/apk/aa;->g:F

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 17
    fill-array-data p2, :array_1

    .line 18
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object p4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p3, p4, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p3, p0, Lcom/apk/aa;->i:Landroid/graphics/drawable/GradientDrawable;

    const/4 p4, 0x0

    .line 19
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 20
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p3, v0, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p3, p0, Lcom/apk/aa;->h:Landroid/graphics/drawable/GradientDrawable;

    .line 21
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-array p1, p1, [I

    .line 22
    fill-array-data p1, :array_2

    .line 23
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object p3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lcom/apk/aa;->j:Landroid/graphics/drawable/GradientDrawable;

    .line 24
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 25
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    sget-object p3, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p2, p0, Lcom/apk/aa;->k:Landroid/graphics/drawable/GradientDrawable;

    .line 26
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 27
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 p2, 0x14

    new-array p2, p2, [F

    .line 28
    fill-array-data p2, :array_3

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 30
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    const p1, 0x3c23d70a    # 0.01f

    .line 31
    iput p1, p0, Lcom/apk/y9;->const:F

    .line 32
    iput p1, p0, Lcom/apk/y9;->final:F

    .line 33
    new-instance p1, Lcom/apk/aa$do;

    invoke-direct {p1, p0}, Lcom/apk/aa$do;-><init>(Lcom/apk/aa;)V

    iput-object p1, p0, Lcom/apk/aa;->private:Lcom/apk/aa$do;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x99999a
        0x666666
    .end array-data

    :array_2
    .array-data 4
        0x50111111
        0x666666
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static class(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 2
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v2

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, p0

    div-float/2addr v3, v4

    mul-float v1, v1, p0

    mul-float v2, v2, p1

    sub-float/2addr v1, v2

    sub-float/2addr p0, p1

    div-float/2addr v1, p0

    .line 3
    iget p0, p3, Landroid/graphics/PointF;->y:F

    iget p1, p2, Landroid/graphics/PointF;->y:F

    sub-float v2, p0, p1

    iget p3, p3, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v4, p3, p2

    div-float/2addr v2, v4

    mul-float p0, p0, p2

    mul-float p1, p1, p3

    sub-float/2addr p0, p1

    sub-float/2addr p2, p3

    div-float/2addr p0, p2

    sub-float/2addr p0, v1

    sub-float p1, v3, v2

    div-float/2addr p0, p1

    .line 4
    iput p0, v0, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, p0

    add-float/2addr v3, v1

    .line 5
    iput v3, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method


# virtual methods
.method public break()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/x9;->native:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "AD"

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    :cond_0
    const v0, 0x7f090313

    .line 6
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/widget/BookContentTextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9
    instance-of v4, v3, Lcom/apk/tg;

    if-eqz v4, :cond_1

    const/16 v4, 0x8

    .line 10
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/apk/y9;->while:Lcom/apk/i1;

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/apk/y9;->while:Lcom/apk/i1;

    check-cast v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;

    .line 13
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 14
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_3

    .line 15
    iget-object v1, v0, Lcom/apk/h2;->t:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lcom/apk/h2;->break(Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final case()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/apk/y9;->const:F

    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 2
    iget v3, p0, Lcom/apk/y9;->final:F

    iget v4, p0, Lcom/apk/aa;->continue:I

    int-to-float v5, v4

    add-float/2addr v3, v5

    div-float/2addr v3, v2

    .line 3
    iget-object v5, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    int-to-float v6, v4

    sub-float/2addr v6, v3

    int-to-float v7, v4

    sub-float/2addr v7, v3

    mul-float v7, v7, v6

    int-to-float v6, v1

    sub-float/2addr v6, v0

    div-float/2addr v7, v6

    sub-float v6, v0, v7

    iput v6, v5, Landroid/graphics/PointF;->x:F

    int-to-float v6, v4

    .line 4
    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 5
    iget-object v5, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    int-to-float v6, v1

    iput v6, v5, Landroid/graphics/PointF;->x:F

    int-to-float v6, v4

    sub-float/2addr v6, v3

    const v7, 0x3dcccccd    # 0.1f

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_0

    int-to-float v4, v1

    sub-float/2addr v4, v0

    int-to-float v1, v1

    sub-float/2addr v1, v0

    mul-float v1, v1, v4

    div-float/2addr v1, v7

    sub-float/2addr v3, v1

    .line 6
    iput v3, v5, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_0
    int-to-float v6, v1

    sub-float/2addr v6, v0

    int-to-float v1, v1

    sub-float/2addr v1, v0

    mul-float v1, v1, v6

    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v1, v0

    sub-float/2addr v3, v1

    .line 7
    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/apk/aa;->abstract:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 9
    iget v3, p0, Lcom/apk/aa;->continue:I

    int-to-float v3, v3

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 10
    iget v0, p0, Lcom/apk/y9;->const:F

    cmpl-float v3, v0, v8

    if-lez v3, :cond_4

    iget v3, p0, Lcom/apk/y9;->try:I

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    cmpg-float v0, v1, v8

    if-ltz v0, :cond_1

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v1, v8

    if-gez v3, :cond_2

    .line 12
    iget v3, p0, Lcom/apk/y9;->try:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 13
    :cond_2
    iget v0, p0, Lcom/apk/aa;->abstract:I

    int-to-float v0, v0

    iget v1, p0, Lcom/apk/y9;->const:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 14
    iget v1, p0, Lcom/apk/y9;->try:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget-object v3, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v3

    .line 15
    iget v3, p0, Lcom/apk/aa;->abstract:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/apk/y9;->const:F

    .line 16
    iget v3, p0, Lcom/apk/aa;->abstract:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/apk/aa;->continue:I

    int-to-float v3, v3

    iget v4, p0, Lcom/apk/y9;->final:F

    sub-float/2addr v3, v4

    .line 17
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v1

    div-float/2addr v3, v0

    .line 18
    iget v0, p0, Lcom/apk/aa;->continue:I

    int-to-float v0, v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/apk/y9;->final:F

    .line 19
    iget v1, p0, Lcom/apk/y9;->const:F

    iget v3, p0, Lcom/apk/aa;->abstract:I

    int-to-float v4, v3

    add-float/2addr v1, v4

    div-float/2addr v1, v2

    .line 20
    iget v4, p0, Lcom/apk/aa;->continue:I

    int-to-float v5, v4

    add-float/2addr v0, v5

    div-float/2addr v0, v2

    .line 21
    iget-object v5, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    int-to-float v6, v4

    sub-float/2addr v6, v0

    int-to-float v9, v4

    sub-float/2addr v9, v0

    mul-float v9, v9, v6

    int-to-float v6, v3

    sub-float/2addr v6, v1

    div-float/2addr v9, v6

    sub-float v6, v1, v9

    iput v6, v5, Landroid/graphics/PointF;->x:F

    int-to-float v6, v4

    .line 22
    iput v6, v5, Landroid/graphics/PointF;->y:F

    .line 23
    iget-object v5, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    int-to-float v6, v3

    iput v6, v5, Landroid/graphics/PointF;->x:F

    int-to-float v6, v4

    sub-float/2addr v6, v0

    cmpl-float v6, v6, v8

    if-nez v6, :cond_3

    int-to-float v4, v3

    sub-float/2addr v4, v1

    int-to-float v3, v3

    sub-float/2addr v3, v1

    mul-float v3, v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v0, v3

    .line 24
    iput v0, v5, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_3
    int-to-float v6, v3

    sub-float/2addr v6, v1

    int-to-float v3, v3

    sub-float/2addr v3, v1

    mul-float v3, v3, v6

    int-to-float v1, v4

    sub-float/2addr v1, v0

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 25
    iput v0, v5, Landroid/graphics/PointF;->y:F

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/apk/aa;->abstract:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v3, v1

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 28
    iget-object v3, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/apk/aa;->continue:I

    int-to-float v5, v4

    sub-float/2addr v5, v3

    div-float/2addr v5, v2

    sub-float/2addr v3, v5

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 29
    iget v0, p0, Lcom/apk/y9;->const:F

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v3, p0, Lcom/apk/y9;->final:F

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/apk/aa;->c:F

    .line 30
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/apk/y9;->const:F

    iget v3, p0, Lcom/apk/y9;->final:F

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    invoke-static {v0, v1, v3, v4}, Lcom/apk/aa;->class(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/aa;->implements:Landroid/graphics/PointF;

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/apk/y9;->const:F

    iget v3, p0, Lcom/apk/y9;->final:F

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    invoke-static {v0, v1, v3, v4}, Lcom/apk/aa;->class(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/aa;->b:Landroid/graphics/PointF;

    .line 32
    iget-object v1, p0, Lcom/apk/aa;->transient:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v2

    add-float/2addr v6, v4

    iget-object v4, p0, Lcom/apk/aa;->implements:Landroid/graphics/PointF;

    iget v7, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 33
    iget v5, v5, Landroid/graphics/PointF;->y:F

    mul-float v5, v5, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    iget v3, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v3

    div-float/2addr v5, v7

    iput v5, v1, Landroid/graphics/PointF;->y:F

    .line 34
    iget-object v1, p0, Lcom/apk/aa;->a:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    mul-float v6, v6, v2

    add-float/2addr v6, v4

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v4

    div-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 35
    iget v4, v5, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v2

    iget v2, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v0

    div-float/2addr v4, v7

    iput v4, v1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public final catch(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->transient:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->a:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v1, v1

    iget v2, p0, Lcom/apk/aa;->continue:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 8
    iget-object v0, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/apk/aa;->continue:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 9
    iget-boolean v1, p0, Lcom/apk/aa;->f:Z

    const/high16 v2, 0x40800000    # 4.0f

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v1

    .line 11
    iget v4, p0, Lcom/apk/aa;->c:F

    div-float/2addr v4, v2

    add-float/2addr v4, v1

    float-to-int v1, v4

    .line 12
    iget-object v2, p0, Lcom/apk/aa;->h:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/apk/aa;->c:F

    div-float/2addr v3, v2

    sub-float v2, v1, v3

    float-to-int v3, v2

    float-to-int v1, v1

    .line 14
    iget-object v2, p0, Lcom/apk/aa;->i:Landroid/graphics/drawable/GradientDrawable;

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 17
    iget-object v4, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 20
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :goto_1
    iget-object p2, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v4, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v4, p2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 23
    iget-object p2, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    float-to-int v0, p2

    iget v4, p0, Lcom/apk/aa;->g:F

    add-float/2addr v4, p2

    float-to-int p2, v4

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 24
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public final const(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/apk/aa;->n:Z

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/y9;->while:Lcom/apk/i1;

    if-eqz v0, :cond_1

    .line 3
    check-cast v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$for;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 5
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v0, Lcom/apk/h2;->throw:Lcom/apk/import;

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 8
    iget-object v1, v0, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, v0, Lcom/apk/d;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->setMove(Z)V

    .line 10
    :cond_0
    sget-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    .line 11
    iget-object v1, v0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    iget-object v0, v0, Lcom/apk/d;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ad/ads/AdViewRectangle;->setMove(Z)V

    .line 13
    :cond_1
    iput-boolean p1, p0, Lcom/apk/aa;->n:Z

    return-void
.end method

.method public final else(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/apk/aa;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->transient:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/apk/aa;->transient:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->const:F

    iget v2, p0, Lcom/apk/y9;->final:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    iget v0, p0, Lcom/apk/aa;->abstract:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/apk/aa;->continue:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 9
    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 10
    iget-object v2, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/apk/aa;->continue:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 11
    iget-object v0, p0, Lcom/apk/aa;->e:[F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v1

    mul-float v1, v1, v5

    sub-float/2addr v4, v1

    neg-float v1, v4

    aput v1, v0, v3

    mul-float v5, v5, v2

    const/4 v1, 0x1

    .line 12
    aput v5, v0, v1

    const/4 v2, 0x3

    .line 13
    aget v1, v0, v1

    aput v1, v0, v2

    const/4 v1, 0x4

    .line 14
    aput v4, v0, v1

    .line 15
    iget-object v0, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 16
    iget-object v0, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/aa;->e:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 17
    iget-object v0, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 18
    iget-object v0, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 19
    iget-object v0, p0, Lcom/apk/aa;->d:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public for(Lcom/apk/y9$do;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/apk/y9;->new:Lcom/apk/y9$do;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/apk/y9;->catch:F

    iget v0, p0, Lcom/apk/y9;->try:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/apk/aa;->try(F)V

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 5
    invoke-virtual {p0, v0}, Lcom/apk/aa;->try(F)V

    goto :goto_0

    .line 6
    :cond_2
    iget p1, p0, Lcom/apk/y9;->try:I

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/apk/y9;->catch:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    int-to-float p1, p1

    sub-float/2addr p1, v1

    .line 7
    invoke-virtual {p0, p1}, Lcom/apk/aa;->try(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final goto(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/apk/aa;->implements:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 4
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->const:F

    iget v2, p0, Lcom/apk/y9;->final:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->b:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 7
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/aa;->abstract:I

    int-to-float v1, v1

    iget v2, p0, Lcom/apk/aa;->continue:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 13
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v2, p0, Lcom/apk/y9;->this:I

    int-to-float v2, v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v2, p0, Lcom/apk/y9;->this:I

    int-to-float v2, v2

    iget v3, p0, Lcom/apk/y9;->break:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v2, p0, Lcom/apk/y9;->break:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 17
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 18
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 20
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public new(FF)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/apk/y9;->const:F

    .line 2
    iput p2, p0, Lcom/apk/y9;->final:F

    .line 3
    iget p1, p0, Lcom/apk/y9;->break:I

    div-int/lit8 p2, p1, 0x2

    .line 4
    iget v0, p0, Lcom/apk/y9;->class:F

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    int-to-float p1, p1

    .line 5
    iput p1, p0, Lcom/apk/y9;->final:F

    goto :goto_0

    .line 6
    :cond_0
    iget p2, p0, Lcom/apk/aa;->o:I

    if-nez p2, :cond_1

    .line 7
    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/apk/aa;->o:I

    .line 8
    :cond_1
    iget p1, p0, Lcom/apk/y9;->break:I

    iget p2, p0, Lcom/apk/aa;->o:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/apk/y9;->final:F

    :goto_0
    return-void
.end method

.method public this(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/apk/aa;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/apk/y9;->final:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/apk/y9;->const:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v0

    float-to-double v3, v3

    .line 3
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/apk/y9;->final:F

    iget-object v1, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget v0, p0, Lcom/apk/y9;->const:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    :goto_0
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v2, v0

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v4, 0x4041accccccccccdL    # 35.35

    mul-double v0, v0, v4

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v4

    .line 8
    iget v4, p0, Lcom/apk/y9;->const:F

    float-to-double v4, v4

    add-double/2addr v4, v0

    double-to-float v0, v4

    .line 9
    iget-boolean v1, p0, Lcom/apk/aa;->f:Z

    if-eqz v1, :cond_1

    .line 10
    iget v1, p0, Lcom/apk/y9;->final:F

    float-to-double v4, v1

    add-double/2addr v4, v2

    goto :goto_1

    .line 11
    :cond_1
    iget v1, p0, Lcom/apk/y9;->final:F

    float-to-double v4, v1

    sub-double/2addr v4, v2

    :goto_1
    double-to-float v1, v4

    .line 12
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 13
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget v3, p0, Lcom/apk/y9;->const:F

    iget v4, p0, Lcom/apk/y9;->final:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/apk/aa;->interface:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v2, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    .line 19
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v2, :cond_2

    .line 20
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 21
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 22
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/apk/y9;->this:I

    int-to-float v5, v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/apk/y9;->this:I

    int-to-float v5, v5

    iget v6, p0, Lcom/apk/y9;->break:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v5, p0, Lcom/apk/y9;->break:I

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 26
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 27
    iget-object v4, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_2

    .line 28
    :cond_2
    iget-object v4, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 29
    :goto_2
    iget-object v4, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 30
    :goto_3
    iget-boolean v4, p0, Lcom/apk/aa;->f:Z

    const/high16 v5, 0x41000000    # 8.0f

    if-eqz v4, :cond_3

    .line 31
    iget-object v4, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    add-int/lit8 v6, v4, 0x8

    .line 32
    iget-object v7, p0, Lcom/apk/aa;->j:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_4

    .line 33
    :cond_3
    iget-object v4, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v6, v4, v5

    float-to-int v6, v6

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    .line 34
    iget-object v7, p0, Lcom/apk/aa;->k:Landroid/graphics/drawable/GradientDrawable;

    move v12, v6

    move v6, v4

    move v4, v12

    .line 35
    :goto_4
    iget v8, p0, Lcom/apk/y9;->const:F

    iget-object v9, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v10

    float-to-double v10, v8

    iget v8, v9, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lcom/apk/y9;->final:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 36
    iget-object v9, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v8, v10, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 37
    iget-object v8, p0, Lcom/apk/aa;->protected:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, p0, Lcom/apk/aa;->g:F

    sub-float v9, v8, v9

    float-to-int v9, v9

    float-to-int v8, v8

    invoke-virtual {v7, v4, v9, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 38
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 40
    iget-object v4, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 41
    iget-object v4, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->const:F

    iget v4, p0, Lcom/apk/y9;->final:F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->instanceof:Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 47
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 48
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 49
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->this:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->this:I

    int-to-float v1, v1

    iget v2, p0, Lcom/apk/y9;->break:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget v1, p0, Lcom/apk/y9;->break:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 54
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->XOR:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 55
    iget-object v0, p0, Lcom/apk/aa;->l:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_5

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/apk/aa;->strictfp:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 57
    :goto_5
    iget-object v0, p0, Lcom/apk/aa;->volatile:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    nop

    .line 58
    :goto_6
    iget-boolean v0, p0, Lcom/apk/aa;->f:Z

    if-eqz v0, :cond_5

    .line 59
    iget-object v0, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v1, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    .line 60
    iget-object v2, p0, Lcom/apk/aa;->j:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_7

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v1, v0, v5

    float-to-int v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 62
    iget-object v2, p0, Lcom/apk/aa;->k:Landroid/graphics/drawable/GradientDrawable;

    .line 63
    :goto_7
    iget-object v4, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v6, v4, Landroid/graphics/PointF;->y:F

    iget v7, p0, Lcom/apk/y9;->final:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v8, p0, Lcom/apk/y9;->const:F

    sub-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 64
    iget-object v6, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, v7, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 65
    iget-object v4, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v4, v3

    if-gez v3, :cond_6

    .line 66
    iget v3, p0, Lcom/apk/y9;->case:I

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 67
    :cond_6
    iget-object v3, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-double v6, v3

    float-to-double v3, v4

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v3

    .line 68
    iget v6, p0, Lcom/apk/aa;->g:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_7

    .line 69
    iget-object v4, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v5, v4, v5

    float-to-int v5, v5

    sub-int/2addr v5, v3

    add-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {v2, v5, v1, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_8

    .line 70
    :cond_7
    iget-object v3, p0, Lcom/apk/aa;->synchronized:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v4, v3, v6

    float-to-int v4, v4

    float-to-int v3, v3

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 71
    :goto_8
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public try(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/apk/y9;->try:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    .line 2
    iput v2, p0, Lcom/apk/aa;->abstract:I

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Lcom/apk/aa;->abstract:I

    .line 4
    :goto_0
    iget p1, p0, Lcom/apk/y9;->break:I

    iput p1, p0, Lcom/apk/aa;->continue:I

    .line 5
    iget v0, p0, Lcom/apk/aa;->abstract:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/apk/y9;->case:I

    if-eq p1, v0, :cond_2

    :cond_1
    iget p1, p0, Lcom/apk/aa;->abstract:I

    iget v0, p0, Lcom/apk/y9;->try:I

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/apk/aa;->continue:I

    if-nez p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/apk/aa;->f:Z

    return-void
.end method
