.class public Lcom/apk/z4;
.super Lcom/apk/c1;
.source "PublicPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/manhua/data/bean/ComicBean;",
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
    iput-object p1, p0, Lcom/apk/z4;->try:Lcom/apk/x4;

    iput-object p2, p0, Lcom/apk/z4;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/z4;->if:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/apk/z4;->for:Z

    iput-object p5, p0, Lcom/apk/z4;->new:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Lcom/manhua/data/bean/ComicBean;

    invoke-direct {v0}, Lcom/manhua/data/bean/ComicBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/apk/z4;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/z4;->if:Ljava/lang/String;

    const-string v3, "bookid"

    .line 3
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "action"

    .line 4
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bookname"

    .line 5
    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "author"

    .line 6
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->try()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/BookAction.aspx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1, v4}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "data"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setId(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/apk/z4;->do:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setName(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/apk/z4;->if:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/manhua/data/bean/ComicBean;->setAuthor(Ljava/lang/String;)V

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/manhua/data/bean/ComicBean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/z4;->try:Lcom/apk/x4;

    iget-boolean v1, p0, Lcom/apk/z4;->for:Z

    iget-object v2, p0, Lcom/apk/z4;->new:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/x4;->private(Lcom/manhua/data/bean/ComicBean;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
