.class public Lcom/apk/t3;
.super Lcom/apk/c1;
.source "ExpandPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Z

.field public final synthetic for:Ljava/lang/String;

.field public if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/expand/videoplayer/bean/VideoDetail;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic new:I

.field public final synthetic try:Lcom/apk/q3;


# direct methods
.method public constructor <init>(Lcom/apk/q3;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t3;->try:Lcom/apk/q3;

    iput-object p2, p0, Lcom/apk/t3;->for:Ljava/lang/String;

    iput p3, p0, Lcom/apk/t3;->new:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/apk/t3;->do:Z

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/apk/t3;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/apk/t3;->for:Ljava/lang/String;

    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, v2, v3, v1}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "HasNext"

    .line 3
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/apk/t3;->do:Z

    const-string v1, "Lists"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v2, Lcom/apk/zt;

    invoke-direct {v2}, Lcom/apk/zt;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 8
    :catch_0
    iput-object v1, p0, Lcom/apk/t3;->if:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v1}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/t3;->try:Lcom/apk/q3;

    .line 3
    iget-object p1, p1, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/apk/t3;->if:Ljava/util/List;

    iget-boolean v1, p0, Lcom/apk/t3;->do:Z

    iget v2, p0, Lcom/apk/t3;->new:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/apk/t5;->new(Ljava/util/List;ZI)V

    :cond_0
    return-void
.end method
