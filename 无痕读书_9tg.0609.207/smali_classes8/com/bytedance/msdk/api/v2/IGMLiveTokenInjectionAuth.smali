.class public interface abstract Lcom/bytedance/msdk/api/v2/IGMLiveTokenInjectionAuth;
.super Ljava/lang/Object;
.source "IGMLiveTokenInjectionAuth.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getTokenInfo()Lcom/bytedance/msdk/api/v2/GMLiveToken;
.end method

.method public abstract isLogin()Z
.end method

.method public abstract onTokenInvalid(Lcom/bytedance/msdk/api/v2/GMLiveToken;Lcom/bytedance/msdk/api/v2/GMLiveAuthCallback;Landroid/app/Activity;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/v2/GMLiveToken;",
            "Lcom/bytedance/msdk/api/v2/GMLiveAuthCallback;",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
