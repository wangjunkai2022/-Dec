.class public Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment$break;->onData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment$break;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment$break;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;->do:Lcom/manhua/ui/fragment/ComicShelfFragment$break;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/apk/o;->for()Lcom/apk/o;

    move-result-object v0

    new-instance v1, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if$do;

    invoke-direct {v1, p0}, Lcom/manhua/ui/fragment/ComicShelfFragment$break$if$do;-><init>(Lcom/manhua/ui/fragment/ComicShelfFragment$break$if;)V

    .line 2
    iget-object v0, v0, Lcom/apk/o;->do:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
