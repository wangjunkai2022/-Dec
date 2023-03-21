.class public Lcom/biquge/ebook/app/widget/MessageTimerView$if;
.super Landroid/os/Handler;
.source "MessageTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/MessageTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/biquge/ebook/app/widget/MessageTimerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/MessageTimerView;Lcom/biquge/ebook/app/widget/MessageTimerView$do;)V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/MessageTimerView$if;->do:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/MessageTimerView$if;->do:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x400

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/MessageTimerView;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/biquge/ebook/app/widget/MessageTimerView;->getCountTime()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->mTimerView:Landroid/widget/TextView;

    const v1, 0x7f100158

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->case:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->case:I

    .line 9
    iget-object v0, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->mTimerView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/biquge/ebook/app/widget/MessageTimerView;->case:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x3e8

    .line 10
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
