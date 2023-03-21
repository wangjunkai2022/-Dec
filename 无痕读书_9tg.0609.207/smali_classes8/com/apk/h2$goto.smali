.class public Lcom/apk/h2$goto;
.super Ljava/lang/Object;
.source "BookReadPresenter.java"

# interfaces
.implements Lcom/manhua/ui/widget/barrage/BarrageDataUtils$OnBarrageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/h2;


# direct methods
.method public constructor <init>(Lcom/apk/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddBarrage(Lcom/manhua/ui/widget/barrage/BarrageBean;ZLjava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1
    iget-object p2, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    invoke-virtual {p2}, Lcom/apk/h2;->protected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    iget-object p2, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    .line 3
    invoke-virtual {p2}, Lcom/apk/h2;->implements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p2, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v0}, Lcom/manhua/ui/widget/PageRecyclerView;->getFirstItem()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 5
    iget-object v1, p2, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-virtual {v1}, Lcom/manhua/ui/widget/PageRecyclerView;->getLastItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    :goto_0
    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p2, v0}, Lcom/apk/h2;->return(I)Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, p2, Lcom/apk/h2;->class:Lcom/manhua/ui/widget/PageRecyclerView;

    invoke-static {v2}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/manhua/ui/widget/barrage/BarrageView;

    if-eqz v2, :cond_0

    .line 8
    iget-object v3, p2, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/manhua/ui/widget/barrage/BarrageView;->addData(Ljava/lang/String;Lcom/manhua/ui/widget/barrage/BarrageBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 11
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {v0}, Lcom/apk/h2;->package(Lcom/biquge/ebook/app/bean/BookChapter;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, p2, Lcom/apk/h2;->break:Lcom/manhua/ui/widget/ComicReaderViewpager;

    invoke-static {v0}, Lcom/apk/n2;->throws(Lcom/biquge/ebook/app/bean/BookChapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/manhua/ui/widget/barrage/BarrageView;

    if-eqz v0, :cond_2

    .line 14
    iget-object p2, p2, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 15
    invoke-static {p2}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/manhua/ui/widget/barrage/BarrageView;->addData(Ljava/lang/String;Lcom/manhua/ui/widget/barrage/BarrageBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_2
    :goto_1
    sget-object p1, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const/4 p2, 0x0

    .line 18
    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 p3, 0x30

    .line 19
    invoke-virtual {p1, p3, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 20
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResultBarrage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->public()Lcom/biquge/ebook/app/bean/BookChapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getInstance()Lcom/manhua/ui/widget/barrage/BarrageDataUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biquge/ebook/app/bean/BookChapter;->getChapterId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/apk/h2;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v0}, Lcom/manhua/ui/widget/barrage/BarrageDataUtils;->getBarrageCount(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    .line 6
    iget-object v1, v1, Lcom/apk/qz;->do:Lcom/apk/rz;

    .line 7
    check-cast v1, Lcom/apk/l2;

    invoke-interface {v1, v0}, Lcom/apk/l2;->native(I)V

    .line 8
    iget-object v0, p0, Lcom/apk/h2$goto;->do:Lcom/apk/h2;

    invoke-virtual {v0}, Lcom/apk/h2;->K()V

    :cond_0
    return-void
.end method
