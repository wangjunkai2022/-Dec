.class public Lcom/apk/c3;
.super Lcom/apk/c1;
.source "ComicPresenter.java"


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
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/biquge/ebook/app/bean/ComicDirBean;

.field public final synthetic new:Z

.field public final synthetic try:Lcom/apk/z2;


# direct methods
.method public constructor <init>(Lcom/apk/z2;Ljava/lang/String;Lcom/biquge/ebook/app/bean/ComicDirBean;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c3;->try:Lcom/apk/z2;

    iput-object p2, p0, Lcom/apk/c3;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/c3;->if:Lcom/biquge/ebook/app/bean/ComicDirBean;

    iput-boolean p4, p0, Lcom/apk/c3;->for:Z

    iput-boolean p5, p0, Lcom/apk/c3;->new:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/c3;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/c3;->if:Lcom/biquge/ebook/app/bean/ComicDirBean;

    iget-boolean v2, p0, Lcom/apk/c3;->for:Z

    iget-boolean v3, p0, Lcom/apk/c3;->new:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apk/z2;->else(Ljava/lang/String;Lcom/biquge/ebook/app/bean/ComicDirBean;ZZ)Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/c3;->try:Lcom/apk/z2;

    .line 4
    iget-object v0, v0, Lcom/apk/z2;->for:Lcom/apk/r5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/r5;->else(Ljava/util/List;)V

    :cond_0
    return-void
.end method
