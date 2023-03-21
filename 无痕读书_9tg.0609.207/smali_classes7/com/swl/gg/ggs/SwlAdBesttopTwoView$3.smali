.class public Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;
.super Lcom/apk/c1;
.source "SwlAdBesttopTwoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->loadAd(Ljava/lang/String;)V
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
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

.field public final synthetic val$adId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/swl/gg/bean/SwlAdView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->val$adId:Ljava/lang/String;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdView(Ljava/lang/String;)Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->doInBackground()Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->access$100(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;Lcom/swl/gg/bean/SwlAdView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)Lcom/apk/n40;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopTwoView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopTwoView;)Lcom/apk/n40;

    move-result-object p1

    check-cast p1, Lcom/apk/class$do;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {p0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopTwoView$3;->onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
