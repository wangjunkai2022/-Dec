.class public Lcom/apk/a0;
.super Lcom/apk/c1;
.source "BaiDuVoiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/c0;


# direct methods
.method public constructor <init>(Lcom/apk/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/a0;->do:Lcom/apk/c0;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    const-string v0, "tts"

    .line 1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/apk/a0;->do:Lcom/apk/c0;

    .line 3
    iget-object v3, v3, Lcom/apk/c0;->do:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    array-length v4, v3

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 7
    aget-object v5, v3, v4

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apk/a6;->else()Lcom/apk/a6;

    move-result-object v5

    invoke-virtual {v5}, Lcom/apk/a6;->this()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v6, "BaiduPlugin"

    invoke-static {v4, v5, v6}, Lcom/apk/goto;->class(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_2

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 12
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 14
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 16
    iget-object v1, p0, Lcom/apk/a0;->do:Lcom/apk/c0;

    .line 17
    iget-object v1, v1, Lcom/apk/c0;->do:Landroid/content/Context;

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v1, v0, v2}, Lcom/apk/c0;->for(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/apk/a0;->do:Lcom/apk/c0;

    new-instance v1, Lcom/apk/f0;

    .line 21
    iget-object v2, v0, Lcom/apk/c0;->do:Landroid/content/Context;

    .line 22
    iget-object v3, v0, Lcom/apk/c0;->if:Lcom/apk/e1;

    .line 23
    invoke-direct {v1, v2, v3}, Lcom/apk/f0;-><init>(Landroid/content/Context;Lcom/apk/e1;)V

    .line 24
    iput-object v1, v0, Lcom/apk/c0;->for:Lcom/apk/f0;

    .line 25
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/apk/a0;->do:Lcom/apk/c0;

    .line 3
    iget-object p1, p1, Lcom/apk/c0;->if:Lcom/apk/e1;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, v0, v0}, Lcom/apk/e1;->for(ZZ)V

    :cond_0
    return-void
.end method
