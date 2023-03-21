.class public Lcom/apk/p20;
.super Lcom/apk/c1;
.source "ComicReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:I

.field public final synthetic for:Lcom/manhua/ui/widget/ComicReadMenuView;

.field public if:I


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 6
    iget-object v1, v1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicChapterBean;

    .line 8
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->isGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 12
    iput-object v0, v1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 13
    iget-object v1, v1, Lcom/manhua/ui/widget/ComicReadMenuView;->catch:Lcom/apk/f00;

    .line 14
    iget-object v1, v1, Lcom/apk/f00;->try:Ljava/lang/String;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/apk/p20;->do:I

    const/4 v0, 0x0

    .line 16
    :goto_1
    iget v2, p0, Lcom/apk/p20;->do:I

    if-ge v0, v2, :cond_3

    .line 17
    iget-object v2, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 18
    iget-object v2, v2, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 21
    iget-object v2, v2, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 22
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    iput v0, p0, Lcom/apk/p20;->if:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 25
    :cond_3
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/apk/p20;->do:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    iget-object p1, p0, Lcom/apk/p20;->for:Lcom/manhua/ui/widget/ComicReadMenuView;

    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/apk/p20;->if:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
