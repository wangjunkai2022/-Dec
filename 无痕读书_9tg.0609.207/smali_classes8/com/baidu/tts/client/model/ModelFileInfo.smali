.class public Lcom/baidu/tts/client/model/ModelFileInfo;
.super Ljava/lang/Object;
.source "ModelFileInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateAbsPath(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/baidu/tts/tools/ResourceTools;->getModelFileAbsName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public getAbsPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public parseJson(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/baidu/tts/f/g;->e:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public setAbsPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public setLength(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    .line 6
    sget-object v0, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v0}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setServerid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/baidu/tts/f/g;->i:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    sget-object v1, Lcom/baidu/tts/f/g;->g:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    sget-object v1, Lcom/baidu/tts/f/g;->f:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    sget-object v1, Lcom/baidu/tts/f/g;->o:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    sget-object v1, Lcom/baidu/tts/f/g;->h:Lcom/baidu/tts/f/g;

    invoke-virtual {v1}, Lcom/baidu/tts/f/g;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/tts/client/model/ModelFileInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method
