.class public Lcom/apk/z3;
.super Lcom/apk/c1;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/Footprint;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/z3;->do:Lcom/apk/v3;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    const-string v0, "saveTime desc"

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/Footprint;

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biquge/ebook/app/bean/Footprint;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Lcom/biquge/ebook/app/bean/Footprint;->setItemType(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/z3;->do:Lcom/apk/v3;

    .line 4
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/u5;->new(Ljava/util/List;)V

    :cond_0
    return-void
.end method
