.class public Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;
.super Landroid/os/Handler;
.source "IndeterminateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public final for:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->if:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final do()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->if:Ljava/util/Random;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0xc8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    const/16 v3, 0xa

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iput v3, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    iget v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    invoke-virtual {p1, v0}, Lcom/apk/kh;->setProgress(I)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do()V

    goto :goto_0

    .line 9
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    iget p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    .line 12
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    iget v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    invoke-virtual {p1, v0}, Lcom/apk/kh;->setProgress(I)V

    .line 13
    iget p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    const/16 v0, 0x50

    if-gt p1, v0, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do()V

    goto :goto_0

    .line 15
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x67

    if-ne p1, v1, :cond_3

    const/16 p1, 0x64

    .line 16
    iput p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    .line 17
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->for:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;

    iget v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;->do:I

    invoke-virtual {p1, v0}, Lcom/apk/kh;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method
