.class public Lcom/manhua/ui/fragment/ComicDownloadFragment$if;
.super Ljava/lang/Object;
.source "ComicDownloadFragment.java"

# interfaces
.implements Lcom/apk/o0$else;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicDownloadFragment;->resumeOrPause(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:I

.field public final synthetic if:Lcom/manhua/data/bean/ComicCollectBean;

.field public final synthetic new:Lcom/manhua/ui/fragment/ComicDownloadFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicDownloadFragment;Ljava/lang/String;Lcom/manhua/data/bean/ComicCollectBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->new:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->if:Lcom/manhua/data/bean/ComicCollectBean;

    iput p4, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->for:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->new:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$100(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->do:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->if:Lcom/manhua/data/bean/ComicCollectBean;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/manhua/data/bean/ComicCollectBean;->setState(I)V

    .line 3
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->new:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    invoke-static {p1}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$200(Lcom/manhua/ui/fragment/ComicDownloadFragment;)Lcom/manhua/adapter/ComicDownloadAdapter;

    move-result-object p1

    iget v0, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->for:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicDownloadFragment$if;->new:Lcom/manhua/ui/fragment/ComicDownloadFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/manhua/ui/fragment/ComicDownloadFragment;->access$302(Lcom/manhua/ui/fragment/ComicDownloadFragment;Z)Z

    return-void
.end method
