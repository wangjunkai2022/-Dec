.class public Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;
.super Lcom/apk/c1;
.source "MyNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/biquge/ebook/app/bean/InitConfNews;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    const-string v0, "delete = ?"

    const-string v1, "false"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/LitePal;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-string v1, "nid desc"

    invoke-virtual {v0, v1}, Lorg/litepal/FluentQuery;->order(Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object v0

    const-class v1, Lcom/biquge/ebook/app/bean/InitConfNews;

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
    iget-object v0, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    .line 4
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->do:Lcom/biquge/ebook/app/adapter/MyNewsAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity$if;->do:Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/MyNewsActivity;->mLoadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    :cond_1
    return-void
.end method
