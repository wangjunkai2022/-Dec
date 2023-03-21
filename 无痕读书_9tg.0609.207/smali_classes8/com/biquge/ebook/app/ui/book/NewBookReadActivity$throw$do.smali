.class public Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;
.super Lcom/apk/c1;
.source "NewBookReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->for(Lcom/biquge/ebook/app/bean/ChapterBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/bean/ChapterBean;

.field public final synthetic if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;Lcom/biquge/ebook/app/bean/ChapterBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iput-object p2, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->do:Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->C(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->do:Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apk/n2;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 4
    iget-object v1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->do:Lcom/biquge/ebook/app/bean/ChapterBean;

    invoke-virtual {v1}, Lcom/biquge/ebook/app/bean/ChapterBean;->getOid()Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/apk/h2;->case:Ljava/lang/String;

    .line 6
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->throw:Z

    .line 4
    iget-object v1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    .line 5
    iput-boolean v0, v1, Lcom/apk/h2;->return:Z

    .line 6
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->mMenuView:Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;

    invoke-virtual {p1, v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadMenuView;->setImportFile(Z)V

    .line 7
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    .line 8
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->catch:Lcom/apk/h2;

    const/4 v0, 0x0

    .line 9
    iput v0, p1, Lcom/apk/h2;->goto:I

    .line 10
    invoke-virtual {p1}, Lcom/apk/h2;->w()V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw$do;->if:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;

    iget-object v0, v0, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity$throw;->do:Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;

    invoke-static {v0}, Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;->B(Lcom/biquge/ebook/app/ui/book/NewBookReadActivity;)V

    return-void
.end method
