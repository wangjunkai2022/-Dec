.class public Lcom/manhua/ui/fragment/ComicFootprintFragment$do;
.super Lcom/apk/r5;
.source "ComicFootprintFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicFootprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicFootprintFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicFootprintFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment$do;->do:Lcom/manhua/ui/fragment/ComicFootprintFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public for(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicFootprint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment$do;->do:Lcom/manhua/ui/fragment/ComicFootprintFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->if:Lcom/manhua/data/bean/ComicFootprint;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicFootprintFragment$do;->do:Lcom/manhua/ui/fragment/ComicFootprintFragment;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicFootprintFragment;->do:Lcom/manhua/adapter/ComicFootprintAdapter;

    .line 6
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method
