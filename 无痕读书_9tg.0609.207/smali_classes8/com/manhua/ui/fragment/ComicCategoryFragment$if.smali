.class public Lcom/manhua/ui/fragment/ComicCategoryFragment$if;
.super Ljava/lang/Object;
.source "ComicCategoryFragment.java"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$RequestLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicCategoryFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreRequested()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment$if;->do:Lcom/manhua/ui/fragment/ComicCategoryFragment;

    .line 2
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->try:Lcom/apk/z2;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->do:Ljava/lang/String;

    iget-object v2, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->if:Ljava/lang/String;

    iget v3, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    invoke-static {v1, v2, v3}, Lcom/apk/w;->new(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->try:Lcom/apk/z2;

    iget v0, v0, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    invoke-virtual {v2, v1, v0}, Lcom/apk/z2;->public(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
