.class public Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;
.super Lcom/apk/u5;
.source "NovelDirChapterPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    invoke-direct {p0}, Lcom/apk/u5;-><init>()V

    return-void
.end method


# virtual methods
.method public goto(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/biquge/ebook/app/bean/ChapterBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/apk/k;->for(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 5
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    .line 6
    iget-object v2, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    .line 7
    iget-boolean v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->return:Z

    .line 8
    invoke-virtual {v1, v2, v0}, Lcom/apk/k;->new(Ljava/lang/String;Z)V

    .line 9
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 10
    invoke-virtual {v0}, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->final()V

    .line 11
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 12
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->class:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100053

    invoke-static {v2}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 14
    iget-object v2, v2, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->static:Lcom/apk/k;

    .line 15
    invoke-virtual {v2}, Lcom/apk/k;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 17
    iget-object v1, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->public:Lcom/apk/h1;

    if-eqz v1, :cond_1

    .line 18
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->native:Ljava/lang/String;

    .line 19
    invoke-interface {v1, p1, v0}, Lcom/apk/h1;->new(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup$do;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 21
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 22
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->super:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
