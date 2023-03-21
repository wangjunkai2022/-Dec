.class public Lcom/apk/ug;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollPaintView.java"


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ScrollPaintView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ScrollPaintView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ug;->do:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/apk/ug;->do:Lcom/biquge/ebook/app/widget/ScrollPaintView;

    .line 3
    iget-boolean v0, p1, Lcom/biquge/ebook/app/widget/ScrollPaintView;->default:Z

    if-nez v0, :cond_0

    .line 4
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ScrollPaintView;->super:Lcom/biquge/ebook/app/widget/ScrollPaintView$do;

    if-eqz p1, :cond_0

    .line 5
    check-cast p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;

    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$else;->if()V

    :cond_0
    return-void
.end method
