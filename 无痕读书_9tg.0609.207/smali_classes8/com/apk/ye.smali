.class public final synthetic Lcom/apk/ye;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic if:Lcom/expand/videoplayer/bean/VideoDetail;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apk/ye;->do:Ljava/lang/String;

    iput-object p2, p0, Lcom/apk/ye;->if:Lcom/expand/videoplayer/bean/VideoDetail;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/apk/ye;->do:Ljava/lang/String;

    iget-object v1, p0, Lcom/apk/ye;->if:Lcom/expand/videoplayer/bean/VideoDetail;

    invoke-static {v0, v1}, Lcom/apk/eg;->c(Ljava/lang/String;Lcom/expand/videoplayer/bean/VideoDetail;)V

    return-void
.end method
