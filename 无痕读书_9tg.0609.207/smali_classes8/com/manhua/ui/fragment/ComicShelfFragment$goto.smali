.class public Lcom/manhua/ui/fragment/ComicShelfFragment$goto;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;->do:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;->if:Lcom/manhua/ui/fragment/ComicShelfFragment;

    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$goto;->do:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicShelfFragment;->p(Lcom/manhua/ui/fragment/ComicShelfFragment;Ljava/util/List;)V

    return-void
.end method
