.class public Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$if;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WebSearchGuidePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->break()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$if;->do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup$if;->do:Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/WebSearchGuidePopup;->if:Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
