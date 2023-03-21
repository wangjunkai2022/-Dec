.class public Lcom/apk/gu;
.super Ljava/lang/Object;
.source "FitsKeyboard.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public break:I

.field public case:I

.field public catch:Z

.field public do:Lcom/apk/iu;

.field public else:I

.field public for:Landroid/view/View;

.field public goto:I

.field public if:Landroid/view/Window;

.field public new:Landroid/view/View;

.field public this:I

.field public try:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/apk/iu;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/gu;->case:I

    iput v0, p0, Lcom/apk/gu;->else:I

    iput v0, p0, Lcom/apk/gu;->goto:I

    iput v0, p0, Lcom/apk/gu;->this:I

    .line 3
    iput-object p1, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 4
    iget-object v1, p1, Lcom/apk/iu;->try:Landroid/view/Window;

    .line 5
    iput-object v1, p0, Lcom/apk/gu;->if:Landroid/view/Window;

    .line 6
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/apk/gu;->for:Landroid/view/View;

    const v2, 0x1020002

    .line 7
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 8
    iget-boolean v2, p1, Lcom/apk/iu;->break:Z

    if-eqz v2, :cond_1

    .line 9
    iget-object v0, p1, Lcom/apk/iu;->if:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/apk/iu;->for:Landroid/app/Fragment;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 14
    instance-of v2, p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v2, :cond_2

    .line 15
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    .line 16
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/apk/gu;->case:I

    .line 18
    iget-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/apk/gu;->else:I

    .line 19
    iget-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/apk/gu;->goto:I

    .line 20
    iget-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/apk/gu;->this:I

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/apk/gu;->try:Landroid/view/View;

    if-eqz p1, :cond_4

    move-object v1, p1

    :cond_4
    iput-object v1, p0, Lcom/apk/gu;->new:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/apk/gu;->catch:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/gu;->try:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/gu;->new:Landroid/view/View;

    iget v1, p0, Lcom/apk/gu;->case:I

    iget v2, p0, Lcom/apk/gu;->else:I

    iget v3, p0, Lcom/apk/gu;->goto:I

    iget v4, p0, Lcom/apk/gu;->this:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/apk/gu;->new:Landroid/view/View;

    iget-object v1, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 5
    iget v2, v1, Lcom/apk/iu;->static:I

    .line 6
    iget v3, v1, Lcom/apk/iu;->switch:I

    .line 7
    iget v4, v1, Lcom/apk/iu;->throws:I

    .line 8
    iget v1, v1, Lcom/apk/iu;->default:I

    .line 9
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public if(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/gu;->if:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2
    iget-boolean p1, p0, Lcom/apk/gu;->catch:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/apk/gu;->for:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/apk/gu;->catch:Z

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    if-eqz v0, :cond_b

    .line 2
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    if-eqz v1, :cond_b

    .line 3
    iget-boolean v1, v1, Lcom/apk/cu;->private:Z

    if-eqz v1, :cond_b

    .line 4
    iget-object v1, v0, Lcom/apk/iu;->const:Lcom/apk/au;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/apk/au;

    iget-object v2, v0, Lcom/apk/iu;->do:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/apk/au;-><init>(Landroid/app/Activity;)V

    iput-object v1, v0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/apk/iu;->const:Lcom/apk/au;

    .line 7
    invoke-virtual {v0}, Lcom/apk/au;->for()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget v1, v0, Lcom/apk/au;->new:I

    goto :goto_0

    .line 9
    :cond_1
    iget v1, v0, Lcom/apk/au;->try:I

    .line 10
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object v3, p0, Lcom/apk/gu;->for:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 12
    iget-object v3, p0, Lcom/apk/gu;->new:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    .line 13
    iget v2, p0, Lcom/apk/gu;->break:I

    if-eq v3, v2, :cond_b

    .line 14
    iput v3, p0, Lcom/apk/gu;->break:I

    .line 15
    iget-object v2, p0, Lcom/apk/gu;->if:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v4, 0x1020002

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/apk/iu;->if(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_7

    .line 16
    iget-object v2, p0, Lcom/apk/gu;->try:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 18
    iget-object v6, v2, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 19
    iget-boolean v6, v6, Lcom/apk/cu;->package:Z

    if-eqz v6, :cond_2

    .line 20
    iget v2, v2, Lcom/apk/iu;->throw:I

    .line 21
    iget v6, v0, Lcom/apk/au;->do:I

    add-int/2addr v2, v6

    add-int/2addr v3, v2

    .line 22
    :cond_2
    iget-object v2, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 23
    iget-object v2, v2, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 24
    iget-boolean v2, v2, Lcom/apk/cu;->static:Z

    if-eqz v2, :cond_3

    .line 25
    iget v0, v0, Lcom/apk/au;->do:I

    add-int/2addr v3, v0

    :cond_3
    if-le v3, v1, :cond_4

    .line 26
    iget v0, p0, Lcom/apk/gu;->this:I

    add-int/2addr v0, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/apk/gu;->new:Landroid/view/View;

    iget v2, p0, Lcom/apk/gu;->case:I

    iget v6, p0, Lcom/apk/gu;->else:I

    iget v7, p0, Lcom/apk/gu;->goto:I

    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 29
    iget v0, v0, Lcom/apk/iu;->default:I

    sub-int/2addr v3, v1

    if-le v3, v1, :cond_6

    add-int v0, v3, v1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 30
    :goto_2
    iget-object v1, p0, Lcom/apk/gu;->new:Landroid/view/View;

    iget-object v2, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 31
    iget v6, v2, Lcom/apk/iu;->static:I

    .line 32
    iget v7, v2, Lcom/apk/iu;->switch:I

    .line 33
    iget v2, v2, Lcom/apk/iu;->throws:I

    .line 34
    invoke-virtual {v1, v6, v7, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    :cond_7
    sub-int/2addr v3, v1

    if-le v3, v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    if-gez v3, :cond_9

    goto :goto_4

    :cond_9
    move v5, v3

    .line 35
    :goto_4
    iget-object v0, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 36
    iget-object v0, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 37
    iget-object v0, v0, Lcom/apk/cu;->protected:Lcom/apk/ou;

    if-eqz v0, :cond_a

    .line 38
    invoke-interface {v0, v4, v5}, Lcom/apk/ou;->do(ZI)V

    :cond_a
    if-nez v4, :cond_b

    .line 39
    iget-object v0, p0, Lcom/apk/gu;->do:Lcom/apk/iu;

    .line 40
    iget-object v1, v0, Lcom/apk/iu;->class:Lcom/apk/cu;

    .line 41
    iget-object v1, v1, Lcom/apk/cu;->break:Lcom/apk/bu;

    sget-object v2, Lcom/apk/bu;->new:Lcom/apk/bu;

    if-eq v1, v2, :cond_b

    .line 42
    invoke-virtual {v0}, Lcom/apk/iu;->catch()V

    :cond_b
    return-void
.end method
