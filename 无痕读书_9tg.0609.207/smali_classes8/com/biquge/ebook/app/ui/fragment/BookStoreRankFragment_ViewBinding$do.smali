.class public Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "BookStoreRankFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;

    .line 2
    new-instance v6, Lcom/apk/nt;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    sget-object v4, Lcom/apk/q0;->goto:[Ljava/lang/String;

    array-length v5, v4

    const/4 v7, 0x1

    if-ge v3, v5, :cond_2

    .line 5
    aget-object v4, v4, v3

    .line 6
    new-instance v5, Lcom/apk/ot;

    invoke-direct {v5}, Lcom/apk/ot;-><init>()V

    .line 7
    iput-object v4, v5, Lcom/apk/ot;->if:Ljava/lang/String;

    .line 8
    sget-object v4, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v8, 0x7f060064

    .line 9
    invoke-static {v8}, Lcom/apk/tr0;->do(I)I

    move-result v8

    .line 10
    invoke-static {v4, v8}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v4

    .line 11
    iput v4, v5, Lcom/apk/ot;->for:I

    .line 12
    iget-boolean v4, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->do:Z

    if-eqz v4, :cond_0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_0
    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 13
    :goto_1
    iput-boolean v7, v5, Lcom/apk/ot;->new:Z

    .line 14
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v3, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->try:Lcom/apk/nt$do;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/apk/nt;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/apk/nt$do;ZZ)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 16
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/apk/nt;->if(I)V

    const v0, 0x800005

    .line 17
    invoke-virtual {v6, v0}, Lcom/apk/nt;->do(I)V

    .line 18
    iput-boolean v7, v6, Lcom/apk/nt;->for:Z

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/ui/fragment/BookStoreRankFragment;->time_choose:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Lcom/apk/nt;->for(Landroid/view/View;)V

    return-void
.end method
