.class public Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;
.super Lcom/apk/kh;
.source "IndeterminateProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;
    }
.end annotation


# instance fields
.field public continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/apk/kh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    invoke-direct {p1, p0}, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;-><init>(Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;)V

    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    return-void
.end method


# virtual methods
.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar;->continue:Lcom/biquge/ebook/app/widget/browse/IndeterminateProgressBar$do;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
