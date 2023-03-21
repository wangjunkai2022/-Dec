.class public Lcom/apk/s3;
.super Lcom/apk/c1;
.source "ExpandPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/expand/listen/bean/ListenDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/apk/q3;

.field public do:Z

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:I


# direct methods
.method public constructor <init>(Lcom/apk/q3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/s3;->case:Lcom/apk/q3;

    iput-object p2, p0, Lcom/apk/s3;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/s3;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/s3;->new:Ljava/lang/String;

    iput p5, p0, Lcom/apk/s3;->try:I

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/apk/s3;->if:Ljava/lang/String;

    iget-object v3, p0, Lcom/apk/s3;->for:Ljava/lang/String;

    iget-object v4, p0, Lcom/apk/s3;->new:Ljava/lang/String;

    iget v5, p0, Lcom/apk/s3;->try:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/eg;->native()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/top/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-static {v6, v2, v4, v2, v5}, Lcom/apk/goto;->continue(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ".html"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget v3, p0, Lcom/apk/s3;->try:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const v3, 0x5265c00

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-long v3, v3

    .line 5
    sget-object v5, Lcom/apk/xw;->case:Lcom/apk/xw;

    invoke-static {v2, v3, v4, v5}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    const-string v4, "data"

    .line 6
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "HasNext"

    .line 7
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/apk/s3;->do:Z

    const-string v4, "BookList"

    .line 8
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    new-instance v4, Lcom/apk/wt;

    invoke-direct {v4}, Lcom/apk/wt;-><init>()V

    .line 10
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    if-nez v2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/biquge/ebook/app/helper/req/convert/Convert;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v2

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 14
    :try_start_2
    invoke-static {v3}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    .line 15
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0xfa

    cmp-long v2, v4, v0

    if-gez v2, :cond_4

    sub-long/2addr v0, v4

    .line 16
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v3
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/apk/s3;->case:Lcom/apk/q3;

    .line 4
    iget-object v0, v0, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/apk/s3;->do:Z

    iget v2, p0, Lcom/apk/s3;->try:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/apk/t5;->do(Ljava/util/List;ZI)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/apk/s3;->case:Lcom/apk/q3;

    .line 7
    iget-object p1, p1, Lcom/apk/q3;->for:Lcom/apk/t5;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/apk/t5;->try()V

    :cond_1
    :goto_0
    return-void
.end method
