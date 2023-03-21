.class public Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ListenRankFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;-><init>(Lcom/expand/listen/fragment/ListenRankFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/expand/listen/fragment/ListenRankFragment;


# direct methods
.method public constructor <init>(Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding;Lcom/expand/listen/fragment/ListenRankFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding$do;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/expand/listen/fragment/ListenRankFragment_ViewBinding$do;->do:Lcom/expand/listen/fragment/ListenRankFragment;

    .line 2
    new-instance v6, Lcom/apk/nt;

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 4
    :goto_0
    sget-object v3, Lcom/apk/q0;->goto:[Ljava/lang/String;

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 5
    aget-object v3, v3, v0

    .line 6
    new-instance v4, Lcom/apk/ot;

    invoke-direct {v4}, Lcom/apk/ot;-><init>()V

    .line 7
    iput-object v3, v4, Lcom/apk/ot;->if:Ljava/lang/String;

    .line 8
    sget-object v5, Lcom/biquge/ebook/app/app/AppContext;->case:Lcom/biquge/ebook/app/app/AppContext;

    const v7, 0x7f060064

    .line 9
    invoke-static {v7}, Lcom/apk/tr0;->do(I)I

    move-result v7

    .line 10
    invoke-static {v5, v7}, Lcom/apk/lq0;->do(Landroid/content/Context;I)I

    move-result v5

    .line 11
    iput v5, v4, Lcom/apk/ot;->for:I

    .line 12
    iget-object v5, p1, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 13
    iput-boolean v3, v4, Lcom/apk/ot;->new:Z

    .line 14
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object v3, p1, Lcom/expand/listen/fragment/ListenRankFragment;->try:Lcom/apk/nt$do;

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

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, v6, Lcom/apk/nt;->for:Z

    .line 19
    iget-object p1, p1, Lcom/expand/listen/fragment/ListenRankFragment;->time_choose:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Lcom/apk/nt;->for(Landroid/view/View;)V

    return-void
.end method
