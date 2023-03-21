.class public Lcom/apk/y4;
.super Lcom/apk/c1;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/biquge/ebook/app/bean/Book;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Z

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/apk/x4;


# direct methods
.method public constructor <init>(Lcom/apk/x4;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/y4;->try:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/y4;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/y4;->if:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/apk/y4;->for:Z

    iput-object p5, p0, Lcom/apk/y4;->new:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/biquge/ebook/app/bean/Book;

    invoke-direct {v0}, Lcom/biquge/ebook/app/bean/Book;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/y4;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/y4;->if:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/apk/v3;->while(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/apk/y4;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setName(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/apk/y4;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biquge/ebook/app/bean/Book;->setAuthor(Ljava/lang/String;)V

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/biquge/ebook/app/bean/Book;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/y4;->try:Lcom/apk/x4;

    iget-boolean v1, p0, Lcom/apk/y4;->for:Z

    iget-object v2, p0, Lcom/apk/y4;->new:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/x4;->abstract(Lcom/biquge/ebook/app/bean/Book;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
