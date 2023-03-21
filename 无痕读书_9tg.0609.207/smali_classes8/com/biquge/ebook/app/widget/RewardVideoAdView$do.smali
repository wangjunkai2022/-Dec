.class public Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;
.super Lcom/apk/bg;
.source "RewardVideoAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biquge/ebook/app/widget/RewardVideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/widget/RewardVideoAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    invoke-direct {p0}, Lcom/apk/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090427

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 3
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;->do()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09042a

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 7
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;->if()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090428

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 11
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    const-string v0, "SP_VIDEO_CLOSE_SLOP_KEY"

    .line 12
    invoke-static {v0, p1}, Lcom/apk/ze;->instanceof(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    .line 13
    sget-object v0, Lcom/apk/dg;->do:Ljava/util/Random;

    const/16 v1, 0xa

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-lt v0, p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 16
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    .line 17
    invoke-interface {p1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;->do()V

    return-void

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/biquge/ebook/app/widget/RewardVideoAdView$do;->do:Lcom/biquge/ebook/app/widget/RewardVideoAdView;

    .line 19
    iget-object p1, p1, Lcom/biquge/ebook/app/widget/RewardVideoAdView;->case:Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;

    .line 20
    invoke-interface {p1}, Lcom/biquge/ebook/app/widget/RewardVideoAdView$if;->onClose()V

    :cond_3
    :goto_0
    return-void
.end method
