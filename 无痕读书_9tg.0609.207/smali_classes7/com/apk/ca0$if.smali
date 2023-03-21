.class public Lcom/apk/ca0$if;
.super Lcom/apk/bb0;
.source "TrChapterCountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ca0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/bb0<",
        "Ljava/util/List<",
        "Lcom/tr/comment/sdk/bean/TrChapterCount;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final case:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrChapterCount;",
            ">;>;"
        }
    .end annotation
.end field

.field public final else:Lcom/apk/wb0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/wb0<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/String;

.field public final if:Ljava/lang/String;

.field public final new:Ljava/lang/String;

.field public final try:Lcom/apk/n80;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/apk/n80;Lcom/apk/wb0;Lcom/apk/wb0;Lcom/apk/ca0$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/bb0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/apk/ca0$if;->if:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/apk/ca0$if;->for:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/apk/ca0$if;->new:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/apk/ca0$if;->try:Lcom/apk/n80;

    .line 6
    iput-object p5, p0, Lcom/apk/ca0$if;->case:Lcom/apk/wb0;

    .line 7
    iput-object p6, p0, Lcom/apk/ca0$if;->else:Lcom/apk/wb0;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0}, Lcom/apk/ca0$if;->for()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs for()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/tr/comment/sdk/bean/TrChapterCount;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apk/ca0$if;->if:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ca0$if;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/ca0$if;->new:Ljava/lang/String;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/fa0;->while()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/commentservice/Comment/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/Count.html"

    invoke-static {v3, v0, v2, v1}, Lcom/apk/goto;->final(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/apk/fa0;->public()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    sget-object v3, Lcom/apk/xw;->case:Lcom/apk/xw;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/apk/xw;->if:Lcom/apk/xw;

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/apk/ja0;->for(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Data"

    .line 6
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "List"

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Index"

    .line 11
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "Count"

    .line 12
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 13
    new-instance v5, Lcom/tr/comment/sdk/bean/TrChapterCount;

    invoke-direct {v5, v4, v3}, Lcom/tr/comment/sdk/bean/TrChapterCount;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic if([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/apk/ca0$if;->for()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/bb0;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/ca0$if;->try:Lcom/apk/n80;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/apk/ca0$if;->for:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/ca0$if;->new:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/apk/n80;->do(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/apk/ca0$if;->for:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ca0$if;->new:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/apk/ca0;->if(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/apk/ca0$if;->case:Lcom/apk/wb0;

    invoke-virtual {v1, v0, p1}, Lcom/apk/wb0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/apk/ca0$if;->else:Lcom/apk/wb0;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1, v0}, Lcom/apk/wb0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
