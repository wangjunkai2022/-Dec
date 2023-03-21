.class public Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;
.super Lcom/apk/md;
.source "WebContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/webread/view/WebContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/view/WebContentView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    invoke-direct {p0}, Lcom/apk/md;-><init>()V

    return-void
.end method


# virtual methods
.method public if(ZZZZLcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 2
    iput-boolean p3, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->new:Z

    .line 3
    iput-boolean p4, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->try:Z

    .line 4
    iput-object p5, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->final:Lcom/biquge/ebook/app/ui/webread/entity/WebSiteBean;

    .line 5
    iput-object p6, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->super:Lcom/biquge/ebook/app/ui/webread/entity/WebContentBean;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    if-nez p5, :cond_0

    if-eqz p6, :cond_8

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_1
    if-nez p5, :cond_4

    if-eqz p6, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, v0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    if-eqz p1, :cond_8

    .line 8
    iget-object p2, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    if-eqz p2, :cond_3

    const/4 p4, 0x0

    .line 9
    invoke-virtual {p2, p4}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->setError(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 11
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    .line 12
    iget-boolean p4, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->new:Z

    if-nez p4, :cond_6

    iget-boolean p4, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->try:Z

    if-eqz p4, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p2}, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->const()V

    .line 15
    :cond_7
    iget-object p1, p2, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mTranscodingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/webread/view/WebContentView$if;->do:Lcom/biquge/ebook/app/ui/webread/view/WebContentView;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebContentView;->mWebBookDetailView:Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;

    if-eqz p1, :cond_8

    .line 17
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/webread/view/WebBookDetailView;->mWebLoadingView:Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;

    if-eqz p1, :cond_8

    .line 18
    invoke-virtual {p1}, Lcom/biquge/ebook/app/ui/webread/view/WebLoadingView;->if()V

    :cond_8
    :goto_3
    return-void
.end method
