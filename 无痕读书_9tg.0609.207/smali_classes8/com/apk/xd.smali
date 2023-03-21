.class public Lcom/apk/xd;
.super Lcom/apk/c1;
.source "WebHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/TxtCollect;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/xd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    const-string v0, "id desc"

    .line 1
    invoke-static {v0}, Lorg/litepal/LitePal;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->limit(I)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "type = ?"

    const-string v2, "SP_WEBVIEW_WEBSITE_HISTORY_KEY"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/TxtCollect;

    .line 3
    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

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
    iget-object v0, p0, Lcom/apk/xd;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity;->do:Lcom/biquge/ebook/app/ui/webread/ui/WebHistoryActivity$if;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_0
    return-void
.end method
