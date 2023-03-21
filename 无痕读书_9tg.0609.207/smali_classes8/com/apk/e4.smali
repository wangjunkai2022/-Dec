.class public Lcom/apk/e4;
.super Lcom/apk/c1;
.source "NovelPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/ChapterBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Lcom/biquge/ebook/app/bean/NovelDirBean;

.field public final synthetic new:Z

.field public final synthetic try:Lcom/apk/v3;


# direct methods
.method public constructor <init>(Lcom/apk/v3;Ljava/lang/String;Lcom/biquge/ebook/app/bean/NovelDirBean;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/e4;->try:Lcom/apk/v3;

    iput-object p2, p0, Lcom/apk/e4;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/e4;->if:Lcom/biquge/ebook/app/bean/NovelDirBean;

    iput-boolean p4, p0, Lcom/apk/e4;->for:Z

    iput-boolean p5, p0, Lcom/apk/e4;->new:Z

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/e4;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/e4;->if:Lcom/biquge/ebook/app/bean/NovelDirBean;

    iget-boolean v2, p0, Lcom/apk/e4;->for:Z

    iget-boolean v3, p0, Lcom/apk/e4;->new:Z

    invoke-static {v0, v1, v2, v3}, Lcom/apk/v3;->goto(Ljava/lang/String;Lcom/biquge/ebook/app/bean/NovelDirBean;ZZ)Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/e4;->try:Lcom/apk/v3;

    .line 4
    iget-object v0, v0, Lcom/apk/v3;->for:Lcom/apk/u5;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/apk/u5;->goto(Ljava/util/List;)V

    :cond_0
    return-void
.end method
