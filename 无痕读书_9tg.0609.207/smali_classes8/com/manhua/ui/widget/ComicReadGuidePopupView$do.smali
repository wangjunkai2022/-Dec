.class public Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;
.super Lcom/apk/bg;
.source "ComicReadGuidePopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/widget/ComicReadGuidePopupView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadGuidePopupView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;->do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;->do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;->do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    .line 5
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if:Landroid/widget/TextView;

    const v2, 0x7f1000e3

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_0
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 10
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->for:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 13
    :cond_2
    sget v0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->this:I

    int-to-float v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if(FFFF)V

    .line 14
    sget v0, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->this:I

    neg-int v1, v0

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v2, v2}, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->if(FFFF)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;->do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    .line 16
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 18
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :cond_4
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 21
    :cond_5
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_6

    .line 23
    iget-object v1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 24
    :cond_6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadGuidePopupView;->new:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p1}, Landroid/view/animation/Animation;->cancel()V

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadGuidePopupView$do;->do:Lcom/manhua/ui/widget/ComicReadGuidePopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->dismiss()V

    :goto_0
    return-void
.end method
