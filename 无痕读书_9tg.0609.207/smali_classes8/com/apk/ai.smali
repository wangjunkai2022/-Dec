.class public Lcom/apk/ai;
.super Lcom/apk/bg;
.source "ShelfMarqueeView.java"


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ai;->if:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    iput p2, p0, Lcom/apk/ai;->do:I

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/apk/ai;->if:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;

    .line 2
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView;->this:Lcom/biquge/ebook/app/widget/marqueeview/ShelfMarqueeView$do;

    if-eqz p1, :cond_1

    .line 3
    iget v0, p0, Lcom/apk/ai;->do:I

    check-cast p1, Lcom/apk/ch;

    .line 4
    iget-object v1, p1, Lcom/apk/ch;->do:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biquge/ebook/app/bean/MarqueeBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MarqueeBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MarqueeBean;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/MarqueeBean;->getLandingtype()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v3, p1, Lcom/apk/ch;->if:Lcom/biquge/ebook/app/widget/TopMsgView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/biquge/ebook/app/widget/TopMsgView;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p1, p1, Lcom/apk/ch;->if:Lcom/biquge/ebook/app/widget/TopMsgView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/biquge/ebook/app/widget/TopMsgView;->do(Lcom/biquge/ebook/app/widget/TopMsgView;Z)V

    :cond_1
    return-void
.end method
