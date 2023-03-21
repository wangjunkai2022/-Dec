.class public Lcom/apk/n20;
.super Lcom/apk/c1;
.source "ComicReadMenuView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/manhua/data/bean/ComicChapterBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/widget/ComicReadMenuView;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/widget/ComicReadMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/n20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/n20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-static {v0}, Lcom/manhua/ui/widget/ComicReadMenuView;->else(Lcom/manhua/ui/widget/ComicReadMenuView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apk/z2;->throw(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/n20;->do:Lcom/manhua/ui/widget/ComicReadMenuView;

    invoke-virtual {v0, p1}, Lcom/manhua/ui/widget/ComicReadMenuView;->final(Ljava/util/List;)V

    :cond_0
    return-void
.end method
