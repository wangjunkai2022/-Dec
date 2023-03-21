.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;
.super Ljava/lang/Object;
.source "NewBookReadMenuView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->try:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v0, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;Landroid/app/Activity;Z)V

    .line 5
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lcom/apk/finally;->f:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 8
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->for:Lcom/biquge/ebook/app/ad/AdFloatView;

    if-nez v0, :cond_0

    const v0, 0x7f090458

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 10
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 11
    iput-object p1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->for:Lcom/biquge/ebook/app/ad/AdFloatView;

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 13
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->for:Lcom/biquge/ebook/app/ad/AdFloatView;

    const/4 v0, 0x2

    .line 14
    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ad/AdFloatView;->setSourceTag(I)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->for:Lcom/biquge/ebook/app/ad/AdFloatView;

    if-eqz p1, :cond_1

    .line 17
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/apk/finally;->f:Lorg/json/JSONObject;

    .line 19
    new-instance v2, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do$do;

    invoke-direct {v2, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/biquge/ebook/app/ad/AdFloatView;->if(Lorg/json/JSONObject;ZLcom/biquge/ebook/app/ad/AdFloatView$for;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 21
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->new:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$native;

    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$do;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->public:Z

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->case:Lcom/apk/l2;

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/apk/l2;->while(Z)V

    return-void
.end method
