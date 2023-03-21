.class public Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ComicStoreRankLayout_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;-><init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding;Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout_ViewBinding$do;->do:Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/biquge/ebook/app/widget/ComicStoreRankLayout;->else:Ljava/lang/String;

    const-string v1, "\u699c"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/manhua/ui/activity/ComicRankActivity;->j(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
