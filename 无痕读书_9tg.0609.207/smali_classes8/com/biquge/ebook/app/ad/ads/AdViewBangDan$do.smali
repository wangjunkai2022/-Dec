.class public Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;
.super Ljava/lang/Object;
.source "AdViewBangDan.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->new(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan$do;->do:Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;

    invoke-virtual {v0}, Lcom/biquge/ebook/app/ad/ads/AdViewBangDan;->do()V

    return-void
.end method
