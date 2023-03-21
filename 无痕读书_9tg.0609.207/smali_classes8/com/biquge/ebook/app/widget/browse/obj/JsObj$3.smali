.class public Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;
.super Lcom/apk/c1;
.source "JsObj.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->getAudioChapterData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

.field public final synthetic val$chapterId:Ljava/lang/String;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    iput-object p2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->val$chapterId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->doInBackground()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Lorg/json/JSONObject;
    .locals 11

    .line 2
    sget-object v0, Lcom/apk/xw;->case:Lcom/apk/xw;

    iget-object v1, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->val$id:Ljava/lang/String;

    iget-object v2, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->val$chapterId:Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->native()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/BookFiles/Html/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".html"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {v1, v2}, Lcom/apk/goto;->case(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-wide/32 v2, 0x2bf20

    .line 7
    invoke-static {v1, v2, v3, v0}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v4, "data"

    .line 8
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "exturl"

    .line 9
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v6, 0x0

    .line 11
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "SourceAddress"

    .line 12
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v7

    .line 14
    iget-object v7, v7, Lcom/apk/continue;->case:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 15
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biquge/ebook/app/bean/StoreConfigBean;

    .line 16
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tingshu"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 17
    invoke-virtual {v8}, Lcom/biquge/ebook/app/bean/StoreConfigBean;->getParse_yu()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    const-string v7, ""

    :goto_0
    const-string v8, "convert://"

    .line 18
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-static {v6, v2, v3, v0}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v2, "urlData"

    .line 20
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_3
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 22
    :cond_4
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onPostExecute(Lorg/json/JSONObject;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->access$000(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/biquge/ebook/app/widget/browse/obj/JsObj$3;->this$0:Lcom/biquge/ebook/app/widget/browse/obj/JsObj;

    invoke-static {v0}, Lcom/biquge/ebook/app/widget/browse/obj/JsObj;->access$000(Lcom/biquge/ebook/app/widget/browse/obj/JsObj;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:initAudio(\'"

    invoke-static {v1}, Lcom/apk/goto;->super(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
