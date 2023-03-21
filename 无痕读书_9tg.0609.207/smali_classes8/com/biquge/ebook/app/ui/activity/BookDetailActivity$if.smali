.class public Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;
.super Ljava/lang/Object;
.source "BookDetailActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p2, p2, v0

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0600d6

    .line 3
    invoke-static {v0}, Lcom/apk/ze;->j(I)I

    move-result v0

    .line 4
    invoke-static {v0, p2}, Lcom/apk/ze;->X(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 5
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    const p1, 0x7f060073

    .line 6
    invoke-static {p1}, Lcom/apk/ze;->j(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/apk/ze;->X(IF)I

    move-result p1

    .line 7
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarBackBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarAddShelfBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->mToolbarShareBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    float-to-double p1, p2

    const-wide v0, 0x3fe3333333333333L    # 0.6

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->i(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Z)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;->i(Lcom/biquge/ebook/app/ui/activity/BookDetailActivity;Z)V

    :goto_0
    return-void
.end method
