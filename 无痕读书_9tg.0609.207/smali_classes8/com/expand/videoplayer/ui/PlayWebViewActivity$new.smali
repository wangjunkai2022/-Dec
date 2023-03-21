.class public Lcom/expand/videoplayer/ui/PlayWebViewActivity$new;
.super Ljava/lang/Object;
.source "PlayWebViewActivity.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/videoplayer/ui/PlayWebViewActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/expand/videoplayer/ui/PlayWebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$new;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/expand/videoplayer/ui/PlayWebViewActivity$new;->do:Lcom/expand/videoplayer/ui/PlayWebViewActivity;

    invoke-virtual {v0}, Lcom/apk/f6;->finish()V

    return-void
.end method
