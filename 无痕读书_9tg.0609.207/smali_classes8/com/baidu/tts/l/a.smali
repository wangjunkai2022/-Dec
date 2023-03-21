.class public Lcom/baidu/tts/l/a;
.super Ljava/lang/Object;
.source "ModelMediator.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/baidu/tts/database/a;

.field public c:Lcom/baidu/tts/database/d;

.field public d:Lcom/baidu/tts/l/a/i;

.field public e:Lcom/baidu/tts/d/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/baidu/tts/l/a;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/baidu/tts/l/a;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Lcom/baidu/tts/database/a;

    invoke-direct {v0, p0}, Lcom/baidu/tts/database/a;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    .line 2
    new-instance v0, Lcom/baidu/tts/database/d;

    invoke-direct {v0, p0}, Lcom/baidu/tts/database/d;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    .line 3
    new-instance v0, Lcom/baidu/tts/l/a/i;

    invoke-direct {v0, p0}, Lcom/baidu/tts/l/a/i;-><init>(Lcom/baidu/tts/l/a;)V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    .line 4
    new-instance v0, Lcom/baidu/tts/d/d;

    invoke-direct {v0}, Lcom/baidu/tts/d/d;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    .line 5
    invoke-virtual {v0, p0}, Lcom/baidu/tts/d/d;->a(Lcom/baidu/tts/l/a;)V

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0}, Lcom/baidu/tts/d/d;->a()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/database/d;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            ")",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->a(Lcom/baidu/tts/client/model/Conditions;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/tts/client/model/Conditions;",
            "Z)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/l/a/i;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->a(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/d;->a(Lcom/baidu/tts/d/b;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/baidu/tts/client/model/LibEngineParams;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a/i;->a()Lcom/baidu/tts/client/model/LibEngineParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/database/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/tts/database/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 8
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    sget-object v2, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    sget-object v3, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v3}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 14
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    return v1

    .line 15
    :cond_1
    invoke-static {}, Lcom/baidu/tts/tools/MD5;->getInstance()Lcom/baidu/tts/tools/MD5;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/tts/tools/MD5;->getBigFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b()Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelBags;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0}, Lcom/baidu/tts/l/a/i;->b()Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/baidu/tts/client/model/BasicHandler<",
            "Lcom/baidu/tts/client/model/ModelFileBags;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/l/a/i;->b(Ljava/util/Set;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/a;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/baidu/tts/tools/DataTool;->isMapEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/g;->r:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    sget-object v2, Lcom/baidu/tts/f/g;->s:Lcom/baidu/tts/f/g;

    invoke-virtual {v2}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v0}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;)Z

    move-result v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/baidu/tts/l/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public c(Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_6

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "GetServerModelsWork"

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    new-instance v5, Lcom/baidu/tts/client/model/Conditions;

    invoke-direct {v5}, Lcom/baidu/tts/client/model/Conditions;-><init>()V

    .line 8
    invoke-virtual {v5, v2}, Lcom/baidu/tts/client/model/Conditions;->appendId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v5, v4}, Lcom/baidu/tts/l/a;->a(Lcom/baidu/tts/client/model/Conditions;Z)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object v5

    .line 10
    invoke-virtual {v5}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/tts/client/model/ModelBags;

    .line 11
    invoke-virtual {v5}, Lcom/baidu/tts/client/model/ModelBags;->toJson()Lorg/json/JSONArray;

    move-result-object v6

    .line 12
    invoke-virtual {v5}, Lcom/baidu/tts/client/model/ModelBags;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 14
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "^[0-9]+$"

    .line 15
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 16
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "id"

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "needUpdate"

    const/4 v3, 0x2

    .line 18
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 20
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "params error id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not int"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/baidu/tts/l/a;->d:Lcom/baidu/tts/l/a/i;

    invoke-virtual {p1, v1}, Lcom/baidu/tts/l/a/i;->a(Lorg/json/JSONArray;)Lcom/baidu/tts/client/model/BasicHandler;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/baidu/tts/client/model/BasicHandler;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, ""

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-ge v4, p1, :cond_5

    .line 27
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string p1, "servers return result is empty"

    .line 28
    invoke-static {v3, p1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    :cond_5
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    const-string p1, "params error"

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->e:Lcom/baidu/tts/d/d;

    invoke-virtual {v0}, Lcom/baidu/tts/d/d;->b()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/database/d;->a(Ljava/lang/String;)J

    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public e()Lcom/baidu/tts/database/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->b:Lcom/baidu/tts/database/a;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/l/a;->c:Lcom/baidu/tts/database/d;

    invoke-virtual {v0}, Lcom/baidu/tts/database/d;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
