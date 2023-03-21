.class public Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;
.super Lcom/apk/me0$for;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public do:Z

.field public final synthetic if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method public constructor <init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-direct {p0}, Lcom/apk/me0$for;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 2
    iget p4, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->while:I

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    int-to-float p4, p2

    .line 3
    iget-object p5, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 5
    iget-object v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->break:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p4, p5

    .line 7
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 8
    iput p4, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    goto :goto_0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    int-to-float p4, p2

    .line 9
    iget-object p5, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    .line 10
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 11
    iget-object v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->catch:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p4, p5

    .line 13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 14
    iput p4, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    goto :goto_0

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    int-to-float p4, p3

    .line 15
    iget-object p5, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->new:Landroid/view/View;

    .line 16
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p5

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 17
    iget-object v0, v0, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->class:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p5

    int-to-float p5, v0

    div-float/2addr p4, p5

    .line 19
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 20
    iput p4, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 21
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 22
    iput p2, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->else:I

    .line 23
    iput p3, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->goto:I

    .line 24
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 25
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 26
    iget p2, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 27
    iget p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    const/4 p3, 0x1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 28
    iget-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->do:Z

    if-nez p1, :cond_3

    .line 29
    iput-boolean p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->do:Z

    .line 30
    :cond_3
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 31
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 33
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 34
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;

    .line 36
    iget-object p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 37
    iget-object p5, p4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 38
    iget p5, p5, Lcom/apk/me0;->do:I

    .line 39
    iget p4, p4, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 40
    invoke-interface {p2, p5, p4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;->do(IF)V

    goto :goto_1

    .line 41
    :cond_4
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 42
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 44
    iget-object p2, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->try:Lcom/apk/me0;

    .line 45
    iget p2, p2, Lcom/apk/me0;->do:I

    if-ne p2, p3, :cond_5

    .line 46
    iget p2, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    .line 47
    iget p3, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->if:F

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_5

    .line 48
    iget-boolean p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->do:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->do:Z

    .line 50
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;

    .line 52
    invoke-interface {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;->for()V

    goto :goto_2

    .line 53
    :cond_5
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 54
    iget p2, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->case:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_7

    .line 55
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    if-eqz p1, :cond_7

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 57
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$new;->if:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 58
    iget-object p1, p1, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->this:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$if;

    .line 60
    instance-of p3, p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$for;

    if-eqz p3, :cond_6

    .line 61
    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$for;

    invoke-interface {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$for;->if()V

    goto :goto_3

    :cond_7
    return-void
.end method
