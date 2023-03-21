.class public Lcom/biquge/ebook/app/widget/StoreRankLayout_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "StoreRankLayout_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/widget/StoreRankLayout_ViewBinding;-><init>(Lcom/biquge/ebook/app/widget/StoreRankLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/StoreRankLayout;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/StoreRankLayout_ViewBinding;Lcom/biquge/ebook/app/widget/StoreRankLayout;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout_ViewBinding$do;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/StoreRankLayout_ViewBinding$do;->do:Lcom/biquge/ebook/app/widget/StoreRankLayout;

    .line 2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1001e1

    .line 3
    invoke-static {v1}, Lcom/apk/ze;->q(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->else:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/biquge/ebook/app/widget/StoreRankLayout;->goto:Z

    const-string v3, "2"

    .line 4
    invoke-static {v0, v1, v3, v2, p1}, Lcom/biquge/ebook/app/ui/activity/FragmentManagerActivity;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
