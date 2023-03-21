.class public Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;
.super Lcom/apk/c1;
.source "PlayWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/PlayWebViewActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 2
    iget-object v0, v0, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->for:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/apk/xw;->case:Lcom/apk/xw;

    const-wide/32 v2, 0x2932e00

    invoke-static {v0, v2, v3, v1}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "data"

    .line 4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 6
    iget-object v1, v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->new:Ljava/lang/String;

    const-string v2, "movie"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    const-class v1, Lcom/expand/videoplayer/bean/VideoDetail;

    invoke-static {v1, v0}, Lcom/apk/ze;->while(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/expand/videoplayer/bean/VideoDetail;

    if-eqz v0, :cond_2

    .line 9
    invoke-static {v0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    const-string v1, "SP_TEMP_COMMEND_VIDEODETAIL_KEY"

    .line 10
    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 12
    iget-object v1, v1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->new:Ljava/lang/String;

    const-string v2, "tingshu"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    const-class v1, Lcom/expand/listen/bean/ListenDetail;

    invoke-static {v1, v0}, Lcom/apk/ze;->while(Ljava/lang/Class;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/expand/listen/bean/ListenDetail;

    const-string v1, "SP_TEMP_COMMEND_LISTENETAIL_KEY"

    if-eqz v0, :cond_1

    .line 15
    invoke-static {v0}, Lcom/jni/crypt/project/CryptDesManager;->decodeClass(Ljava/lang/Object;)V

    .line 16
    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_1
    invoke-static {v1, v0}, Lcom/apk/p0;->super(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$for;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    .line 3
    iget-object v0, p1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->do:Landroid/webkit/WebView;

    .line 4
    iget-object p1, p1, Lcom/expand/videoplayer/ui/PlayWebViewActivity;->if:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
