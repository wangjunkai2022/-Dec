.class public final Lcom/apk/ib0;
.super Lcom/apk/ab0;
.source "TrDanMuManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apk/ab0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apk/ab0;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/sb0;->do()Lcom/apk/nb0;

    move-result-object v0

    check-cast v0, Lcom/apk/mb0;

    .line 2
    iget-object v1, v0, Lcom/apk/mb0;->if:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    const-string v2, "SP_DANMU_SDK_REQUEST_TOKEN_KEY"

    .line 3
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/apk/mb0;->do()V

    .line 5
    invoke-static {}, Lcom/apk/jb0;->new()Ljava/lang/String;

    const/4 v0, 0x0

    return-object v0
.end method
