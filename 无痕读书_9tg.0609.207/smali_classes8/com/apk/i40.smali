.class public Lcom/apk/i40;
.super Ljava/lang/Object;
.source "OnTransitionTextListener.java"

# interfaces
.implements Lcom/apk/b40$try;


# instance fields
.field public case:I

.field public do:F

.field public else:I

.field public for:Lcom/apk/j40;

.field public if:F

.field public new:F

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/apk/i40;->do:F

    .line 3
    iput v0, p0, Lcom/apk/i40;->if:F

    .line 4
    iput v0, p0, Lcom/apk/i40;->new:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/apk/i40;->try:Z

    return-void
.end method


# virtual methods
.method public do()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/apk/j40;

    .line 2
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 3
    iget v2, p0, Lcom/apk/i40;->else:I

    invoke-static {v2}, Lcom/apk/tr0;->do(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v1

    .line 4
    sget-object v2, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    iget v3, p0, Lcom/apk/i40;->case:I

    invoke-static {v3}, Lcom/apk/tr0;->do(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/apk/j40;-><init>(III)V

    iput-object v0, p0, Lcom/apk/i40;->for:Lcom/apk/j40;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final for(II)Lcom/apk/i40;
    .locals 2

    .line 1
    iput p1, p0, Lcom/apk/i40;->case:I

    .line 2
    iput p2, p0, Lcom/apk/i40;->else:I

    .line 3
    new-instance v0, Lcom/apk/j40;

    .line 4
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 5
    invoke-static {p2}, Lcom/apk/tr0;->do(I)I

    move-result p2

    invoke-static {v1, p2}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p2

    .line 6
    sget-object v1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    .line 7
    invoke-static {p1}, Lcom/apk/tr0;->do(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result p1

    const/16 v1, 0x64

    invoke-direct {v0, p2, p1, v1}, Lcom/apk/j40;-><init>(III)V

    iput-object v0, p0, Lcom/apk/i40;->for:Lcom/apk/j40;

    return-object p0
.end method

.method public if(Landroid/view/View;IF)V
    .locals 10

    .line 1
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/apk/i40;->for:Lcom/apk/j40;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v1, v1, p3

    float-to-int v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p2, Lcom/apk/j40;->for:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 5
    iget-object v5, p2, Lcom/apk/j40;->if:[I

    aget v6, v5, v3

    int-to-double v6, v6

    aget v4, v4, v3

    aget v5, v5, v3

    sub-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v8

    iget v8, p2, Lcom/apk/j40;->do:I

    int-to-double v8, v8

    div-double/2addr v4, v8

    int-to-double v8, v1

    mul-double v4, v4, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    aget p2, v2, v0

    const/4 v1, 0x1

    aget v1, v2, v1

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-static {p2, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_2
    iget p2, p0, Lcom/apk/i40;->if:F

    const/4 v1, 0x0

    cmpl-float v2, p2, v1

    if-lez v2, :cond_4

    iget v2, p0, Lcom/apk/i40;->do:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    .line 9
    iget-boolean v1, p0, Lcom/apk/i40;->try:Z

    if-eqz v1, :cond_3

    .line 10
    iget v1, p0, Lcom/apk/i40;->new:F

    mul-float v1, v1, p3

    add-float/2addr v1, p2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    .line 11
    :cond_3
    iget v0, p0, Lcom/apk/i40;->new:F

    mul-float v0, v0, p3

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final new(FF)Lcom/apk/i40;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apk/i40;->try:Z

    .line 2
    iput p1, p0, Lcom/apk/i40;->do:F

    .line 3
    iput p2, p0, Lcom/apk/i40;->if:F

    sub-float/2addr p1, p2

    .line 4
    iput p1, p0, Lcom/apk/i40;->new:F

    return-object p0
.end method
