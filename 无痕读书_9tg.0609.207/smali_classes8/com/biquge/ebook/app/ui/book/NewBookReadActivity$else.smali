.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;
.super Ljava/lang/Object;
.source "NewBookReadActivity.java"

# interfaces
.implements Lcom/biquge/ebook/app/widget/ScrollPaintView$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class()V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 9
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    .line 11
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mBottomLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setDayNightViewVisible(Z)V

    .line 13
    invoke-virtual {p1, v1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setCommentViewVisible(Z)V

    .line 14
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mEyeshield:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->for:Lcom/biquge/ebook/app/ad/AdFloatView;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    :cond_2
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadLayout:Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->throw:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    iget-object v2, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->mAutoReadSpeedValue:Landroid/widget/TextView;

    const v3, 0x7f10004f

    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/apk/da;->if()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 21
    invoke-static {v3, v0}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->else:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->const()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setAutoReadType(I)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->class()V

    :cond_4
    :goto_1
    return-void
.end method

.method public if()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 2
    iget-boolean v1, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->b:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 4
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->case()V

    return-void

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/apk/h2;->continue(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100050

    .line 7
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 8
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 9
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V

    return-void

    .line 10
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 11
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 12
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 13
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 14
    invoke-virtual {v2}, Lcom/apk/h2;->switch()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    const v2, 0x7f100046

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getItemType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 16
    iget-object v3, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 17
    iget-object v3, v3, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 18
    invoke-virtual {v3, v0}, Lcom/apk/h2;->final(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "LOAD_FAILED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    :cond_2
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 21
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 22
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V

    return-void

    .line 23
    :cond_3
    invoke-static {v2}, Lcom/hjq/toast/ToastUtils;->show(I)V

    .line 24
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 25
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->j0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 27
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 28
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 29
    invoke-virtual {v0}, Lcom/apk/h2;->const()I

    move-result v0

    if-nez v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 31
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 33
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    const/4 v2, 0x4

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 36
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 37
    iget-object v2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 38
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mReadLayout:Lcom/biquge/ebook/app/ui/book/view/ReadBookLayout;

    invoke-static {v2}, Lcom/apk/ze;->o0(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->setImage(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 41
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 42
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for()V

    .line 43
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 44
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 47
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 48
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V

    .line 49
    :cond_5
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 50
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 51
    invoke-virtual {v0, v1}, Lcom/apk/h2;->p(Z)V

    goto :goto_0

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 53
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 54
    invoke-virtual {v0, v1}, Lcom/apk/h2;->p(Z)V

    .line 55
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 56
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    if-eqz v0, :cond_7

    .line 57
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 58
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 59
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->for()V

    .line 60
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 61
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->a:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 62
    invoke-virtual {v0}, Lcom/biquge/ebook/app/widget/ScrollPaintView;->try()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method
