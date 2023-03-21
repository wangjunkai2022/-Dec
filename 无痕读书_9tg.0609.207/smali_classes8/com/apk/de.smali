.class public final synthetic Lcom/apk/de;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/de;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/apk/de;->do:Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;

    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/ui/webread/view/WebSearchResultLayout;->new(Landroid/animation/ValueAnimator;)V

    return-void
.end method
