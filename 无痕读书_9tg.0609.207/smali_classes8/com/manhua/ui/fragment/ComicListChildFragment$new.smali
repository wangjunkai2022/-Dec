.class public Lcom/manhua/ui/fragment/ComicListChildFragment$new;
.super Lcom/apk/r5;
.source "ComicListChildFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/ComicListChildFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicListChildFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicListChildFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$new;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public break(Ljava/util/List;ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicElement;",
            ">;ZI)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$new;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/manhua/ui/fragment/ComicListChildFragment;->f(Lcom/manhua/ui/fragment/ComicListChildFragment;Z)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$new;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    invoke-static {v2, v0, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicListChildFragment;->h(Lcom/manhua/ui/fragment/ComicListChildFragment;ZLjava/util/List;ZI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$new;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    invoke-static {v2, v1, p1, p2, p3}, Lcom/manhua/ui/fragment/ComicListChildFragment;->h(Lcom/manhua/ui/fragment/ComicListChildFragment;ZLjava/util/List;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicListChildFragment$new;->do:Lcom/manhua/ui/fragment/ComicListChildFragment;

    .line 6
    iput-boolean v0, p1, Lcom/manhua/ui/fragment/ComicListChildFragment;->for:Z

    .line 7
    iput-boolean v1, p1, Lcom/manhua/ui/fragment/ComicListChildFragment;->this:Z

    return-void
.end method
