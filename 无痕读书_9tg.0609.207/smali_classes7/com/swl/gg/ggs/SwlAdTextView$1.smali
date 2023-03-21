.class public Lcom/swl/gg/ggs/SwlAdTextView$1;
.super Lcom/apk/m40;
.source "SwlAdTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swl/gg/ggs/SwlAdTextView;->loadAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/m40<",
        "Lcom/swl/gg/bean/SwlAdView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/swl/gg/ggs/SwlAdTextView;

.field public final synthetic val$adId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/swl/gg/ggs/SwlAdTextView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->this$0:Lcom/swl/gg/ggs/SwlAdTextView;

    iput-object p2, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apk/m40;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Lcom/swl/gg/bean/SwlAdView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->val$adId:Ljava/lang/String;

    invoke-static {v0}, Lcom/swl/gg/ggs/SwlAdHelper;->getSwlAdView(Ljava/lang/String;)Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/swl/gg/ggs/SwlAdTextView$1;->doInBackground()Lcom/swl/gg/bean/SwlAdView;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/apk/m40;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->this$0:Lcom/swl/gg/ggs/SwlAdTextView;

    invoke-static {v0, p1}, Lcom/swl/gg/ggs/SwlAdTextView;->access$000(Lcom/swl/gg/ggs/SwlAdTextView;Lcom/swl/gg/bean/SwlAdView;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->this$0:Lcom/swl/gg/ggs/SwlAdTextView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdTextView;->access$100(Lcom/swl/gg/ggs/SwlAdTextView;)Lcom/apk/q40;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/swl/gg/ggs/SwlAdTextView$1;->this$0:Lcom/swl/gg/ggs/SwlAdTextView;

    invoke-static {p1}, Lcom/swl/gg/ggs/SwlAdTextView;->access$100(Lcom/swl/gg/ggs/SwlAdTextView;)Lcom/apk/q40;

    move-result-object p1

    const/16 v0, 0xbbd

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff1f"

    invoke-interface {p1, v0, v1}, Lcom/apk/q40;->if(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/swl/gg/bean/SwlAdView;

    invoke-virtual {p0, p1}, Lcom/swl/gg/ggs/SwlAdTextView$1;->onPostExecute(Lcom/swl/gg/bean/SwlAdView;)V

    return-void
.end method
