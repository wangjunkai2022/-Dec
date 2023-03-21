.class public Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;
.super Ljava/util/TimerTask;
.source "NewBookReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->continue(ILandroid/widget/TextView;)V
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
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->strictfp()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    new-instance v1, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;

    invoke-direct {v1, p0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class$do;-><init>(Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView$class;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
