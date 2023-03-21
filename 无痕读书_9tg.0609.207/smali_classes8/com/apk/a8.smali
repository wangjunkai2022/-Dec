.class public Lcom/apk/a8;
.super Lcom/apk/c1;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a8;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lcom/apk/finally;->else()Lcom/apk/finally;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/apk/finally;->super(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    const-string v4, "pupinsert"

    invoke-static {v1, v4}, Lcom/apk/finally;->do(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    const-string v4, "maxcount"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/apk/finally;->m:I

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    const-string v4, "showinterval"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v0, Lcom/apk/finally;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    iput-wide v4, v0, Lcom/apk/finally;->l:J

    :cond_1
    const-wide/16 v4, 0x0

    const-string v1, "SP_SHOW_MAIN_PUPINSERT_AD_TIME_KEY"

    .line 8
    invoke-static {v1, v4, v5}, Lcom/apk/ze;->a(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/apk/finally;->l:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 10
    iget v1, v0, Lcom/apk/finally;->m:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "SP_SHOW_MAIN_PUPINSERT_TODAY_COUNT_KEY"

    .line 11
    invoke-static {v1, v2}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result v4

    add-int/2addr v4, v3

    .line 12
    iget v0, v0, Lcom/apk/finally;->m:I

    if-gt v4, v0, :cond_4

    .line 13
    sget-object v0, Lcom/apk/tt;->do:Lcom/tencent/mmkv/MMKV;

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    const/4 v2, 0x1

    .line 14
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/apk/a8;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    invoke-static {p1}, Lcom/biquge/ebook/app/ui/activity/MainActivity;->o(Lcom/biquge/ebook/app/ui/activity/MainActivity;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/apk/a8;->do:Lcom/biquge/ebook/app/ui/activity/MainActivity;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lcom/biquge/ebook/app/ui/activity/MainActivity;->static:Z

    :goto_0
    return-void
.end method
