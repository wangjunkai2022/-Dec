.class public interface abstract Lcom/bytedance/msdk/adapter/config/TTOnNetworkInitializationFinishedListener;
.super Ljava/lang/Object;
.source "TTOnNetworkInitializationFinishedListener.java"


# virtual methods
.method public abstract onNetworkInitializationFinished(Ljava/lang/Class;Lcom/bytedance/msdk/api/AdError;)V
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/msdk/api/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/bytedance/msdk/adapter/config/ITTAdapterConfiguration;",
            ">;",
            "Lcom/bytedance/msdk/api/AdError;",
            ")V"
        }
    .end annotation
.end method
