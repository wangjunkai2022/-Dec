.class public Lcom/apk/q8;
.super Lcom/apk/c1;
.source "UserServiceWebviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/q8;->do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lcom/apk/continue;->if()Lcom/apk/continue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/apk/q5;->for()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/apk/w;->do()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v4, Lcom/apk/xw;->if:Lcom/apk/xw;

    invoke-static {v1, v2, v3, v4}, Lcom/apk/x4;->super(Ljava/lang/String;JLcom/apk/xw;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "data"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lcom/apk/continue;->try(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/apk/q8;->do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    .line 5
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/manhua/ui/widget/PublicLoadingView;->for()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/q8;->do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->do:Ljava/lang/String;

    .line 9
    iget p1, p1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->if:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 10
    invoke-static {}, Lcom/apk/w;->import()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/apk/w;->throws()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    .line 12
    invoke-static {v1, p1, v2, v2, v2}, Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)Lcom/biquge/ebook/app/ui/fragment/WebViewFragment;

    move-result-object p1

    const v1, 0x7f09024e

    .line 13
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/apk/q8;->do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    iget-object p1, p1, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Lcom/manhua/ui/widget/PublicLoadingView;->setError(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/apk/c1;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/apk/q8;->do:Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;

    .line 3
    iget-object v0, v0, Lcom/biquge/ebook/app/ui/activity/UserServiceWebviewActivity;->loadingView:Lcom/manhua/ui/widget/PublicLoadingView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/manhua/ui/widget/PublicLoadingView;->if()V

    :cond_0
    return-void
.end method
