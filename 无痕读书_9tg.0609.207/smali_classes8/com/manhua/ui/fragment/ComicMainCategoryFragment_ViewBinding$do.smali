.class public Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicMainCategoryFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;-><init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding;Lcom/manhua/ui/fragment/ComicMainCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment_ViewBinding$do;->do:Lcom/manhua/ui/fragment/ComicMainCategoryFragment;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09055c

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/apk/nt;

    invoke-virtual {v0}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f100279

    .line 5
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f100276

    .line 6
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-virtual {v0, v1, v8}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f100260

    .line 7
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->i(Ljava/lang/String;I)Lcom/apk/ot;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v5, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->throw:Lcom/apk/nt$do;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/apk/nt;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/apk/nt$do;ZZ)V

    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    invoke-static {v1}, Lcom/apk/eg;->catch(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apk/nt;->if(I)V

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1}, Lcom/apk/nt;->do(I)V

    .line 11
    iput-boolean v8, p1, Lcom/apk/nt;->for:Z

    .line 12
    iget-object v0, v0, Lcom/manhua/ui/fragment/ComicMainCategoryFragment;->time_choose:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/apk/nt;->for(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
