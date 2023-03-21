.class public Lcom/apk/o20;
.super Ljava/lang/Object;
.source "ComicReadMenuView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 5
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getName()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 9
    iget-object p2, p2, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 12
    iget-object p3, p3, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    .line 13
    invoke-interface {p3, p1, p2}, Lcom/apk/k00;->public(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 5
    iget-object v0, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->super:Ljava/util/List;

    .line 6
    iget-object p1, p1, Lcom/manhua/ui/widget/ComicReadMenuView;->mChapterSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/manhua/data/bean/ComicChapterBean;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/manhua/data/bean/ComicChapterBean;->getOid()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/apk/o20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    .line 9
    iget-object v0, v0, Lcom/manhua/ui/widget/ComicReadMenuView;->break:Lcom/apk/k00;

    .line 10
    invoke-interface {v0, p1}, Lcom/apk/k00;->try(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
