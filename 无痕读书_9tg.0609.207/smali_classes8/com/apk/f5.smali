.class public Lcom/apk/f5;
.super Lcom/apk/c1;
.source "UserPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public do:Ljava/lang/String;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Lcom/apk/g5;


# direct methods
.method public constructor <init>(Lcom/apk/g5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/f5;->try:Lcom/apk/g5;

    iput-object p2, p0, Lcom/apk/f5;->if:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/f5;->for:Ljava/lang/String;

    iput-object p4, p0, Lcom/apk/f5;->new:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 12

    const-string v0, "result"

    const-string v1, "data"

    const-string v2, "username"

    const-string v3, "action"

    .line 1
    iget-object v4, p0, Lcom/apk/f5;->if:Ljava/lang/String;

    const/4 v5, -0x1

    .line 2
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "checkusername"

    .line 3
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->const()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/BookAction.aspx"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4, v6}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 9
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v4, -0x1

    :goto_0
    const v6, 0x7f1002b5

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/apk/f5;->if:Ljava/lang/String;

    iget-object v8, p0, Lcom/apk/f5;->for:Ljava/lang/String;

    iget-object v9, p0, Lcom/apk/f5;->new:Ljava/lang/String;

    .line 11
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "newuser"

    .line 12
    invoke-virtual {v10, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "password"

    .line 14
    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "repassword"

    .line 15
    invoke-virtual {v10, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "email"

    .line 16
    invoke-virtual {v10, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "extinfo"

    .line 17
    invoke-static {}, Lcom/apk/v0;->if()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/p0;->const()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Register.aspx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v2, v10}, Lcom/apk/x4;->extends(Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v5, :cond_2

    const v0, 0x7f1002b9

    .line 23
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    goto :goto_3

    .line 24
    :cond_2
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    goto :goto_2

    :cond_3
    if-ne v4, v7, :cond_4

    const v0, 0x7f1002ba

    .line 25
    invoke-static {v0}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    goto :goto_2

    .line 26
    :cond_4
    invoke-static {v6}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    :goto_2
    const/4 v7, 0x0

    .line 27
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/apk/f5;->try:Lcom/apk/g5;

    .line 4
    invoke-virtual {v0}, Lcom/apk/p1;->do()V

    .line 5
    iget-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/apk/f5;->do:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/hjq/toast/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/apk/f5;->try:Lcom/apk/g5;

    .line 10
    iget-object p1, p1, Lcom/apk/g5;->for:Lcom/apk/x5;

    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/apk/f5;->if:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/f5;->for:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/apk/x5;->else(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/f5;->try:Lcom/apk/g5;

    .line 3
    invoke-virtual {v0}, Lcom/apk/p1;->if()V

    return-void
.end method
