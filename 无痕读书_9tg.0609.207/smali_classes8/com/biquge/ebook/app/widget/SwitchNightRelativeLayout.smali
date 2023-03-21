.class public Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SwitchNightRelativeLayout.java"


# instance fields
.field public do:Landroid/widget/ImageView;

.field public if:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0138

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->if:Landroid/view/View;

    const p2, 0x7f0905d6

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->do:Landroid/widget/ImageView;

    .line 4
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->if:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic do(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic if(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public for(IZ)V
    .locals 12

    if-nez p2, :cond_0

    const p2, 0x7f0800fa

    goto :goto_0

    :cond_0
    const p2, 0x7f0800f9

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 4
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {}, Lcom/apk/eg;->static()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {v2, v3, v3, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v10, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    .line 5
    new-instance v3, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    int-to-float v7, v0

    move-object v5, v3

    move v8, v10

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v4, 0x190

    .line 9
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 10
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 11
    invoke-virtual {v3, v4, v5}, Landroid/view/animation/RotateAnimation;->setStartOffset(J)V

    const-wide/16 v0, 0x3e8

    .line 12
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 13
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    new-instance p2, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;

    invoke-direct {p2, p0}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;-><init>(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 15
    iget-object p2, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->do:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
