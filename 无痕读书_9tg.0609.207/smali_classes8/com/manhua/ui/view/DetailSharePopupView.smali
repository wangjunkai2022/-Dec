.class public Lcom/manhua/ui/view/DetailSharePopupView;
.super Lcom/lxj/xpopup/core/BottomPopupView;
.source "DetailSharePopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final do:Landroid/app/Activity;

.field public for:Lcom/manhua/data/bean/ComicBean;

.field public final if:Landroid/view/View;

.field public new:Lcom/biquge/ebook/app/bean/Book;

.field public try:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->do:Landroid/app/Activity;

    .line 7
    iput-object p3, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    .line 8
    iput-object p2, p0, Lcom/manhua/ui/view/DetailSharePopupView;->if:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/manhua/data/bean/ComicBean;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/lxj/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->do:Landroid/app/Activity;

    .line 3
    iput-object p3, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    .line 4
    iput-object p2, p0, Lcom/manhua/ui/view/DetailSharePopupView;->if:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getImplLayoutId()I
    .locals 1

    const v0, 0x7f0c0089

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->do:Landroid/app/Activity;

    iget-object v2, p0, Lcom/manhua/ui/view/DetailSharePopupView;->if:Landroid/view/View;

    .line 5
    invoke-static {v1, v2, p1, v0}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->do:Landroid/app/Activity;

    iget-object v1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->if:Landroid/view/View;

    iget-object v2, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    .line 7
    invoke-static {p1, v1, v0, v2}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V

    goto/16 :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/apk/v0;->try()Lcom/apk/v0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apk/v0;->const()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/LoginActivity;->l(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->try:Lcom/apk/v3;

    if-eqz p1, :cond_7

    .line 13
    iget-object v2, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/biquge/ebook/app/bean/Book;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/apk/v3;->super(ZLjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/apk/v3;->super(ZLjava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_2
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->new:Lcom/biquge/ebook/app/bean/Book;

    const v2, 0x7f10025a

    if-eqz p1, :cond_6

    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/Book;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/apk/hf;->do:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->try(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-array p1, v1, [Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->for:Lcom/manhua/data/bean/ComicBean;

    invoke-virtual {v1}, Lcom/manhua/data/bean/ComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-static {v2, p1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->try(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    .line 22
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/lxj/xpopup/core/BottomPopupView;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0901d2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/lxj/xpopup/core/BasePopupView;->onCreate()V

    const v0, 0x7f0901d3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d2

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090418

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lcom/apk/v3;

    iget-object v1, p0, Lcom/manhua/ui/view/DetailSharePopupView;->do:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apk/v3;-><init>(Landroid/app/Activity;Lcom/apk/u5;)V

    iput-object v0, p0, Lcom/manhua/ui/view/DetailSharePopupView;->try:Lcom/apk/v3;

    return-void
.end method
