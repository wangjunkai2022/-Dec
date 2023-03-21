.class public Lcom/manhua/ui/widget/ComicReadMenuView$try;
.super Lcom/apk/bg;
.source "ComicReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/widget/ComicReadMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09060e

    if-eq p1, v0, :cond_4

    const v0, 0x7f090610

    if-eq p1, v0, :cond_3

    const v0, 0x7f090613

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 3
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->return:Landroid/view/View;

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    const v0, 0x7f0903df

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 5
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->return:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 8
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->return:Landroid/view/View;

    const/4 v0, 0x4

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 11
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 13
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 15
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->const:Lcom/manhua/data/bean/ComicCollectBean;

    .line 16
    invoke-static {v0}, Lcom/apk/mu;->const(Lcom/manhua/data/bean/ComicCollectBean;)Lcom/manhua/data/bean/ComicBean;

    move-result-object v0

    .line 17
    iput-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 19
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    .line 20
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 21
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->return:Landroid/view/View;

    .line 22
    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 23
    iget-object v1, v1, Lcom/manhua/ui/widget/ComicReadMenuView;->class:Lcom/manhua/data/bean/ComicBean;

    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v0, v2, v1}, Lcom/apk/w0;->interface(Landroid/app/Activity;Landroid/view/View;Lcom/biquge/ebook/app/bean/Book;Lcom/manhua/data/bean/ComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->catch()V

    goto :goto_1

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 28
    iget-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    .line 29
    invoke-static {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->else(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v1}, Lcom/manhua/ui/widget/ComicReadMenuView;->if(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/apk/mu;->final(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/manhua/data/bean/ComicBean;

    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Lcom/manhua/ui/activity/ComicDetailActivity;->n(Landroid/content/Context;Lcom/manhua/data/bean/ComicBean;)V

    .line 31
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->catch()V

    goto :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 33
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 34
    invoke-virtual {p1}, Lcom/apk/f00;->throw()Lcom/manhua/data/bean/ComicChapterBean;

    move-result-object p1

    if-eqz p1, :cond_5

    const v0, 0x7f100058

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 35
    iget-object v3, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v3}, Lcom/manhua/ui/widget/ComicReadMenuView;->if(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 36
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 37
    invoke-static {v0, v1}, Lcom/apk/ze;->r(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 39
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->do:Landroid/app/Activity;

    .line 40
    sget-object v1, Lcom/apk/hf;->if:Lcom/apk/hf;

    invoke-static {v0, v1, p1}, Lcom/apk/w0;->try(Landroid/content/Context;Lcom/apk/hf;Ljava/lang/String;)V

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/manhua/ui/widget/ComicReadMenuView$try;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->catch()V

    :goto_1
    return-void
.end method
