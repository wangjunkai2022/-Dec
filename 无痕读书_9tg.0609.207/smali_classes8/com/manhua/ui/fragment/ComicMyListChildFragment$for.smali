.class public Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;
.super Ljava/lang/Object;
.source "ComicMyListChildFragment.java"

# interfaces
.implements Lcom/apk/ft;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicMyListChildFragment;->onItemLongClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:I

.field public final synthetic if:Lcom/manhua/ui/fragment/ComicMyListChildFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMyListChildFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->if:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    iput p2, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->do:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->if:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    .line 2
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMyListChildFragment;->if:Lcom/manhua/adapter/ComicListAdapter;

    .line 3
    iget v1, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->do:I

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/manhua/data/bean/ComicElement;

    .line 4
    iget-object v1, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->if:Lcom/manhua/ui/fragment/ComicMyListChildFragment;

    .line 5
    iget-object v1, v1, Lcom/manhua/ui/fragment/ComicMyListChildFragment;->for:Lcom/apk/z2;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0}, Lcom/manhua/data/bean/ComicElement;->getListId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget v4, p0, Lcom/manhua/ui/fragment/ComicMyListChildFragment$for;->do:I

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/apk/z2;->const(ZLjava/lang/String;Lcom/manhua/data/bean/ComicInfoEntity;I)V

    :cond_0
    return-void
.end method
