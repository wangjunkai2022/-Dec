.class public Lcom/manhua/ui/fragment/ComicShelfFragment$this;
.super Ljava/lang/Object;
.source "ComicShelfFragment.java"

# interfaces
.implements Lcom/apk/gt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicShelfFragment;->r(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicShelfFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$this;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/lxj/xpopup/core/BasePopupView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicShelfFragment$this;->do:Lcom/manhua/ui/fragment/ComicShelfFragment;

    .line 2
    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicShelfFragment;->throw:Lcom/apk/yg;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/apk/yg;->try:Z

    :cond_0
    return-void
.end method
