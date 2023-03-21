.class public Lcom/apk/ad;
.super Lcom/apk/c1;
.source "NovelDirChapterPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/BookMark;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/ad;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/ad;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 2
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->import:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "novelId = ?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 3
    invoke-static {v1}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "saveTime desc"

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/BookMark;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/ad;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/apk/ad;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->const:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f100080

    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apk/ad;->do:Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;

    .line 9
    iget-object v1, v1, Lcom/biquge/ebook/app/ui/view/NovelDirChapterPopup;->package:Lcom/biquge/ebook/app/adapter/BookMarkAdapter;

    .line 10
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
