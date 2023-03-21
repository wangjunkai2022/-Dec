.class public Lcom/swl/gg/ggs/SwlAdPosters$1;
.super Lcom/apk/c1;
.source "SwlAdPosters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdPosters;->load(Landroid/app/Activity;Ljava/lang/String;Lcom/apk/n40;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Lcom/swl/gg/bean/SwlAdView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdPosters;

.field public final synthetic val$adId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdPosters;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/swl/gg/bean/SwlAdView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->val$adId:Ljava/lang/String;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdView(Ljava/lang/String;)Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/swl/gg/ggs/SwlAdPosters$1;->doInBackground()Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 5

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/swl/gg/bean/SwlAdView;->getImgurl()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/apk/k40;->do:Lcom/apk/r40;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/swl/gg/ggs/SwlAdPosters$1;->this$0:Lcom/swl/gg/ggs/SwlAdPosters;

    invoke-static {v2}, Lcom/swl/gg/ggs/SwlAdPosters;->access$000(Lcom/swl/gg/ggs/SwlAdPosters;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/swl/gg/ggs/SwlAdPosters$1$1;

    invoke-direct {v4, p0, p1}, Lcom/swl/gg/ggs/SwlAdPosters$1$1;-><init>(Lcom/swl/gg/ggs/SwlAdPosters$1;Lcom/swl/gg/bean/SwlAdView;)V

    check-cast v1, Lcom/apk/y;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/apk/y;->do(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/apk/o40;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {p0, p1}, Lcom/swl/gg/ggs/SwlAdPosters$1;->onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
