.class public Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment_ViewBinding$do;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SmartScanFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment_ViewBinding;-><init>(Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;


# direct methods
.method public constructor <init>(Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment_ViewBinding;Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment_ViewBinding$do;->do:Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;

    .line 2
    iget-object v0, p1, Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;->mSearchLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/apk/b1;

    invoke-direct {v0}, Lcom/apk/b1;-><init>()V

    invoke-virtual {p1}, Lcom/apk/g6;->getSupportActivity()Lcom/apk/i6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apk/b1;->if(Landroid/content/Context;)Lcom/apk/b1;

    new-instance v1, Lcom/apk/ec;

    invoke-direct {v1, p1}, Lcom/apk/ec;-><init>(Lcom/biquge/ebook/app/ui/fragment/SmartScanFragment;)V

    invoke-virtual {v0, v1}, Lcom/apk/b1;->do(Lcom/apk/c1;)Lcom/apk/b1;

    return-void
.end method
