.class public Lcom/apk/o4;
.super Lcom/apk/c1;
.source "NovelShelfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/CollectBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/t4;


# direct methods
.method public constructor <init>(Lcom/apk/t4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/o4;->do:Lcom/apk/t4;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/t4;->for()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/o4;->do:Lcom/apk/t4;

    .line 4
    iget-object v0, v0, Lcom/apk/t4;->for:Lcom/apk/v5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/v5;->if(Ljava/util/List;)V

    :cond_0
    return-void
.end method
