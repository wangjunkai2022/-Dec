.class public Lcom/apk/u10;
.super Ljava/lang/Object;
.source "ComicNewStoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicNewStoreFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apk/u10;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apk/u10;->do:Lcom/manhua/ui/fragment/ComicNewStoreFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicNewStoreFragment;->f(Lcom/manhua/ui/fragment/ComicNewStoreFragment;Z)V

    return-void
.end method
