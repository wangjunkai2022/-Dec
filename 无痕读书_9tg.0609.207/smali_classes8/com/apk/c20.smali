.class public Lcom/apk/c20;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/manhua/ui/fragment/ComicShelfFragment;

.field public final synthetic if:Lcom/manhua/data/bean/ComicCollectBean;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/c20;->for:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput-object p2, p0, Lcom/apk/c20;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/apk/c20;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/apk/o0;->else()Lcom/apk/o0;

    move-result-object v0

    iget-object v1, p0, Lcom/apk/c20;->for:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-virtual {v1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    iget-object v1, p0, Lcom/apk/c20;->do:Ljava/lang/String;

    iget-object v2, p0, Lcom/apk/c20;->if:Lcom/manhua/data/bean/ComicCollectBean;

    invoke-virtual {v2}, Lcom/manhua/data/bean/ComicCollectBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apk/o0;->try(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
