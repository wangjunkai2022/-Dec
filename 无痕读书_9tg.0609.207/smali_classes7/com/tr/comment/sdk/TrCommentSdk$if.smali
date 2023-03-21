.class public final Lcom/tr/comment/sdk/TrCommentSdk$if;
.super Lcom/apk/ab0;
.source "TrCommentSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tr/comment/sdk/TrCommentSdk;->resetToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

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

    const-string v2, "SP_SDK_REQUEST_TOKEN_KEY"

    .line 3
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/apk/mb0;->do()V

    .line 5
    invoke-static {}, Lcom/apk/ja0;->goto()V

    const/4 v0, 0x0

    return-object v0
.end method
