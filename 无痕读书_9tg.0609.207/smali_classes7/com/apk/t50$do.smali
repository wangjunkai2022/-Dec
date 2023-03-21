.class public Lcom/apk/t50$do;
.super Ljava/lang/Object;
.source "TrGdtNativeUnifiedAD.java"

# interfaces
.implements Lcom/qq/e/ads/nativ/NativeADUnifiedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apk/t50;->do(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/apk/t50;


# direct methods
.method public constructor <init>(Lcom/apk/t50;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qq/e/ads/nativ/NativeUnifiedADData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 3
    iput-object p1, v0, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 4
    iget-object p1, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    .line 5
    iget-object v0, p1, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/apk/x60;->new(Landroid/view/View;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    .line 8
    iget-object v0, p1, Lcom/apk/t50;->do:Lcom/qq/e/ads/nativ/NativeUnifiedADData;

    .line 9
    invoke-static {p1, v0}, Lcom/apk/t50;->for(Lcom/apk/t50;Lcom/qq/e/ads/nativ/NativeUnifiedADData;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    .line 11
    iget-object p1, p1, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz p1, :cond_2

    const v0, 0x14440

    const-string v1, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u662f\u8fd4\u56de\u7684list\u4e3a\u7a7a"

    .line 12
    invoke-interface {p1, v0, v1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNoAD(Lcom/qq/e/comm/util/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/t50$do;->do:Lcom/apk/t50;

    .line 2
    iget-object v0, v0, Lcom/apk/t50;->if:Lcom/apk/x60;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/qq/e/comm/util/AdError;->getErrorMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/apk/b70;->if(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
