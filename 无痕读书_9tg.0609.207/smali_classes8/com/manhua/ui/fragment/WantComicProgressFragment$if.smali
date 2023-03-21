.class public Lcom/manhua/ui/fragment/WantComicProgressFragment$if;
.super Lcom/apk/r5;
.source "WantComicProgressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/manhua/ui/fragment/WantComicProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/WantComicProgressFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/WantComicProgressFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;->do:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    invoke-direct {p0}, Lcom/apk/r5;-><init>()V

    return-void
.end method


# virtual methods
.method public super(Lcom/biquge/ebook/app/bean/WantBookBean;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;->do:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/manhua/ui/fragment/WantComicProgressFragment;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;->do:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    .line 3
    iget-object v0, v0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->do:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/manhua/ui/fragment/WantComicProgressFragment$if;->do:Lcom/manhua/ui/fragment/WantComicProgressFragment;

    .line 5
    iget-object v0, v0, Lcom/manhua/ui/fragment/WantComicProgressFragment;->do:Lcom/biquge/ebook/app/adapter/WantProgressAdapter;

    .line 6
    invoke-virtual {p1}, Lcom/biquge/ebook/app/bean/WantBookBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
