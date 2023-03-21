.class public Lcom/manhua/ui/fragment/ComicCategoryFragment$do;
.super Ljava/lang/Object;
.source "ComicCategoryFragment.java"

# interfaces
.implements Lcom/apk/ts;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicCategoryFragment;->initView()V
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
    iput-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment$do;->do:Lcom/manhua/ui/fragment/ComicCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/apk/ss;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment$do;->do:Lcom/manhua/ui/fragment/ComicCategoryFragment;

    .line 2
    iget-object v0, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->try:Lcom/apk/z2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    .line 4
    iget-object v1, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->do:Ljava/lang/String;

    iget-object v2, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->if:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/apk/w;->new(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->try:Lcom/apk/z2;

    iget p1, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->new:I

    invoke-virtual {v1, v0, p1}, Lcom/apk/z2;->public(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public if(Lcom/apk/ss;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/manhua/ui/fragment/ComicCategoryFragment$do;->do:Lcom/manhua/ui/fragment/ComicCategoryFragment;

    iget-object p1, p1, Lcom/manhua/ui/fragment/ComicCategoryFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/apk/eg;->case(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
