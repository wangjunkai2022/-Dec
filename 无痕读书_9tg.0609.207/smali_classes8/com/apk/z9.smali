.class public Lcom/apk/z9;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PageView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/simulation/PageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->class:Z

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/apk/y9;->if(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 p3, 0x1

    .line 2
    iput-boolean p3, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->class:Z

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lcom/apk/y9;->if(Landroid/view/MotionEvent;)Z

    :cond_0
    return p3
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    sget-object v0, Lcom/apk/y9$do;->if:Lcom/apk/y9$do;

    iget-object v1, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->class:Z

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    iget v4, v3, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->do:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v4, v6

    if-gez v1, :cond_3

    .line 4
    invoke-static {}, Lcom/apk/da;->class()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 6
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    check-cast v1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do(Z)Z

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Lcom/apk/y9;->for(Lcom/apk/y9$do;)V

    :cond_0
    return v2

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/apk/z9;->do:Lcom/biquge/ebook/app/ui/book/simulation/PageView;

    .line 10
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    check-cast v1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->if(Z)Z

    move-result v1

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v0, :cond_2

    .line 12
    sget-object v3, Lcom/apk/y9$do;->for:Lcom/apk/y9$do;

    invoke-virtual {v0, v3}, Lcom/apk/y9;->for(Lcom/apk/y9$do;)V

    :cond_2
    if-nez v1, :cond_5

    return v2

    :cond_3
    const-wide v6, 0x3fe4cccccccccccdL    # 0.65

    cmpl-double v1, v4, v6

    if-lez v1, :cond_6

    .line 13
    iget-object v1, v3, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->case:Lcom/apk/y9$if;

    check-cast v1, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;

    invoke-virtual {v1, v2}, Lcom/biquge/ebook/app/ui/book/simulation/PageView$do;->do(Z)Z

    move-result v1

    .line 14
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->try:Lcom/apk/y9;

    if-eqz v3, :cond_4

    .line 15
    invoke-virtual {v3, v0}, Lcom/apk/y9;->for(Lcom/apk/y9$do;)V

    :cond_4
    if-nez v1, :cond_5

    return v2

    .line 16
    :cond_5
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 17
    :cond_6
    iget-object p1, v3, Lcom/biquge/ebook/app/ui/book/simulation/PageView;->catch:Lcom/biquge/ebook/app/ui/book/simulation/PageView$if;

    if-eqz p1, :cond_7

    .line 18
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$if;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw()V

    :cond_7
    return v2
.end method
