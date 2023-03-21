.class public Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;
.super Ljava/lang/Object;
.source "SwitchNightRelativeLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->for(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x190

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;->do:Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;

    invoke-static {v0, p1}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;->do(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout;Landroid/view/animation/Animation;)V

    .line 5
    new-instance v0, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do$do;

    invoke-direct {v0, p0}, Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do$do;-><init>(Lcom/biquge/ebook/app/widget/SwitchNightRelativeLayout$do;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
