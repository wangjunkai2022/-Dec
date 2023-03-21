.class public Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SlideRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;
    }
.end annotation


# instance fields
.field public final do:I

.field public for:Z

.field public if:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;

.field public new:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->do:I

    .line 3
    new-instance p1, Lcom/apk/gd;

    invoke-direct {p1, p0}, Lcom/apk/gd;-><init>(Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public setCallScrollDown(Z)V
    .locals 0

    return-void
.end method

.method public setCallScrollUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->for:Z

    return-void
.end method

.method public setSlideCallback(Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/SlideRecyclerView;->if:Lcom/biquge/ebook/app/ui/view/SlideRecyclerView$do;

    return-void
.end method
