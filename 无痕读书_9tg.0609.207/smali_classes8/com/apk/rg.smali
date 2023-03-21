.class public Lcom/apk/rg;
.super Lcom/apk/c1;
.source "LieBianBottomShareDlg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/rg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apk/w0;->new()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/rg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->for:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/apk/rg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    invoke-static {p1}, Lcom/apk/w;->class(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/rg;->do:Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/widget/LieBianBottomShareDlg;->for:Lcom/biquge/ebook/app/widget/AppProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
