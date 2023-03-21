.class public Lcom/biquge/ebook/app/widget/MessageTimerView$do;
.super Lcom/apk/x5;
.source "MessageTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/MessageTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/MessageTimerView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/MessageTimerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView$do;->do:Lcom/biquge/ebook/app/widget/MessageTimerView;

    invoke-direct {p0}, Lcom/apk/x5;-><init>()V

    return-void
.end method


# virtual methods
.method public case(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView$do;->do:Lcom/biquge/ebook/app/widget/MessageTimerView;

    iget-object v0, v0, Lcom/biquge/ebook/app/widget/MessageTimerView;->mLoadingView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    invoke-static {p2}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/MessageTimerView$do;->do:Lcom/biquge/ebook/app/widget/MessageTimerView;

    const/16 p2, 0x3c

    .line 4
    iput p2, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->case:I

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->if:Lcom/biquge/ebook/app/widget/MessageTimerView$if;

    const/16 p2, 0x400

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
