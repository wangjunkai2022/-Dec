.class public Lcom/swl/gg/ggs/SwlAdBesttopView$2;
.super Lcom/apk/c1;
.source "SwlAdBesttopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdBesttopView;->loadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/c1<",
        "Ljava/util/List<",
        "Lcom/swl/gg/bean/SwlAdView;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

.field public final synthetic val$id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdBesttopView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->doInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public doInBackground()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->val$id:Ljava/lang/String;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdViews(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {v1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$100(Lcom/swl/gg/ggs/SwlAdBesttopView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/apk/ze;->final(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/apk/c1;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/swl/gg/bean/SwlAdView;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/apk/c1;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$100(Lcom/swl/gg/ggs/SwlAdBesttopView;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$200(Lcom/swl/gg/ggs/SwlAdBesttopView;ILjava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/apk/n40;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdBesttopView$2;->this$0:Lcom/swl/gg/ggs/SwlAdBesttopView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdBesttopView;->access$000(Lcom/swl/gg/ggs/SwlAdBesttopView;)Lcom/apk/n40;

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
